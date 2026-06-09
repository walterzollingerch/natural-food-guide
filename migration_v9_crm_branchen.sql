-- ================================================================
-- Migration v9 — CRM Branchen (Lookup-Tabelle)
-- Soil to Soul — Natural Food Guide
-- ================================================================

CREATE TABLE IF NOT EXISTS crm_branchen (
  id         UUID  PRIMARY KEY DEFAULT gen_random_uuid(),
  name       TEXT  NOT NULL,
  farbe      TEXT  DEFAULT '#6b7280',
  sort_order INT   DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_crm_branchen_name ON crm_branchen (name);

ALTER TABLE crm_branchen ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='crm_branchen' AND policyname='Admins CRM Branchen'
  ) THEN
    CREATE POLICY "Admins CRM Branchen" ON crm_branchen FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

GRANT SELECT, INSERT, UPDATE, DELETE ON public.crm_branchen TO authenticated;
REVOKE ALL ON public.crm_branchen FROM anon;

-- Startwerte
INSERT INTO crm_branchen (name, farbe, sort_order) VALUES
  ('Medien',        '#3b82f6', 0),
  ('Wissenschaft',  '#8b5cf6', 1),
  ('Landwirtschaft','#10b981', 2),
  ('Finanzen',      '#f59e0b', 3),
  ('Gastronomie',   '#ef4444', 4),
  ('Handel',        '#6b7280', 5)
ON CONFLICT (name) DO NOTHING;
