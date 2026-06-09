-- ================================================================
-- Import STS 2025 — Medien-Kontakte (idempotent)
-- Prüft vor jedem INSERT ob Datensatz bereits vorhanden ist.
-- Kann beliebig oft ausgeführt werden ohne Dubletten.
-- Ausführen NACH migration_v5, v6, v7
-- ================================================================

-- ----------------------------------------------------------------
-- 1. Unternehmen (Duplikat-Check via name)
-- ----------------------------------------------------------------
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'e4f888e1-91e0-4a70-baea-67cd7a335328', 'Marmite Professional', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Marmite Professional');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'fece94d4-8822-471a-904f-f309cf918f3b', 'BauernZeitung, Journalistin', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'BauernZeitung, Journalistin');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'd51bb3d7-4a37-4485-84ff-e606bb7675e2', 'Bauernzeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Bauernzeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '728b5a47-d6e0-4f5c-a678-138945566bb2', 'Countryside', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Countryside');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b95f0590-89e2-4721-b6e7-6076c7731a1a', 'GastroJournal', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'GastroJournal');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '0df6a890-5cc0-4e3d-9fd3-8cd87d7a7900', 'Journalist Culinary & Gastronomy, Coopzeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Journalist Culinary & Gastronomy, Coopzeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '6e313ce6-5d5e-4df1-8ea8-3e50fe1f237a', 'Gastrofacts', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Gastrofacts');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '172d3e31-1cb2-4f56-873c-5d2705fe8fb5', 'NZZ', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'NZZ');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '0410ddd9-bef4-4d95-b970-4ae71481c61b', 'Tages-Anzeiger', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Tages-Anzeiger');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'fc8893a9-4815-4379-8294-fbb130c9b790', 'Schweizer Bauer', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Schweizer Bauer');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '37fa198d-4851-49a7-b7ba-57c5039f45ce', 'Schweizer Familie', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Schweizer Familie');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b8e8cce4-f8bd-41a1-85a4-8bfe8f8da25f', 'WOZ', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'WOZ');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'd2d6eadf-831e-406a-9cff-36a1ef882255', 'Schweizer Illustrierte', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Schweizer Illustrierte');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'a97b7c41-6de2-4e8b-9c8a-e067e8adee02', '20 Minuten', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = '20 Minuten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'bbd5b493-dfa9-4320-9801-a1ef61ac7132', 'Das Magazin', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Das Magazin');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b77eed52-9046-4b45-b7c0-4f3c76ddb617', 'Sonntagszeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Sonntagszeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '0e3a3137-06b1-4e31-b04d-2941b4398a4a', 'Femina', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Femina');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '2ee3dd59-6bd9-47e6-a81c-41e604f97b0c', 'Konsumentenschutz', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Konsumentenschutz');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '2d5efb9a-3c68-4138-bac5-7451b225e4ea', 'Beobachter', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Beobachter');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '203a01b5-cdda-4a33-bd55-d3188ab2e119', 'SRF', NULL, 'TV/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'SRF');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '28ef7b3d-69d5-4a50-bb63-6235d9fdca1d', 'Zürcher Unterländer', 'Tamedia', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Zürcher Unterländer');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '5cf973e9-1053-4779-9f99-a64ae2419691', 'Limmattaler Zeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Limmattaler Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '30dc7745-3ce4-4f70-901a-bbcf943285bc', 'Tagblatt der Stadt Zürich', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Tagblatt der Stadt Zürich');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '5f1059e2-72e7-4672-b68c-a6b60ff7d01b', 'Zürcher Oberlander', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Zürcher Oberlander');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'c3671e60-d057-41a3-b4b6-79856c1c7a5f', 'Der Tössthaler', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Der Tössthaler');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b8585291-6a66-42e4-83d3-21a996f4901a', 'Anzeiger von Uster', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Anzeiger von Uster');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '8be22c73-f3f1-4e28-9546-0fb52e480d86', 'Regio', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Regio');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '5f6e607f-546c-43fe-8dae-07115bd0f3c7', 'Glattaler', 'Zürcher Oberland Medien', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Glattaler');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'cd5cc88a-59dd-4008-8bc2-f91a12d6621d', 'SonntagsZeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'SonntagsZeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'f52dd09a-8459-4795-ae07-e5b329ccd91c', 'Radio Argovia', 'CH Media', 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio Argovia');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '2d0aa85a-6c19-4f9a-aada-615fee5e6dcf', 'Tele m1', NULL, 'TV/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Tele m1');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '3ffef556-f67a-4bba-84dc-56fc119a34d5', 'Grenchnertagblatt', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Grenchnertagblatt');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '802f525f-cac6-40bf-a43a-979beb9d12be', 'Der Landbote', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Der Landbote');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'f07040a5-03d5-46e0-a6ef-bfdfd344a6a2', 'Schaffhauser Nachrichten', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Schaffhauser Nachrichten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '6942703e-f159-410f-8da4-7ab4342e9fd0', 'Radio Top', NULL, 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio Top');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b7bcbc44-68a0-48a9-8f5b-47a972f42ae7', 'Stadtanzeiger Winterthur', 'Zürcher Oberland Medien AG', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Stadtanzeiger Winterthur');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'd1ee6bd6-fcd3-4df2-8176-03ee91e1c752', 'Radio Stadtfilter', NULL, 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio Stadtfilter');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '34dedf2e-d5a8-4360-9179-aa30232d7886', 'WNTI', NULL, 'TV/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'WNTI');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '8ca4d398-4d5c-4609-9c95-0156f62097ec', 'Schaffhauser Magazin', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Schaffhauser Magazin');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'e09bc3a5-62de-40f5-89f9-bb850c61e9aa', 'Radio Munot', NULL, 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio Munot');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '3af30bd5-7f36-4e4a-9936-cc32f0e525b5', 'Ostschweiz Magazin', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Ostschweiz Magazin');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '4dd25039-da6e-4be5-87b6-b1df66c6436d', 'Radio FM1', NULL, 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio FM1');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '206c159d-7af3-4a9e-939f-985b99a319f1', 'Beobachter Natur', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Beobachter Natur');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '0f339818-a0e4-47b4-80f1-cf557698b862', 'Thurgauer Zeitung', 'CH Media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Thurgauer Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '990cbb36-ad1c-48c6-996c-f132aad36058', 'Badener Tagblatt', 'CH Media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Badener Tagblatt');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'c05b022d-f358-420a-90af-e925aa3d163b', 'St. Galler Tagblatt', 'CH Media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'St. Galler Tagblatt');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '46c8d38b-9637-409a-8bd0-14668117fc65', 'Aargauer Woche', 'CH Media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Aargauer Woche');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b5be3f89-6169-4afa-bf83-e4396b167c52', 'Aargauer Zeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Aargauer Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b7f1f7d0-c9f4-401d-bc1c-4b644a487a05', 'Zuger Woche', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Zuger Woche');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'be072d4b-30ff-4206-a5d9-3639e2a030f9', 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue Oltner Zeitung', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue Oltner Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'ae7f3c24-7a50-4b56-ad7b-db83aa80e3b5', 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee Nachrichten', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee Nachrichten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '9b31d7f2-eebd-4e90-9fa4-6f5373a2538e', 'Winterthurer Zeitung', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Winterthurer Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '21e5079c-dd71-4d5f-8835-83dd46f2fa0d', 'Toggenburger / See & Gaster Zeitung', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Toggenburger / See & Gaster Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '8a7f1c10-b5d9-4b1f-8f62-66096ec9d83f', 'Furttaler / Rümlanger', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Furttaler / Rümlanger');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '53a97dfe-9e09-4eb1-bd4e-3369959e78fb', 'Wiler Nachrichten', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Wiler Nachrichten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '3128617b-175d-49cb-96d0-26ba33e0a06d', 'St. Galler / Gossauer / Herisauer Nachrichten / Rheintaler Bote / Bodensee / Oberthurgauer Nachrichten', 'swissregio media', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'St. Galler / Gossauer / Herisauer Nachrichten / Rheintaler Bote / Bodensee / Oberthurgauer Nachrichten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '144c28f5-051d-4511-84e8-f8a700aa05d4', 'Hauptstadt', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Hauptstadt');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'c0dfa893-0ef5-4cd6-adad-8e729e866b34', 'Bund', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Bund');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'bfca4a49-18ad-4790-9fda-a6374193f819', 'Berner Zeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Berner Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '647c6494-d4d4-426d-b309-02cbef499fbe', 'Bärnerbär', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Bärnerbär');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '95c29628-c90f-488a-8da5-6a76efbe2dfc', 'Anzeiger Region Bern', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Anzeiger Region Bern');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '866b5bee-7b96-426d-b61a-92d75d4675f8', 'Basler Zeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Basler Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'a7c9aa7b-0eaa-41cf-897a-ae8e94f16990', 'Luzerner Zeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Luzerner Zeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'bbb920c0-04ef-44a5-b27d-53685cc40271', 'Vorarlberger Nachrichten', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Vorarlberger Nachrichten');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'b79750ad-48fd-4f63-81a4-80744dac3238', 'NEUE Vorarlberger Tageszeitung', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'NEUE Vorarlberger Tageszeitung');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '5d6ca1b1-9b43-4c8c-ab8e-ac60ab54c489', 'Blätle', 'RegionalZeitungen Vorarlberg', 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Blätle');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT '580410ab-9cb8-437a-bbe7-1c221f193805', 'LÄNDLE TV', NULL, 'TV/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'LÄNDLE TV');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'bd3e251b-b37f-4d3b-b7ed-eb9aca38019a', 'Radio Proton', NULL, 'Radio', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'Radio Proton');
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
SELECT 'de8e9732-4189-42e2-ba8c-ffb4b23a75d6', 'ferment – Das Impulsmagazin', NULL, 'Print/Online', 'Medien'
WHERE NOT EXISTS (SELECT 1 FROM crm_unternehmen WHERE name = 'ferment – Das Impulsmagazin');

