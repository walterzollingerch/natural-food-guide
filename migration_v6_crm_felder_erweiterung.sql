-- ================================================================
-- Migration v6 — CRM Felder-Erweiterung
-- Fehlende Felder aus Import-Analyse (Import_STS.xlsx)
--
-- Neue Felder auf Basis der Excel-Spalten:
--   crm_contacts:
--     zuletzt_kontakt      ← "Zuletzt Kontakt"
--     anfrage_verschickt   ← "Anfrage verschickt?"
--     pm_geschickt         ← "PM geschickt?"
--     nachgehakt           ← "Nachgehakt" (ja/Absage)
--     themen               ← "Themen"
--     do_not_contact       ← "Nicht mehr Kontaktieren"
--
--   crm_unternehmen:
--     mediengruppe         ← "Kategorie" (CH Media, Tamedia, etc.)
--     medientyp            ← Print/Online, Radio, TV
--
--   crm_unternehmen_aktivitaeten:
--     zusage_status        ← "Zusage" (ja/Absage/eingeladen)
-- ================================================================


-- ----------------------------------------------------------------
-- 1. crm_contacts — Workflow & Kommunikationsfelder
-- ----------------------------------------------------------------
ALTER TABLE crm_contacts
  ADD COLUMN IF NOT EXISTS zuletzt_kontakt    DATE,
  ADD COLUMN IF NOT EXISTS anfrage_verschickt BOOLEAN DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS pm_geschickt       BOOLEAN DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS nachgehakt         TEXT,
  ADD COLUMN IF NOT EXISTS themen             TEXT,
  ADD COLUMN IF NOT EXISTS do_not_contact     BOOLEAN DEFAULT FALSE;

COMMENT ON COLUMN crm_contacts.zuletzt_kontakt    IS 'Datum des letzten Kontakts';
COMMENT ON COLUMN crm_contacts.anfrage_verschickt IS 'Wurde eine Anfrage/Einladung verschickt?';
COMMENT ON COLUMN crm_contacts.pm_geschickt       IS 'Wurde eine Pressemitteilung verschickt?';
COMMENT ON COLUMN crm_contacts.nachgehakt         IS 'Nachfass-Status: ja / Absage / leer';
COMMENT ON COLUMN crm_contacts.themen             IS 'Themeninteressen des Kontakts';
COMMENT ON COLUMN crm_contacts.do_not_contact     IS 'Nicht mehr kontaktieren (DSGVO/DSG)';


-- ----------------------------------------------------------------
-- 2. crm_unternehmen — Medien-Metadaten
-- ----------------------------------------------------------------
ALTER TABLE crm_unternehmen
  ADD COLUMN IF NOT EXISTS mediengruppe TEXT,
  ADD COLUMN IF NOT EXISTS medientyp    TEXT;

COMMENT ON COLUMN crm_unternehmen.mediengruppe IS 'Verlagsgruppe / Mediengruppe (Tamedia, CH Media, swissregio media, …)';
COMMENT ON COLUMN crm_unternehmen.medientyp    IS 'Typ: Print/Online | Radio | TV/Online';


-- ----------------------------------------------------------------
-- 3. crm_unternehmen_aktivitaeten — Zusage-Status
-- ----------------------------------------------------------------
ALTER TABLE crm_unternehmen_aktivitaeten
  ADD COLUMN IF NOT EXISTS zusage_status TEXT;

COMMENT ON COLUMN crm_unternehmen_aktivitaeten.zusage_status IS 'Teilnahmestatus: ja | Absage | eingeladen | offen';


-- ----------------------------------------------------------------
-- 4. View neu aufbauen (neue Felder einschliessen)
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
  k.name         AS kategorie_name,
  k.farbe        AS kategorie_farbe,
  c.unternehmen_id,
  u.name         AS unternehmen_name,
  c.notizen,
  c.einwilligung,
  c.zuletzt_kontakt,
  c.anfrage_verschickt,
  c.pm_geschickt,
  c.nachgehakt,
  c.themen,
  c.do_not_contact,
  c.created_at,
  c.updated_at,
  COUNT(DISTINCT i.id)  AS anzahl_interaktionen,
  MAX(i.datum)          AS letzte_interaktion,
  ARRAY_AGG(DISTINCT ct.tag) FILTER (WHERE ct.tag IS NOT NULL) AS tags
FROM crm_contacts c
LEFT JOIN crm_kategorien    k  ON k.id = c.kategorie_id
LEFT JOIN crm_unternehmen   u  ON u.id = c.unternehmen_id
LEFT JOIN crm_interaktionen i  ON i.contact_id = c.id
LEFT JOIN crm_contact_tags  ct ON ct.contact_id = c.id
GROUP BY c.id, k.name, k.farbe, u.name;

GRANT SELECT ON public.crm_contacts_overview TO authenticated;
REVOKE ALL   ON public.crm_contacts_overview FROM anon;
