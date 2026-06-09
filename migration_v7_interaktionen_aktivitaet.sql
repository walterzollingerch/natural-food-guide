-- ================================================================
-- Migration v7 — crm_interaktionen: event_id → aktivitaet_id
-- Verknüpfung mit crm_aktivitaeten statt altem events-Table
-- ================================================================

ALTER TABLE crm_interaktionen
  ADD COLUMN IF NOT EXISTS aktivitaet_id UUID REFERENCES crm_aktivitaeten(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_crm_interaktionen_aktivitaet ON crm_interaktionen (aktivitaet_id);

COMMENT ON COLUMN crm_interaktionen.aktivitaet_id IS 'Verknüpfung zur CRM-Aktivität (ersetzt event_id)';