-- ----------------------------------------------------------------
-- 2. Aktivität (Duplikat-Check via titel)
-- ----------------------------------------------------------------
INSERT INTO crm_aktivitaeten (id, titel, typ, status, datum_von, ort, beschreibung)
SELECT '262775b8-28a3-439e-bb89-db603bcbbd87', 'STS Symposium 2025', 'event', 'abgeschlossen', '2025-10-15', 'Zürich',
  'Soil to Soul Symposium 2025 — Medieneinladungen und Berichterstattung'
WHERE NOT EXISTS (SELECT 1 FROM crm_aktivitaeten WHERE titel = 'STS Symposium 2025');

-- ----------------------------------------------------------------
-- 3. Kontakte (Duplikat-Check via email wenn vorhanden,
--   sonst via vorname + nachname + unternehmen)
-- ----------------------------------------------------------------
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'c0dda7e7-3761-4ab6-a892-2b3bede9c4fb',
  'Sarah', 'Kohler', NULL, NULL,
  u.id, 'medien',
  NULL, NULL, TRUE, FALSE,
  'Absage', NULL, FALSE
FROM crm_unternehmen u
JOIN crm_unternehmen u2 ON u2.name = 'Marmite Professional'
WHERE u.name = 'Marmite Professional'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  JOIN crm_unternehmen u2 ON u2.id = c.unternehmen_id
  WHERE c.vorname = 'Sarah' AND c.nachname = 'Kohler' AND u2.name = 'Marmite Professional'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '2731dd2f-9b75-4b1c-a545-da22e7f90554',
  'Jil', 'Schuller', 'j.schuller@bauernzeitung.ch', NULL,
  u.id, 'medien',
  'Medienpartnerschaft, auch dieses Jahr dabei', NULL, TRUE, TRUE,
  NULL, 'Master Class mit Marcus Pan und die Keynote von Richard Perskin', FALSE
