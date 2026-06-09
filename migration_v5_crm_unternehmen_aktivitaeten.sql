-- ================================================================
-- Migration v5 — CRM Unternehmen & Aktivitäten
-- Soil to Soul — Natural Food Guide
--
-- Neue Tabellen:
--   crm_unternehmen             — Unternehmensdatenbank
--   crm_aktivitaeten            — Aktivitäten / Kampagnen
--   crm_unternehmen_aktivitaeten — Teilnahme Unternehmen ↔ Aktivität
-- Änderungen:
--   crm_contacts.unternehmen_id — Verknüpfung Kontakt → Unternehmen
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Unternehmen
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_unternehmen (
  id           UUID  PRIMARY KEY DEFAULT gen_random_uuid(),
  name         TEXT  NOT NULL,
  branche      TEXT,
  website      TEXT,
  adresse      TEXT,
  plz          TEXT,
  ort          TEXT,
  land         TEXT  DEFAULT 'CH',
  telefon      TEXT,
  email        TEXT,
  notizen      TEXT,
  created_at   TIMESTAMPTZ DEFAULT NOW(),
  updated_at   TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_crm_unternehmen_name ON crm_unternehmen (name);

ALTER TABLE crm_unternehmen ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_unternehmen' AND policyname='Nur Admins CRM Unternehmen'
  ) THEN
    CREATE POLICY "Nur Admins CRM Unternehmen" ON crm_unternehmen FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

DROP TRIGGER IF EXISTS crm_unternehmen_updated_at ON crm_unternehmen;
CREATE TRIGGER crm_unternehmen_updated_at
  BEFORE UPDATE ON crm_unternehmen
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();


-- ----------------------------------------------------------------
-- 2. Aktivitäten
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_aktivitaeten (
  id           UUID  PRIMARY KEY DEFAULT gen_random_uuid(),
  titel        TEXT  NOT NULL,
  typ          TEXT  NOT NULL DEFAULT 'sonstiges' CHECK (typ IN (
                 'event','kooperation','messe','workshop','kampagne','sonstiges'
               )),
  beschreibung TEXT,
  datum_von    DATE,
  datum_bis    DATE,
  ort          TEXT,
  status       TEXT  DEFAULT 'geplant' CHECK (status IN ('geplant','aktiv','abgeschlossen','abgesagt')),
  notizen      TEXT,
  created_at   TIMESTAMPTZ DEFAULT NOW(),
  updated_at   TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_crm_aktivitaeten_datum ON crm_aktivitaeten (datum_von DESC);
CREATE INDEX IF NOT EXISTS idx_crm_aktivitaeten_typ   ON crm_aktivitaeten (typ);

ALTER TABLE crm_aktivitaeten ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_aktivitaeten' AND policyname='Nur Admins CRM Aktivitaeten'
  ) THEN
    CREATE POLICY "Nur Admins CRM Aktivitaeten" ON crm_aktivitaeten FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

DROP TRIGGER IF EXISTS crm_aktivitaeten_updated_at ON crm_aktivitaeten;
CREATE TRIGGER crm_aktivitaeten_updated_at
  BEFORE UPDATE ON crm_aktivitaeten
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();


-- ----------------------------------------------------------------
-- 3. Junction: Unternehmen ↔ Aktivität
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_unternehmen_aktivitaeten (
  unternehmen_id UUID NOT NULL REFERENCES crm_unternehmen(id) ON DELETE CASCADE,
  aktivitaet_id  UUID NOT NULL REFERENCES crm_aktivitaeten(id) ON DELETE CASCADE,
  rolle          TEXT,   -- z.B. Sponsor, Partner, Teilnehmer, Speaker
  notizen        TEXT,
  created_at     TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (unternehmen_id, aktivitaet_id)
);

ALTER TABLE crm_unternehmen_aktivitaeten ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_unternehmen_aktivitaeten' AND policyname='Nur Admins UA'
  ) THEN
    CREATE POLICY "Nur Admins UA" ON crm_unternehmen_aktivitaeten FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;


-- ----------------------------------------------------------------
-- 4. crm_contacts: Unternehmen-Verknüpfung hinzufügen
-- ----------------------------------------------------------------
ALTER TABLE crm_contacts
  ADD COLUMN IF NOT EXISTS unternehmen_id UUID REFERENCES crm_unternehmen(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_crm_contacts_unternehmen ON crm_contacts (unternehmen_id);


-- ----------------------------------------------------------------
-- 5. View crm_contacts_overview aktualisieren (+ unternehmen_name)
--    DROP erforderlich, weil sich die Spaltenreihenfolge ändert
-- ----------------------------------------------------------------
DROP VIEW IF EXISTS crm_contacts_overview;
CREATE VIEW crm_contacts_overview AS
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
  c.unternehmen_id,
  u.name       AS unternehmen_name,
  c.notizen,
  c.einwilligung,
  c.created_at,
  c.updated_at,
  COUNT(DISTINCT i.id) AS anzahl_interaktionen,
  MAX(i.datum)         AS letzte_interaktion,
  ARRAY_AGG(DISTINCT ct.tag) FILTER (WHERE ct.tag IS NOT NULL) AS tags
FROM crm_contacts c
LEFT JOIN crm_kategorien           k  ON k.id = c.kategorie_id
LEFT JOIN crm_unternehmen          u  ON u.id = c.unternehmen_id
LEFT JOIN crm_interaktionen        i  ON i.contact_id = c.id
LEFT JOIN crm_contact_tags         ct ON ct.contact_id = c.id
GROUP BY c.id, k.name, k.farbe, u.name;


-- ----------------------------------------------------------------
-- 6. Grants
-- ----------------------------------------------------------------
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_unternehmen              TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_aktivitaeten             TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_unternehmen_aktivitaeten TO authenticated;
GRANT SELECT ON public.crm_contacts_overview TO authenticated;

REVOKE ALL ON public.crm_unternehmen              FROM anon;
REVOKE ALL ON public.crm_aktivitaeten             FROM anon;
REVOKE ALL ON public.crm_unternehmen_aktivitaeten FROM anon;
