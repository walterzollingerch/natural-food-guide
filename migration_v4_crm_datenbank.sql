-- ================================================================
-- Migration v4 — Soil to Soul CRM & Relationship-Datenbank
--
-- Einmalig im Supabase SQL Editor ausführen:
-- supabase.com → Dein Projekt → SQL Editor → New query
--
-- Erstellt folgende neue Tabellen:
--   crm_contacts        — zentrale Kontaktverwaltung
--   crm_kategorien      — Kategorien / Segmentierung
--   crm_interaktionen   — Beziehungshistorie & Aktivitäten
--   crm_contact_tags    — freie Tags pro Kontakt
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Kategorien (Lookup-Tabelle)
--    Medien | Politik | Partner | Speaker | Circle | Privatpersonen
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_kategorien (
  id         TEXT PRIMARY KEY,
  name       TEXT NOT NULL,
  farbe      TEXT DEFAULT '#6b7280',
  sort_order INT  DEFAULT 0
);

ALTER TABLE crm_kategorien ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_kategorien' AND policyname='CRM Kategorien lesbar'
  ) THEN
    CREATE POLICY "CRM Kategorien lesbar" ON crm_kategorien FOR SELECT USING (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_kategorien' AND policyname='Admins CRM Kategorien verwalten'
  ) THEN
    CREATE POLICY "Admins CRM Kategorien verwalten" ON crm_kategorien FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

INSERT INTO crm_kategorien (id, name, farbe, sort_order) VALUES
  ('medien',         'Medien',         '#3b82f6', 0),
  ('politik',        'Politik',        '#ef4444', 1),
  ('partner',        'Partner',        '#f59e0b', 2),
  ('speaker',        'Speaker',        '#8b5cf6', 3),
  ('circle',         'Circle',         '#10b981', 4),
  ('privatpersonen', 'Privatpersonen', '#6b7280', 5)
ON CONFLICT (id) DO NOTHING;


-- ----------------------------------------------------------------
-- 2. Haupttabelle: Kontakte
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_contacts (
  id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),

  -- Basisinformationen
  vorname      TEXT        NOT NULL,
  nachname     TEXT        NOT NULL,
  funktion     TEXT,                        -- Position/Funktion
  firma        TEXT,                        -- Firma / Organisation

  -- Kontaktangaben
  email        TEXT,
  telefon      TEXT,
  linkedin     TEXT,
  social_media TEXT,

  -- Segmentierung
  kategorie_id TEXT        REFERENCES crm_kategorien(id),

  -- Interne Notizen
  notizen      TEXT,

  -- Datenschutz: Einwilligung zur Datenspeicherung
  einwilligung BOOLEAN     DEFAULT FALSE,
  einwilligung_datum DATE,

  -- Metadaten
  created_at   TIMESTAMPTZ DEFAULT NOW(),
  updated_at   TIMESTAMPTZ DEFAULT NOW()
);

-- Index für schnelle Suche nach Name / E-Mail
CREATE INDEX IF NOT EXISTS idx_crm_contacts_nachname ON crm_contacts (nachname);
CREATE INDEX IF NOT EXISTS idx_crm_contacts_email    ON crm_contacts (email);
CREATE INDEX IF NOT EXISTS idx_crm_contacts_kategorie ON crm_contacts (kategorie_id);

ALTER TABLE crm_contacts ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_contacts' AND policyname='Nur Admins sehen CRM Kontakte'
  ) THEN
    CREATE POLICY "Nur Admins sehen CRM Kontakte" ON crm_contacts FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

-- Trigger: updated_at automatisch aktualisieren
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS crm_contacts_updated_at ON crm_contacts;
CREATE TRIGGER crm_contacts_updated_at
  BEFORE UPDATE ON crm_contacts
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();


-- ----------------------------------------------------------------
-- 3. Freie Tags pro Kontakt
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_contact_tags (
  contact_id UUID NOT NULL REFERENCES crm_contacts(id) ON DELETE CASCADE,
  tag        TEXT NOT NULL,
  PRIMARY KEY (contact_id, tag)
);