FROM crm_unternehmen u
WHERE u.name = 'BauernZeitung, Journalistin'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'j.schuller@bauernzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '12ff90f2-2bdb-45f2-85c7-11f61e9cda04',
  'Viktor', 'Dubsky', 'v.dubsky@bauernzeitung.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Bauernzeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'v.dubsky@bauernzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '52501b8d-dbf0-44e0-9463-a67712d6189d',
  'Jürg', 'Vollmer', 'info@juergvollmer.ch', NULL,
  u.id, 'medien',
  'Vereinbarung', NULL, TRUE, FALSE,
  NULL, 'Landwirtschaft', FALSE
FROM crm_unternehmen u
WHERE u.name = 'Countryside'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@juergvollmer.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'aa200c96-312a-4640-9226-da09409686a7',
  'Corinne', 'Nusskern', 'corinne.nusskern@gastrojournal.ch', NULL,
  u.id, 'medien',
  NULL, '2025-09-01', TRUE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'GastroJournal'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'corinne.nusskern@gastrojournal.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'b2355682-4624-42a0-a237-c7ae16c1d731',
  'Kristina', 'Köhler', 'Kristina.koehler@coop.ch', NULL,
  u.id, 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Journalist Culinary & Gastronomy, Coopzeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'Kristina.koehler@coop.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '25e5991e-6c1b-4110-ac79-eb59f6c3c504',
  'Martina', 'Trottmann', 'martina.trottmann@coop.ch', NULL,
  u.id, 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Journalist Culinary & Gastronomy, Coopzeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'martina.trottmann@coop.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6a1a75f2-2eb2-463e-ace0-bf0059c473c1',
  'Eva', 'Achatz', 'eva.achatz@kaboom-media.ch', NULL,
  u.id, 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, 'Medienpartnerschaft angefragt', FALSE
