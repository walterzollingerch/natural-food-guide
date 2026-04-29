-- ================================================================
-- Migration v2 — Englisch, Typen-Tabelle, Tags-Tabelle
-- Natural Food Guide
--
-- Einmalig im Supabase SQL Editor ausführen:
-- supabase.com → Dein Projekt → SQL Editor → New query
--
-- Sicher mehrfach ausführbar (IF NOT EXISTS / ON CONFLICT)
-- ================================================================


-- ----------------------------------------------------------------
-- 1. Englische Spalten für Betriebe
-- ----------------------------------------------------------------
ALTER TABLE unternehmen ADD COLUMN IF NOT EXISTS name_en  TEXT;
ALTER TABLE unternehmen ADD COLUMN IF NOT EXISTS short_en TEXT;


-- ----------------------------------------------------------------
-- 2b. Englische Spalten für Events
-- ----------------------------------------------------------------
ALTER TABLE events ADD COLUMN IF NOT EXISTS title_en TEXT;
ALTER TABLE events ADD COLUMN IF NOT EXISTS short_en TEXT;


-- ----------------------------------------------------------------
-- 2c. Englische Spalten für Magazin
-- ----------------------------------------------------------------
ALTER TABLE magazine ADD COLUMN IF NOT EXISTS title_en TEXT;
ALTER TABLE magazine ADD COLUMN IF NOT EXISTS short_en TEXT;


-- ----------------------------------------------------------------
-- 2. Tabelle: Typen (ersetzt hardcodierte TYPE_COLORS / CATEGORIES)
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS types (
  id         TEXT PRIMARY KEY,
  name_de    TEXT NOT NULL,
  name_en    TEXT,
  color      TEXT DEFAULT '#999999',
  sort_order INT  DEFAULT 0
);

ALTER TABLE types ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='types' AND policyname='Typen lesbar'
  ) THEN
    CREATE POLICY "Typen lesbar" ON types FOR SELECT USING (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='types' AND policyname='Admins Typen verwalten'
  ) THEN
    CREATE POLICY "Admins Typen verwalten" ON types FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

INSERT INTO types (id, name_de, name_en, color, sort_order) VALUES
  ('Restaurant',     'Restaurant',     'Restaurant', '#d2dc46', 0),
  ('Verarbeiter:in', 'Verarbeiter:in', 'Producer',   '#059669', 1),
  ('Landwirt:in',    'Landwirt:in',    'Farm',       '#10b981', 2),
  ('Laden',          'Laden',          'Shop',       '#84cc16', 3),
  ('Event',          'Event',          'Event',      '#8b5cf6', 4)
ON CONFLICT (id) DO NOTHING;


-- ----------------------------------------------------------------
-- 3. Tabelle: Tags (ersetzt hardcodierte TAGS_LIST)
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS tags (
  id         TEXT PRIMARY KEY,
  name_de    TEXT NOT NULL,
  name_en    TEXT,
  sort_order INT DEFAULT 0
);

ALTER TABLE tags ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='tags' AND policyname='Tags lesbar'
  ) THEN
    CREATE POLICY "Tags lesbar" ON tags FOR SELECT USING (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='tags' AND policyname='Admins Tags verwalten'
  ) THEN
    CREATE POLICY "Admins Tags verwalten" ON tags FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

INSERT INTO tags (id, name_de, name_en, sort_order) VALUES
  ('Regenerativ',     'Regenerativ',     'Regenerative',   0),
  ('Bio',             'Bio',             'Organic',        1),
  ('Pflanzenbasiert', 'Pflanzenbasiert', 'Plant-based',    2),
  ('Saisonal',        'Saisonal',        'Seasonal',       3),
  ('Regional',        'Regional',        'Regional',       4),
  ('Demeter',         'Demeter',         'Demeter',        5),
  ('Tierwohl',        'Tierwohl',        'Animal Welfare', 6),
  ('Handwerk',        'Handwerk',        'Artisan',        7),
  ('Fine Dining',     'Fine Dining',     'Fine Dining',    8)
ON CONFLICT (id) DO NOTHING;


-- ----------------------------------------------------------------
-- 4. Tabelle: Übersetzungen (DE + EN für UI-Texte)
--    Nur ausführen wenn translations-Tabelle noch nicht existiert.
--    Wenn bereits vorhanden: ON CONFLICT aktualisiert nur DE,
--    vorhandene EN-Übersetzungen bleiben erhalten.
-- ----------------------------------------------------------------
CREATE TABLE IF NOT EXISTS translations (
  key        TEXT PRIMARY KEY,
  page       TEXT NOT NULL,
  de         TEXT NOT NULL,
  en         TEXT,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE translations ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='translations' AND policyname='Alle lesen'
  ) THEN
    CREATE POLICY "Alle lesen" ON translations FOR SELECT USING (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename='translations' AND policyname='Admins schreiben'
  ) THEN
    CREATE POLICY "Admins schreiben" ON translations FOR ALL USING (
      EXISTS (SELECT 1 FROM user_profiles WHERE id = auth.uid() AND role = 'admin')
    );
  END IF;
