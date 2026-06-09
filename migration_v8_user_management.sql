-- ================================================================
-- Migration v8 — Userverwaltung: email & is_blocked
-- Soil to Soul — Natural Food Guide
--
-- Ergänzt user_profiles um:
--   email       ← Kopie aus auth.users.email (für Admin-Übersicht)
--   is_blocked  ← Account sperren ohne Löschen
-- Aktualisiert den Trigger, damit email automatisch mitgeschrieben wird
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Neue Felder hinzufügen
-- ----------------------------------------------------------------
ALTER TABLE user_profiles
  ADD COLUMN IF NOT EXISTS email      TEXT,
  ADD COLUMN IF NOT EXISTS is_blocked BOOLEAN DEFAULT FALSE;

COMMENT ON COLUMN user_profiles.email      IS 'Kopie der Auth-E-Mail für Admin-Übersicht';
COMMENT ON COLUMN user_profiles.is_blocked IS 'Account gesperrt (kein Login möglich wenn geprüft im Frontend)';


-- ----------------------------------------------------------------
-- 2. Bestehende Datensätze: email aus auth.users befüllen
-- ----------------------------------------------------------------
UPDATE user_profiles up
SET email = au.email
FROM auth.users au
WHERE up.id = au.id
  AND up.email IS NULL;


-- ----------------------------------------------------------------
-- 3. Trigger aktualisieren: email beim Anlegen mitspeichern
-- ----------------------------------------------------------------
CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
  INSERT INTO user_profiles (id, name, email)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'name', split_part(NEW.email,'@',1)),
    NEW.email
  )
  ON CONFLICT (id) DO UPDATE
    SET email = EXCLUDED.email;
  RETURN NEW;
END;
$$;

-- Trigger neu setzen (CREATE OR REPLACE gilt nur für die Funktion, nicht den Trigger)
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION handle_new_user();


-- ----------------------------------------------------------------
-- 4. RLS-Policy ergänzen: is_blocked darf nur Admin ändern
--    (Bestehende Policies bleiben; keine Duplikate)
-- ----------------------------------------------------------------
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'user_profiles'
      AND policyname = 'Admins sperren'
  ) THEN
    CREATE POLICY "Admins sperren" ON user_profiles
      FOR UPDATE
      USING (
        EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
      );
  END IF;
END $$;