FROM crm_unternehmen u
WHERE u.name = 'Gastrofacts'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'eva.achatz@kaboom-media.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '05089d58-5b20-4f53-8b17-f73b53e2f50f',
  'Sonja', 'Siegenthaler', 'sonja.siegenthaler@nzz.ch', '+41 79 681 96 60',
  u.id, 'medien',
  NULL, '2025-09-02', TRUE, TRUE,
  NULL, 'Lifestyle und Kulinarik', FALSE
FROM crm_unternehmen u
WHERE u.name = 'NZZ'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'sonja.siegenthaler@nzz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '9497429e-c705-4ef7-9a67-b37cb85f812e',
  'Tania', 'Villiger', 'tania.villiger@nzz.ch', NULL,
  u.id, 'medien',
  NULL, NULL, TRUE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'NZZ'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'tania.villiger@nzz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '90472c63-d69d-4d36-ad4a-9b0ed01e1bf9',
  'Mathias', 'Möller', 'mathias.moeller@tamedia.ch', NULL,
  u.id, 'medien',
  'Koji & Esther Kern', '2025-10-15', TRUE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Tages-Anzeiger'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'mathias.moeller@tamedia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'b727433f-65ef-4e9a-8063-d0fef54296ed',
  'Mara', 'Affolter', 'mara.affolter@schweizerbauer.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schweizer Bauer'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'mara.affolter@schweizerbauer.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a201bcaf-b9f2-4527-a197-dff4de146e07',
  'Monika', 'Gerlach', 'monika.gerlach@schweizerbauer.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schweizer Bauer'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'monika.gerlach@schweizerbauer.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '1b75b3df-3610-4061-97f6-12b8d7999970',
  'Christina', 'Hubbeling', 'christina.hubbeling@nzz.ch', NULL,
  u.id, 'medien',
  NULL, NULL, TRUE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'NZZ'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'christina.hubbeling@nzz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a77e9382-2da6-4921-be6a-8dbb5ec49d99',
  'Michael', 'Lütscher', 'michael.luetscher@schweizerfamilie.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, TRUE
