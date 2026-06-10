-- ================================================================
-- Migration v10 — E-Mail bei Account-Sperrung / Entsperrung
-- via pg_net (HTTP direkt aus der Datenbank → Resend API)
-- ================================================================

-- 1. pg_net Extension aktivieren (einmalig)
CREATE EXTENSION IF NOT EXISTS pg_net;

-- 2. Resend API Key als DB-Konfigurationsvariable speichern
--    !! Ersetze den Key unten mit deinem echten Resend API Key !!
ALTER DATABASE postgres
  SET app.resend_api_key = 're_FtFPNLwm_GqbbYHbdXrRQEvHcpcteKSkc';

ALTER DATABASE postgres
  SET app.resend_from = 'Soil to Soul <noreply@tomtalent.ch>';

ALTER DATABASE postgres
  SET app.app_url = 'https://natural-food-guide.vercel.app';

-- 3. Trigger-Funktion
CREATE OR REPLACE FUNCTION notify_user_block_status()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
DECLARE
  v_api_key  TEXT := current_setting('app.resend_api_key', true);
  v_from     TEXT := current_setting('app.resend_from', true);
  v_app_url  TEXT := current_setting('app.app_url', true);
  v_subject  TEXT;
  v_html     TEXT;
  v_name     TEXT;
BEGIN
  -- Nur auslösen wenn is_blocked sich wirklich geändert hat
  IF OLD.is_blocked IS NOT DISTINCT FROM NEW.is_blocked THEN
    RETURN NEW;
  END IF;

  -- Kein API-Key konfiguriert → nichts tun
  IF v_api_key IS NULL OR v_api_key = '' THEN
    RETURN NEW;
  END IF;

  v_name := COALESCE(NEW.name, '');

  IF NEW.is_blocked THEN
    v_subject := 'Dein Account wurde gesperrt – Soil to Soul Mgt Tool';
    v_html := '<div style="font-family:Arial,sans-serif;max-width:560px;margin:0 auto;padding:32px 24px">'
      || '<div style="background:#d2dc46;border-radius:10px;padding:20px 24px;margin-bottom:28px">'
      || '<span style="font-family:Arial Black,sans-serif;font-weight:900;font-size:18px">SOIL TO SOUL</span>'
      || '<span style="font-size:13px;color:#555;margin-left:8px">Mgt Tool</span></div>'
      || '<h2 style="margin:0 0 16px;font-size:20px">Dein Account wurde gesperrt</h2>'
      || '<p style="color:#444;line-height:1.6">Hallo' || CASE WHEN v_name <> '' THEN ' ' || v_name ELSE '' END || ',</p>'
      || '<p style="color:#444;line-height:1.6">dein Konto beim <strong>Soil to Soul Mgt Tool</strong> wurde von einem Administrator <strong>gesperrt</strong> und ist vorübergehend nicht zugänglich.</p>'
      || '<p style="color:#444;line-height:1.6">Bitte wende dich an den Administrator für weitere Informationen.</p>'
      || '<p style="color:#aaa;font-size:12px;margin-top:32px;border-top:1px solid #eee;padding-top:16px">Automatische Benachrichtigung des Soil to Soul Mgt Tools.</p>'
      || '</div>';
  ELSE
    v_subject := 'Dein Account wurde freigeschaltet – Soil to Soul Mgt Tool';
    v_html := '<div style="font-family:Arial,sans-serif;max-width:560px;margin:0 auto;padding:32px 24px">'
      || '<div style="background:#d2dc46;border-radius:10px;padding:20px 24px;margin-bottom:28px">'
      || '<span style="font-family:Arial Black,sans-serif;font-weight:900;font-size:18px">SOIL TO SOUL</span>'
      || '<span style="font-size:13px;color:#555;margin-left:8px">Mgt Tool</span></div>'
      || '<h2 style="margin:0 0 16px;font-size:20px">Dein Account ist jetzt aktiv ✓</h2>'
      || '<p style="color:#444;line-height:1.6">Hallo' || CASE WHEN v_name <> '' THEN ' ' || v_name ELSE '' END || ',</p>'
      || '<p style="color:#444;line-height:1.6">dein Konto beim <strong>Soil to Soul Mgt Tool</strong> wurde freigeschaltet. Du kannst dich jetzt einloggen.</p>'
      || '<p style="margin:24px 0"><a href="' || v_app_url || '" style="display:inline-block;padding:12px 28px;background:#1a1a1a;color:#d2dc46;text-decoration:none;border-radius:8px;font-weight:700;font-size:15px">Jetzt einloggen →</a></p>'
      || '<p style="color:#aaa;font-size:12px;margin-top:32px;border-top:1px solid #eee;padding-top:16px">Automatische Benachrichtigung des Soil to Soul Mgt Tools.</p>'
      || '</div>';
  END IF;

  -- HTTP POST an Resend API
  PERFORM net.http_post(
    url     := 'https://api.resend.com/emails',
    headers := jsonb_build_object(
      'Authorization', 'Bearer ' || v_api_key,
      'Content-Type',  'application/json'
    ),
    body    := jsonb_build_object(
      'from',    v_from,
      'to',      NEW.email,
      'subject', v_subject,
      'html',    v_html
    )
  );

  RETURN NEW;
END;
$$;

-- 4. Trigger auf user_profiles
DROP TRIGGER IF EXISTS on_block_status_change ON user_profiles;
CREATE TRIGGER on_block_status_change
  AFTER UPDATE OF is_blocked ON user_profiles
  FOR EACH ROW
  WHEN (NEW.email IS NOT NULL)
  EXECUTE FUNCTION notify_user_block_status();