END $$;

INSERT INTO translations (key, page, de, en) VALUES
  ('nav.guide',              'nav',       'Guide',                      'Guide'),
  ('nav.merkliste',          'nav',       'Merkliste',                  'Saved'),
  ('nav.mehr',               'nav',       'Mehr',                       'More'),
  ('nav.verwalten',          'nav',       'Verwalten',                  'Admin'),
  ('nav.konto',              'nav',       'Konto',                      'Account'),
  ('nav.profil',             'nav',       'Profil',                     'Profile'),
  ('nav.logout',             'nav',       'Abmelden',                   'Sign Out'),
  ('nav.login',              'nav',       'Anmelden',                   'Sign In'),
  ('common.cancel',          'common',    'Abbrechen',                  'Cancel'),
  ('common.save',            'common',    'Speichern',                  'Save'),
  ('common.loading',         'common',    'Lädt…',                      'Loading…'),
  ('common.edit',            'common',    'Bearbeiten',                 'Edit'),
  ('common.delete',          'common',    'Löschen',                    'Delete'),
  ('common.new',             'common',    'Neu',                        'New'),
  ('guide.search',           'guide',     'Suche nach Name, Stadt, Tag…','Search name, city, tag…'),
  ('guide.all_locations',    'guide',     'Alle Standorte',             'All locations'),
  ('guide.list_view',        'guide',     'Liste',                      'List'),
  ('guide.map_view',         'guide',     'Karte',                      'Map'),
  ('guide.mixed',            'guide',     'gemischt',                   'mixed'),
  ('guide.no_results',       'guide',     'Keine Treffer. Filter anpassen.','No results. Adjust filters.'),
  ('guide.no_entries',       'guide',     'Noch keine Einträge. Gehe zu «Verwalten» um Betriebe hinzuzufügen.','No entries yet. Go to Admin to add businesses.'),
  ('guide.map_hint',         'guide',     'Tipp: Pin anklicken für Kurzinfo.','Tip: Click a pin for details.'),
  ('guide.profile_link',     'guide',     'Profil →',                  'Profile →'),
  ('profile.reserve',        'profile',   'Tisch reservieren ↗',       'Reserve a Table ↗'),
  ('profile.website',        'profile',   'Website ↗',                 'Website ↗'),
  ('profile.save',           'profile',   'Merken',                    'Save'),
  ('profile.saved',          'profile',   '✓ Gespeichert',             '✓ Saved'),
  ('profile.like',           'profile',   'Gefällt mir',               'Like'),
  ('profile.contact',        'profile',   'Kontakt',                   'Contact'),
  ('profile.criteria_met',   'profile',   'Erfüllte Kriterien',        'Met Criteria'),
  ('profile.tags',           'profile',   'Tags',                      'Tags'),
  ('profile.relations',      'profile',   'Beziehungen',               'Relations'),
  ('profile.sources',        'profile',   'Bezieht von',               'Sources from'),
  ('profile.delivers',       'profile',   'Liefert an',                'Delivers to'),
  ('profile.comments_h',     'profile',   'Kommentare & Bewertungen',  'Comments & Reviews'),
  ('profile.your_rating',    'profile',   'Deine Bewertung',           'Your Rating'),
  ('profile.comment_ph',     'profile',   'Was hast du erlebt?…',      'What was your experience?…'),
  ('profile.post_comment',   'profile',   'Kommentar posten',          'Post Comment'),
  ('profile.loading_comments','profile',  'Lade Kommentare…',          'Loading comments…'),
  ('profile.no_comments',    'profile',   'Noch keine Kommentare. Sei der Erste!','No comments yet. Be the first!'),
  ('profile.login_to_comment','profile',  'Anmelden um zu kommentieren und zu bewerten.','Sign in to comment and rate.'),
  ('profile.sign_in',        'profile',   'Anmelden / Registrieren',   'Sign In / Register'),
  ('profile.rating_lbl',     'profile',   'NFG-Bewertung',             'NFG Rating'),
  ('profile.criteria_link',  'profile',   'Kriterien →',               'Criteria →'),
  ('merkliste.title',        'merkliste', 'Meine Merkliste',           'My Saved List'),
  ('merkliste.login_hint',   'merkliste', 'Speichere Betriebe in deine persönliche Merkliste. Anmeldung erforderlich.','Save businesses to your personal list. Login required.'),
  ('merkliste.sign_in',      'merkliste', 'Anmelden',                  'Sign In'),
  ('merkliste.register',     'merkliste', 'Konto erstellen',           'Create Account'),
  ('merkliste.empty',        'merkliste', 'Noch nichts gespeichert. Im Guide Einträge mit ♡ markieren.','Nothing saved yet. Mark entries with ♡ in the Guide.'),
  ('mehr.title',             'mehr',      'Mehr',                      'More'),
  ('mehr.about_title',       'mehr',      'Was ist der Natural Food Guide?','What is the Natural Food Guide?'),
  ('mehr.about_text',        'mehr',      'Ein kuratierter Guide für Restaurants, Verarbeiter:innen, Höfe, Läden sowie Pop-Ups & Events in der Schweiz, die mit Boden, Saison und Herkunft konsequent umgehen.','A curated guide to restaurants, producers, farms, shops, pop-ups & events in Switzerland that prioritize soil, seasonality, and origin.'),
  ('mehr.about_link',        'mehr',      'Über uns →',                'About us →'),
  ('mehr.criteria_title',    'mehr',      'Bewertungskriterien',       'Rating Criteria'),
  ('mehr.criteria_intro',    'mehr',      'Restaurants im Natural Food Guide werden nach einem transparenten Kriterienkatalog bewertet. Die Bewertung erfolgt in den Kategorien «Küche» und «Restaurant & Betrieb».','Restaurants in the Natural Food Guide are assessed using a transparent criteria catalogue in the categories "Kitchen" and "Restaurant & Operations".'),
  ('mehr.magazine_title',    'mehr',      'Magazin',                   'Magazine'),
  ('mehr.events_title',      'mehr',      'Eventkalender',             'Event Calendar'),
  ('mehr.no_magazine',       'mehr',      'Noch keine Beiträge.',      'No articles yet.'),
  ('mehr.no_events',         'mehr',      'Keine Events erfasst.',     'No events listed.'),
  ('mehr.read',              'mehr',      '→ Lesen',                   '→ Read'),
  ('mehr.document',          'mehr',      '↓ Dokument',                '↓ Document'),
  ('mehr.pts_3',             'mehr',      'wird grösstenteils eingehalten','largely met'),
  ('mehr.pts_2',             'mehr',      'wird mehrheitlich eingehalten, bis auf wenige Ausnahmen','mostly met, with few exceptions'),
  ('mehr.pts_1',             'mehr',      'wird nur wenig darauf geachtet','rarely considered'),
  ('mehr.transparency',      'mehr',      'Transparenz',               'Transparency'),
  ('mehr.transparency_text', 'mehr',      'Alle Bewertungen basieren auf direkten Gesprächen mit den Restaurants und werden regelmässig aktualisiert. Die Kriterien sind öffentlich einsehbar und nachvollziehbar.','All ratings are based on direct conversations with the restaurants and updated regularly. The criteria are publicly viewable and verifiable.'),
  ('mehr.bonus_title',       'mehr',      'Bonuspunkte',               'Bonus Points'),
  ('auth.login_title',       'auth',      'Anmelden',                  'Sign In'),
  ('auth.register_title',    'auth',      'Registrieren',              'Register'),
  ('auth.email',             'auth',      'E-Mail',                    'Email'),
  ('auth.password',          'auth',      'Passwort',                  'Password'),
  ('auth.name',              'auth',      'Name',                      'Name'),
  ('auth.sign_in',           'auth',      'Anmelden',                  'Sign In'),
  ('auth.create_account',    'auth',      'Konto erstellen',           'Create Account'),
  ('auth.no_account',        'auth',      'Noch kein Konto?',          'No account yet?'),
  ('auth.have_account',      'auth',      'Bereits registriert?',      'Already registered?'),
  ('auth.register_link',     'auth',      'Registrieren',              'Register'),
  ('auth.login_link',        'auth',      'Anmelden',                  'Sign In'),
  ('auth.merken_hint',       'auth',      'Bitte melde dich an, um Betriebe zu merken.','Please sign in to save businesses.'),
  ('auth.wrong_creds',       'auth',      'E-Mail oder Passwort falsch.','Incorrect email or password.'),
  ('auth.confirm_email',     'auth',      'Bestätigungs-E-Mail gesendet. Bitte prüfe dein Postfach.','Confirmation email sent. Please check your inbox.')
ON CONFLICT (key) DO UPDATE
  SET de = EXCLUDED.de,
      en = COALESCE(translations.en, EXCLUDED.en);  -- vorhandene EN-Übersetzungen nicht überschreiben