FROM crm_unternehmen u
WHERE u.name = 'Schweizer Familie'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'michael.luetscher@schweizerfamilie.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '17a04bdb-38a7-422f-a5cd-9bc694f0d7fc',
  'Esther', 'Banz', 'woz@woz.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'WOZ'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'woz@woz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '366ef559-6c98-4660-99f5-6a67f3e374df',
  'Richard', 'Widmer', 'richard.widmer@schweizer-illustrierte.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, TRUE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schweizer Illustrierte'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'richard.widmer@schweizer-illustrierte.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '0aca0c4d-984e-47a4-bad5-1f9dda287034',
  'Valeska', 'Jansen', 'Valeska.Jansen@schweizer-illustrierte.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schweizer Illustrierte'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'Valeska.Jansen@schweizer-illustrierte.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '7bdbf966-6935-457a-b362-90b1a3ed4d1c',
  'Redaktion', '20 Minuten', 'redaktion@20minuten.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = '20 Minuten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@20minuten.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '5aba2ed0-4f0c-4032-af4c-24f8cf8ba088',
  'Redaktion', 'Das Magazin', 'redaktion@dasmagazin.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Das Magazin'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@dasmagazin.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a4d5247c-b48c-4b64-a585-01fe7b2ed6a2',
  'Redaktion', 'Sonntagszeitung', 'redaktion@sonntagszeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Sonntagszeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@sonntagszeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '8a353973-4628-4c44-93ee-e8fd6671002c',
  'Redaktion', 'Tages-Anzeiger', 'redaktion@tages-anzeiger.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Tages-Anzeiger'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@tages-anzeiger.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '2d20fd8c-e330-4e0d-abd5-3d2dc156543a',
  'Redaktion', 'Femina', 'redaction@femina.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Femina'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaction@femina.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6a3215b3-0648-4485-9e91-b51d8ed50c24',
  'Redaktion', 'Konsumentenschutz', 'info@konsumentenschutz.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Konsumentenschutz'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@konsumentenschutz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a6743d96-d2e0-457c-9598-17b6272b1d29',
  'Redaktion', 'Beobachter', 'redaktion@beobachter.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Beobachter'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@beobachter.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'ac5c3098-2bff-4e36-83aa-69e776920f87',
  'Redaktion', 'SRF', 'srf@srf.ch', NULL,
  u.id, 'medien',
  'erhalten, melden sich fall interesse', '2025-09-01', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'SRF'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'srf@srf.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '648b6453-9917-439b-8c8f-442242de5fc1',
  'Redaktion', 'Zürcher Unterländer', 'region@zuonline.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Zürcher Unterländer'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'region@zuonline.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '77bd9dad-ca67-44a5-b92e-9697f9938d9f',
  'Redaktion', 'Limmattaler Zeitung', 'redaktion@limmattalerzeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Limmattaler Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@limmattalerzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'f7a93ab1-3bb2-4b99-b51c-c7e7bca22951',
  'Isabella', 'Seemann', 'redaktion@tagblattzuerich.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Tagblatt der Stadt Zürich'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@tagblattzuerich.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '63ec7dcb-f0e2-46bc-a870-54d7abd226d6',
  'Redaktion', 'Zürcher Oberlander', 'redaktion@zol.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Zürcher Oberlander'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@zol.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6a865521-e917-4c47-8d6e-24cce98d82f9',
  'Redaktion', 'Der Tössthaler', 'redaktion@zol.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Der Tössthaler'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@zol.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '64213774-c0e1-46d4-85a2-cccd9b6031c3',
  'Redaktion', 'Anzeiger von Uster', 'redaktion@zol.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Anzeiger von Uster'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@zol.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'd0c9e48e-72b1-440b-9500-8e01b6b6d1bf',
  'Redaktion', 'Regio', 'redaktion@zol.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Regio'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@zol.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6e84e85b-7ab7-49fb-b5ad-58202906d4d6',
  'Redaktion', 'Glattaler', 'redaktion@glattaler.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Glattaler'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@glattaler.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a992da6a-5fff-4edc-bfc5-599882453883',
  'Redaktion', 'SonntagsZeitung', 'redaktion@sonntagszeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'SonntagsZeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@sonntagszeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '2e47f0ad-cbb3-47a3-93f7-99d6542805d8',
  'Redaktion', 'Radio Argovia', 'sekretariat@argovia.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio Argovia'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'sekretariat@argovia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'd3abedc2-6040-4968-9ce6-c9034138c102',
  'Redaktion', 'Tele m1', 'info@telem1.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Tele m1'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@telem1.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '650a4aff-e04c-4845-a943-750ad6c65a96',
  'Redaktion', 'Grenchnertagblatt', 'redaktion@grenchnertagblatt.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Grenchnertagblatt'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@grenchnertagblatt.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '806b9542-4ebe-483c-ab54-9d02c7436ebf',
  'Redaktion', 'Der Landbote', 'redaktion@landbote.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Der Landbote'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@landbote.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6115463a-6add-40a1-a8d2-0673680a8d83',
  'Redaktion', 'Schaffhauser Nachrichten', 'redaktion@shn.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schaffhauser Nachrichten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@shn.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '98071115-2573-46ab-b306-19352dc7a659',
  'Redaktion', 'Radio Top', 'news@topmedien.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio Top'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'news@topmedien.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '1e2e48b3-3cc2-4d9d-9d06-60edacb9b73f',
  'Redaktion', 'Stadtanzeiger Winterthur', 'redaktion@zol.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Stadtanzeiger Winterthur'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@zol.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '35ba21f1-5eb0-475c-a4de-27c5e4a38d13',
  'Redaktion', 'Radio Stadtfilter', 'redaktion@stadtfilter.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio Stadtfilter'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@stadtfilter.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '22fa65cf-07b6-46ae-9f06-39f573dca783',
  'Redaktion', 'WNTI', 'redaktion@wnti.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'WNTI'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@wnti.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '95f1e78c-d118-4dec-904e-4b27abb2395d',
  'Redaktion', 'Schaffhauser Magazin', 'redaktion@shn.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Schaffhauser Magazin'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@shn.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'f14ba8c5-d75c-459d-b35f-9ac1049f1efd',
  'Redaktion', 'Radio Munot', 'redaktion@radiomunot.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio Munot'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@radiomunot.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '222cde1f-9bfe-4e4b-a97a-a04244ca0610',
  'Redaktion', 'Ostschweiz Magazin', 'info@galledia.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Ostschweiz Magazin'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@galledia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6a7286b6-a023-496d-80a8-aa09fb5358b0',
  'Redaktion', 'Radio FM1', 'kontakt@radiofm1.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio FM1'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'kontakt@radiofm1.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '4d8c6532-09c8-4715-967a-909b5fafd60d',
  'Redaktion', 'Beobachter Natur', 'redaktion@beobachternatur.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Beobachter Natur'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@beobachternatur.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'd39f8caa-1cab-4fdb-9b21-3cb43729aeeb',
  'Redaktion', 'Thurgauer Zeitung', 'zentralredaktion@tagblatt.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Thurgauer Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'zentralredaktion@tagblatt.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '09b15bfd-8523-4793-8fe8-118d1c5e3db3',
  'Redaktion', 'Badener Tagblatt', 'redaktion@chmedia.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Badener Tagblatt'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@chmedia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'e4c2449c-7762-4067-a585-65c0415b0ef7',
  'Redaktion', 'St. Galler Tagblatt', 'zentralredaktion@tagblatt.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'St. Galler Tagblatt'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'zentralredaktion@tagblatt.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '8b5c8368-3971-4426-8117-11f97305a906',
  'Redaktion', 'Aargauer Woche', 'redaktion@chmedia.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Aargauer Woche'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@chmedia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '017b1aed-aaa8-4c5e-b410-5053ec5a19ce',
  'Redaktion', 'Aargauer Zeitung', 'redaktion@aargauerzeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Aargauer Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@aargauerzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '6637cf35-ffad-4620-82a0-02fef8572c26',
  'Redaktion', 'Zuger Woche', 'info@zugerwoche.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Zuger Woche'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@zugerwoche.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '4cd88ecc-6b66-4c1e-8c6d-6a13137edef1',
  'Redaktion', 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue', 'info@aarauer-nachrichten.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue Oltner Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@aarauer-nachrichten.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '84790af0-cf16-4752-8df5-0bd0aeae30fb',
  'Redaktion', 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee', 'info@kreuzlinger-nachrichten.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee Nachrichten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@kreuzlinger-nachrichten.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'ed7439bd-6426-42c9-b043-eada0a77aead',
  'Redaktion', 'Winterthurer Zeitung', 'info@winterthurer-zeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Winterthurer Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@winterthurer-zeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '2650ac4a-3a92-4c34-855d-9d48c1524cab',
  'Redaktion', 'Toggenburger / See & Gaster Zeitung', 'info@toggenburger-zeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Toggenburger / See & Gaster Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@toggenburger-zeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '90b16f03-d90e-4a63-bd2e-a904d867003e',
  'Redaktion', 'Furttaler / Rümlanger', 'info@furttaler.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Furttaler / Rümlanger'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@furttaler.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '8ddf9825-9d65-497d-bdfb-3d830c25b9ec',
  'Redaktion', 'Wiler Nachrichten', 'info@wiler-nachrichten.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Wiler Nachrichten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@wiler-nachrichten.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '9876c78d-97cd-488d-8569-21e307402509',
  'Redaktion', 'St. Galler / Gossauer / Herisauer Nachrichten / Rh', 'sekretariat.sg@swissregiomedia.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'St. Galler / Gossauer / Herisauer Nachrichten / Rheintaler Bote / Bodensee / Oberthurgauer Nachrichten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'sekretariat.sg@swissregiomedia.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'a777b08f-ace0-4a83-ac3c-71ad910742c4',
  'Redaktion', 'Hauptstadt', 'info@hauptstadt.be', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Hauptstadt'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@hauptstadt.be'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '62cb0bb1-f213-4a59-afd3-066791256045',
  'Redaktion', 'Bund', 'redaktion@derbund.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Bund'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@derbund.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '8f50c8d3-be6f-4edb-a47c-3dc1e1c3e18f',
  'Redaktion', 'Berner Zeitung', 'redaktion@bernerzeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Berner Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@bernerzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'ef4c9595-9832-43af-86ed-63cdb166c462',
  'Redaktion', 'Bärnerbär', 'redaktion@baernerbaer.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Bärnerbär'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@baernerbaer.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'c1d98d41-c1bc-47e3-8652-5b425263e629',
  'Redaktion', 'Anzeiger Region Bern', 'redaktion@anzeigerbern.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Anzeiger Region Bern'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@anzeigerbern.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '18a30874-2c53-4269-a1d4-3570705f4e9c',
  'Redaktion', 'Basler Zeitung', 'redaktion@baz.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Basler Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@baz.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'e6c133f1-9792-4041-8e86-030b867e9704',
  'Redaktion', 'Luzerner Zeitung', 'redaktion.online@luzernerzeitung.ch', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Luzerner Zeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion.online@luzernerzeitung.ch'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'eeafb003-8ceb-4102-beb7-280ea8b3839d',
  'Redaktion', 'Vorarlberger Nachrichten', 'redaktion@vn.at', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Vorarlberger Nachrichten'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'redaktion@vn.at'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'e032182c-aafc-400f-b161-db6159a911f1',
  'Redaktion', 'NEUE Vorarlberger Tageszeitung', 'neue-redaktion@neue.at', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'NEUE Vorarlberger Tageszeitung'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'neue-redaktion@neue.at'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '7fc11c35-e112-4e2e-bc54-cb958946e755',
  'Redaktion', 'Blätle', 'blaettle@rzg.at', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Blätle'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'blaettle@rzg.at'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '0f1a2b23-0174-4491-9b56-0ade4b34941d',
  'Redaktion', 'LÄNDLE TV', 'info@laendletv.com', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'LÄNDLE TV'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'info@laendletv.com'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  '7b1bab2f-b29d-49e8-b6e7-2c77bcdf57a2',
  'Redaktion', 'Radio Proton', 'proton@radioproton.at', NULL,
  u.id, 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'Radio Proton'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'proton@radioproton.at'
);
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
SELECT
  'ca0faab5-4235-4e85-a37e-931ffb974ad5',
  'Redaktion', 'ferment – Das Impulsmagazin', 'kundendienst@diemedienag.ch', NULL,
  u.id, 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
FROM crm_unternehmen u
WHERE u.name = 'ferment – Das Impulsmagazin'
AND NOT EXISTS (
  SELECT 1 FROM crm_contacts c
  WHERE c.email = 'kundendienst@diemedienag.ch'
);

-- ----------------------------------------------------------------
-- 4. Unternehmen → Aktivität (Duplikat-Check via name + titel)
-- ----------------------------------------------------------------
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Marmite Professional' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'BauernZeitung, Journalistin' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Absage', 'Absage'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Bauernzeitung' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Countryside' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'GastroJournal' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Journalist Culinary & Gastronomy, Coopzeitung' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Gastrofacts' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'NZZ' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
SELECT u.id, a.id, 'Medienpartner', 'ja'
FROM crm_unternehmen u, crm_aktivitaeten a
WHERE u.name = 'Tages-Anzeiger' AND a.titel = 'STS Symposium 2025'
AND NOT EXISTS (
  SELECT 1 FROM crm_unternehmen_aktivitaeten x
  WHERE x.unternehmen_id = u.id AND x.aktivitaet_id = a.id
);

-- Ende Import