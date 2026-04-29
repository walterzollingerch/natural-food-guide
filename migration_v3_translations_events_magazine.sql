-- ================================================================
-- Migration v3 — Englische Übersetzungen für Events und Magazin
-- Natural Food Guide
--
-- Einmalig im Supabase SQL Editor ausführen:
-- supabase.com → Dein Projekt → SQL Editor → New query
--
-- Voraussetzung: migration_v2_en_types_tags.sql wurde bereits
-- ausgeführt (title_en / short_en Spalten existieren).
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Events — Englische Übersetzungen
-- ----------------------------------------------------------------

-- Dinner Event bei Tibits
UPDATE events SET
  title_en = 'Dinner Event at Tibits',
  short_en = 'Great food with great people.'
WHERE id = '33171301-0087-465c-bfd4-cb7c875c1cc2';

-- Bodenfest
UPDATE events SET
  title_en = 'Soil Festival',
  short_en = 'Annual festival celebrating healthy soil, regenerative agriculture, and good food straight from the field.'
WHERE id = '99c63d05-2f84-44ad-81c7-d3498cf17cf5';

-- Soil to Soul Symposium (Titel bereits Englisch)
UPDATE events SET
  title_en = 'Soil to Soul Symposium',
  short_en = 'International symposium on regenerative agriculture, soil health, and transformative food culture.'
WHERE id = 'ef22d401-01bb-48d0-80de-b214b9a89eb3';


-- ----------------------------------------------------------------
-- 2. Magazin — Englische Übersetzungen
-- ----------------------------------------------------------------

-- Portrait: Andreas Caminada
UPDATE magazine SET
  title_en = 'Portrait: Andreas Caminada',
  short_en = 'The three-Michelin-star chef from Fürstenau on regenerative cuisine, responsibility towards soil and producers, and the future of good food.'
WHERE id = '8b0a9687-2027-4d85-add5-285d47bc7c43';

-- Editorial: Was heisst regenerativ wirklich?
UPDATE magazine SET
  title_en = 'Editorial: What Does Regenerative Really Mean?',
  short_en = 'Regenerative is more than a marketing term – it is a systemic shift. What this means for cooking, agriculture, and the way we consume.'
WHERE id = 'fa818add-0e9d-4e58-8b8a-5c605ba87372';

-- Partner: Soil to Soul Symposium 2026
UPDATE magazine SET
  title_en = 'Partner: Soil to Soul Symposium 2026',
  short_en = 'The international symposium connects regenerative agriculture with forward-thinking food culture – bringing chefs, farmers, and thinkers to the same table.'
WHERE id = 'eed98915-26d9-4c4f-af20-aa85cf262792';


-- ----------------------------------------------------------------
-- Kontrolle: Überprüfe ob alle Übersetzungen gesetzt wurden
-- ----------------------------------------------------------------
-- SELECT id, title, title_en, short_en FROM events   ORDER BY date_start;
-- SELECT id, title, title_en, short_en FROM magazine ORDER BY sort_order;