ALTER TABLE crm_contact_tags ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_contact_tags' AND policyname='Nur Admins CRM Tags'
  ) THEN
    CREATE POLICY "Nur Admins CRM Tags" ON crm_contact_tags FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;


-- ----------------------------------------------------------------
-- 4. Beziehungshistorie / Interaktionen
--    Typen: event_teilnahme | speaker_auftritt | kooperation |
--           medienbericht   | sonstiges
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_interaktionen (
  id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  contact_id   UUID        NOT NULL REFERENCES crm_contacts(id) ON DELETE CASCADE,

  -- Art der Interaktion
  typ          TEXT        NOT NULL CHECK (typ IN (
                             'event_teilnahme',
                             'speaker_auftritt',
                             'kooperation',
                             'medienbericht',
                             'sonstiges'
                           )),

  titel        TEXT,                       -- z.B. Titel des Medienberichts / Name der Kooperation
  beschreibung TEXT,
  datum        DATE,

  -- Verknüpfung mit bestehendem Event (optional)
  event_id     UUID        REFERENCES events(id) ON DELETE SET NULL,

  -- Metadaten
  erstellt_von UUID        REFERENCES auth.users(id) ON DELETE SET NULL,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_crm_interaktionen_contact ON crm_interaktionen (contact_id);
CREATE INDEX IF NOT EXISTS idx_crm_interaktionen_datum   ON crm_interaktionen (datum DESC);
CREATE INDEX IF NOT EXISTS idx_crm_interaktionen_typ     ON crm_interaktionen (typ);
CREATE INDEX IF NOT EXISTS idx_crm_interaktionen_event   ON crm_interaktionen (event_id);

ALTER TABLE crm_interaktionen ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_interaktionen' AND policyname='Nur Admins CRM Interaktionen'
  ) THEN
    CREATE POLICY "Nur Admins CRM Interaktionen" ON crm_interaktionen FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;


-- ----------------------------------------------------------------
-- 5. View: Kontakt-Übersicht mit Interaktionszähler
--    Erleichtert Listenansichten ohne N+1 Queries
-- ----------------------------------------------------------------
CREATE OR REPLACE VIEW crm_contacts_overview AS
SELECT
  c.id,
  c.vorname,
  c.nachname,
  c.funktion,
  c.firma,
  c.email,
  c.telefon,
  c.linkedin,
  c.kategorie_id,
  k.name       AS kategorie_name,
  k.farbe      AS kategorie_farbe,
  c.notizen,
  c.einwilligung,
  c.created_at,
  c.updated_at,
  COUNT(DISTINCT i.id)                                  AS anzahl_interaktionen,
  MAX(i.datum)                                          AS letzte_interaktion,
  ARRAY_AGG(DISTINCT ct.tag) FILTER (WHERE ct.tag IS NOT NULL) AS tags
FROM crm_contacts c
LEFT JOIN crm_kategorien    k  ON k.id = c.kategorie_id
LEFT JOIN crm_interaktionen i  ON i.contact_id = c.id
LEFT JOIN crm_contact_tags  ct ON ct.contact_id = c.id
GROUP BY c.id, k.name, k.farbe;


-- ----------------------------------------------------------------
-- 6. Grants für Supabase Data API
-- ----------------------------------------------------------------
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_kategorien    TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_contacts      TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_contact_tags  TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_interaktionen TO authenticated;
GRANT SELECT ON public.crm_contacts_overview TO authenticated;

-- anon darf nichts sehen (personenbezogene Daten, Datenschutz DSG)
REVOKE ALL ON public.crm_kategorien    FROM anon;
REVOKE ALL ON public.crm_contacts      FROM anon;
REVOKE ALL ON public.crm_contact_tags  FROM anon;
REVOKE ALL ON public.crm_interaktionen FROM anon;
REVOKE ALL ON public.crm_contacts_overview FROM anon;


-- ----------------------------------------------------------------
-- Kontrolle: Tabellen prüfen
-- ----------------------------------------------------------------
-- SELECT table_name FROM information_schema.tables
-- WHERE table_schema = 'public' AND table_name LIKE 'crm_%';
