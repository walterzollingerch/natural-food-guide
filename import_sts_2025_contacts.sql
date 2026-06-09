-- ================================================================
-- Import STS 2025 — Medien-Kontakte
-- Generiert aus Import_STS.xlsx (Sheet: 2025)
-- Ausführen NACH migration_v5 und migration_v6
-- ================================================================

-- ----------------------------------------------------------------
-- 1. Unternehmen
-- ----------------------------------------------------------------
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('ecf12d29-5fa0-4e74-b6c2-0b901a4704b0', 'Marmite Professional', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('022c8950-3f9a-43a3-8161-728d1af7bbd7', 'BauernZeitung, Journalistin', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c234d6c7-b525-4589-a1e0-af370c0562a3', 'Bauernzeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('e376beeb-f35e-4732-88b4-19f944f973e2', 'Countryside', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('706877e4-024c-4a3d-a587-fc351aa8a8aa', 'GastroJournal', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('e630ce54-1c41-444a-89cf-5d75225ba716', 'Journalist Culinary & Gastronomy, Coopzeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('b2c20314-1680-409f-82b9-83baf03710ed', 'Gastrofacts', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('73eaf85a-ebdb-4b2c-9319-ff9d6359d4bb', 'NZZ', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('ce168b46-c154-43a7-bbe2-b2ec6ca2f839', 'Tages-Anzeiger', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('adeca119-6525-47fa-ba53-741136672c6e', 'Schweizer Bauer', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('77546493-14ff-4df4-8537-cb686842e14b', 'Schweizer Familie', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('14e89301-c733-449a-8221-69d2408e245d', 'WOZ', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c690649b-27cd-45c9-98a9-28f94652dd37', 'Schweizer Illustrierte', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('4b78ec1a-15a2-4a73-a695-318c5d75e8f1', '20 Minuten', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('04262c30-5e7d-4162-97ae-1ca06f78e5f0', 'Das Magazin', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c3d86295-4d51-4c86-bf75-a82f5c5f6449', 'Sonntagszeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('de34c883-9f24-41fd-b693-34e7f109396e', 'Femina', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c315745b-0f08-49ac-9e62-b82e9bf91ef0', 'Konsumentenschutz', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('ed46e8ff-03a4-4f65-8144-d31d3110e969', 'Beobachter', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('e160cd4d-b8d6-47d2-b01a-108ae64df6b1', 'SRF', NULL, 'TV/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('55ab8b8a-2ec9-4f3c-9f46-dcba74333b6b', 'Zürcher Unterländer', 'Tamedia', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('8f772135-ad29-444f-9ce5-74402fd27324', 'Limmattaler Zeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('5b3d178e-4c73-45fb-8815-4e870155edc1', 'Tagblatt der Stadt Zürich', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('a4bb9121-6461-499c-8ead-06302f4fbe0f', 'Zürcher Oberlander', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('6337e392-65ed-4734-9011-186d8eb271a7', 'Der Tössthaler', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('995ff247-d58b-42dc-8f7a-5d985269112b', 'Anzeiger von Uster', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('aae31b9c-4c3e-467b-a99b-7e7ec840c045', 'Regio', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('113c0f9d-7ce7-4eb9-ae31-ffb5a94e6c36', 'Glattaler', 'Zürcher Oberland Medien', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('7de3f01d-f0be-42f2-b23b-3bdb3e584432', 'SonntagsZeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('10969ac1-55ee-460e-ab2f-73abda9a27e1', 'Radio Argovia', 'CH Media', 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('94e14e16-0082-434c-94d1-cef0f08e44ec', 'Tele m1', NULL, 'TV/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('e3ec0b86-caf7-4079-aac2-25f844f1a3e7', 'Grenchnertagblatt', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('f5abcfe7-1104-4f83-95ba-d3e4cdc8dcf1', 'Der Landbote', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('6f817b4d-86b2-4da3-aae4-4e674621426f', 'Schaffhauser Nachrichten', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('fae3e2b2-9e47-42ef-9284-0fb3ca633904', 'Radio Top', NULL, 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('5c5285fe-90f7-4ec2-9d20-698fce67e4ae', 'Stadtanzeiger Winterthur', 'Zürcher Oberland Medien AG', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('1b041eaf-3425-483f-91da-dd4ea4e83cc7', 'Radio Stadtfilter', NULL, 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('9822bb4f-8cfd-49fe-b0e8-a60152f47ab6', 'WNTI', NULL, 'TV/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('202e6a05-e61d-45e5-b5a0-fa720cac210a', 'Schaffhauser Magazin', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('3e004603-e6ad-4bb4-85f7-ad68960f68fc', 'Radio Munot', NULL, 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('b7fb1c07-7538-46c3-b7a8-b5bf4ec9257f', 'Ostschweiz Magazin', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('b886afa0-0b9e-4cd7-a11f-858849f38de4', 'Radio FM1', NULL, 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('9bdadb88-e313-45ce-9188-61debdbf07c3', 'Beobachter Natur', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('5dc3f92f-94c7-4149-ae31-19c45dc58b6c', 'Thurgauer Zeitung', 'CH Media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('57cd043a-da58-4c16-86a9-d66321b17190', 'Badener Tagblatt', 'CH Media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c93e84ea-8a61-470b-a265-15e9bdeb9946', 'St. Galler Tagblatt', 'CH Media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('8a88e367-238f-4a5b-8dc9-1d23298abc5b', 'Aargauer Woche', 'CH Media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('d091b3f3-7ed6-4fa6-b5b5-747dc8137c5f', 'Aargauer Zeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('54aebdf9-ca84-4961-a518-66736097e332', 'Zuger Woche', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('caeb46a2-42cd-4e79-b160-5c4aafaaddcc', 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue Oltner Zeitung', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('12166d8b-2626-4d4a-a07a-cc9414098a73', 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee Nachrichten', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('0e633874-6a9b-4d46-8343-2f5c04854ea4', 'Winterthurer Zeitung', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('16d7eba9-cb0c-4d9b-a7bd-c1a5eb98f11a', 'Toggenburger / See & Gaster Zeitung', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('24cadd3a-7954-47b5-bfe2-e676828f7361', 'Furttaler / Rümlanger', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('f7c2bf14-d86b-44d3-b5bf-bd645a3e1022', 'Wiler Nachrichten', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('400d813b-e089-4e59-a60b-a30b8280f497', 'St. Galler / Gossauer / Herisauer Nachrichten / Rheintaler Bote / Bodensee / Oberthurgauer Nachrichten', 'swissregio media', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('a4e2641d-0f97-4904-aa96-f19ad4a0a3aa', 'Hauptstadt', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('13fb952f-7bbe-4d70-811c-c2945cc9f125', 'Bund', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('29f1e19f-5ade-4b3b-b145-f62b2c27342e', 'Berner Zeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('f862bfb9-ffe8-4d9f-baa5-b4f37f26f25b', 'Bärnerbär', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('ca36b134-e581-4c4b-872d-de353b5285dd', 'Anzeiger Region Bern', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('2445aa64-e727-4e5b-a3e1-2d8c62013b71', 'Basler Zeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('e92a125e-dd59-4922-854f-49042e7f9e11', 'Luzerner Zeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('44a2e8c8-df6b-4e04-8459-c816e6f6ad1f', 'Vorarlberger Nachrichten', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('fcd8c1fb-c5e6-4f6c-964d-ec9667aba743', 'NEUE Vorarlberger Tageszeitung', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('c753980d-ba44-417e-aedf-9561bb1a9fc2', 'Blätle', 'RegionalZeitungen Vorarlberg', 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('45954885-f7a9-45ff-b8bb-9d667ffb3818', 'LÄNDLE TV', NULL, 'TV/Online', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('70e0acab-0b58-4e57-9e29-c4439e83d415', 'Radio Proton', NULL, 'Radio', 'Medien')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen (id, name, mediengruppe, medientyp, branche)
  VALUES ('fa4031ea-c10d-417c-974d-78f9b65966c6', 'ferment – Das Impulsmagazin', NULL, 'Print/Online', 'Medien')
  ON CONFLICT DO NOTHING;

-- ----------------------------------------------------------------
-- 2. Aktivität: STS Symposium 2025
-- ----------------------------------------------------------------
INSERT INTO crm_aktivitaeten (id, titel, typ, status, datum_von, ort, beschreibung)
  VALUES ('415f9ace-4e26-4551-9951-8a3f50e68336', 'STS Symposium 2025', 'event', 'abgeschlossen', '2025-10-15', 'Zürich',
    'Soil to Soul Symposium 2025 — Medieneinladungen und Berichterstattung')
  ON CONFLICT DO NOTHING;

-- ----------------------------------------------------------------
-- 3. Kontakte
-- ----------------------------------------------------------------
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '173b1fcb-4847-4f3f-b090-ba52af625f4e',
  'Sarah', 'Kohler', NULL,
  'ecf12d29-5fa0-4e74-b6c2-0b901a4704b0', 'medien',
  NULL, NULL, TRUE, FALSE,
  'Absage', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '375b9973-c87c-4885-86d1-7bf6e31fb46c',
  'Jil', 'Schuller', 'j.schuller@bauernzeitung.ch',
  '022c8950-3f9a-43a3-8161-728d1af7bbd7', 'medien',
  'Medienpartnerschaft, auch dieses Jahr dabei', NULL, TRUE, TRUE,
  NULL, 'Master Class mit Marcus Pan und die Keynote von Richard Perskin', FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '2c5c1c56-49b3-4d2d-a0d4-988ef87dd1a8',
  'Viktor', 'Dubsky', 'v.dubsky@bauernzeitung.ch',
  'c234d6c7-b525-4589-a1e0-af370c0562a3', 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '4dc4d818-87b0-4429-b9be-625f27dcb267',
  'Jürg', 'Vollmer', 'info@juergvollmer.ch',
  'e376beeb-f35e-4732-88b4-19f944f973e2', 'medien',
  'Vereinbarung', NULL, TRUE, FALSE,
  NULL, 'Landwirtschaft', FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '2172207e-9046-4dcf-89f2-f8bfb8837a49',
  'Corinne', 'Nusskern', 'corinne.nusskern@gastrojournal.ch',
  '706877e4-024c-4a3d-a587-fc351aa8a8aa', 'medien',
  NULL, '2025-09-01', TRUE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '8608067f-8d2c-4c94-b9a6-0e036bbae730',
  'Kristina', 'Köhler', 'Kristina.koehler@coop.ch',
  'e630ce54-1c41-444a-89cf-5d75225ba716', 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'e598c9e0-07f1-4387-8f83-4b28647d9185',
  'Martina', 'Trottmann', 'martina.trottmann@coop.ch',
  'e630ce54-1c41-444a-89cf-5d75225ba716', 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '9873377f-6327-4dce-930f-610ac8bb098e',
  'Eva', 'Achatz', 'eva.achatz@kaboom-media.ch',
  'b2c20314-1680-409f-82b9-83baf03710ed', 'medien',
  NULL, '2025-09-02', TRUE, FALSE,
  NULL, 'Medienpartnerschaft angefragt', FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, telefon, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'bedb0b20-32d6-45a2-a2ae-5f7b3bfded18',
  'Sonja', 'Siegenthaler', 'sonja.siegenthaler@nzz.ch', '+41 79 681 96 60',
  '73eaf85a-ebdb-4b2c-9319-ff9d6359d4bb', 'medien',
  NULL, '2025-09-02', TRUE, TRUE,
  NULL, 'Lifestyle und Kulinarik', FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd22b98dc-fa18-47c8-9808-54bb2ea3960d',
  'Tania', 'Villiger', 'tania.villiger@nzz.ch',
  '73eaf85a-ebdb-4b2c-9319-ff9d6359d4bb', 'medien',
  NULL, NULL, TRUE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '56c6f109-aef2-4a57-be76-3f95823da002',
  'Mathias', 'Möller', 'mathias.moeller@tamedia.ch',
  'ce168b46-c154-43a7-bbe2-b2ec6ca2f839', 'medien',
  'Koji & Esther Kern', '2025-10-15', TRUE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd7498471-356b-45d8-8232-e0c494e73bf3',
  'Mara', 'Affolter', 'mara.affolter@schweizerbauer.ch',
  'adeca119-6525-47fa-ba53-741136672c6e', 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '6d632fe0-1e56-461b-a11a-b944a07331bc',
  'Monika', 'Gerlach', 'monika.gerlach@schweizerbauer.ch',
  'adeca119-6525-47fa-ba53-741136672c6e', 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '3b5728db-b979-4edb-b515-7a2e2ecf141d',
  'Christina', 'Hubbeling', 'christina.hubbeling@nzz.ch',
  '73eaf85a-ebdb-4b2c-9319-ff9d6359d4bb', 'medien',
  NULL, NULL, TRUE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7b4e6712-61c1-48ec-8d7c-269945ca4d57',
  'Michael', 'Lütscher', 'michael.luetscher@schweizerfamilie.ch',
  '77546493-14ff-4df4-8537-cb686842e14b', 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, TRUE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '0789282d-ace0-45df-a674-576be634b25c',
  'Esther', 'Banz', 'woz@woz.ch',
  '14e89301-c733-449a-8221-69d2408e245d', 'medien',
  NULL, NULL, FALSE, TRUE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '59a0c717-3c4b-4ca1-a04d-1d80d2753f3a',
  'Richard', 'Widmer', 'richard.widmer@schweizer-illustrierte.ch',
  'c690649b-27cd-45c9-98a9-28f94652dd37', 'medien',
  NULL, '2025-10-15', TRUE, TRUE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '51b72d98-c682-4ca1-8016-35be98a518aa',
  'Valeska', 'Jansen', 'Valeska.Jansen@schweizer-illustrierte.ch',
  'c690649b-27cd-45c9-98a9-28f94652dd37', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'a3dd9916-947a-426b-b676-ef5fd303dd93',
  'Redaktion', '20 Minuten', 'redaktion@20minuten.ch',
  '4b78ec1a-15a2-4a73-a695-318c5d75e8f1', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '617bc25a-6748-46b2-a90a-b4a1ce9d1dd5',
  'Redaktion', 'Das Magazin', 'redaktion@dasmagazin.ch',
  '04262c30-5e7d-4162-97ae-1ca06f78e5f0', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'a493ef66-4c0d-42f0-a6ba-265e80693b4f',
  'Redaktion', 'Sonntagszeitung', 'redaktion@sonntagszeitung.ch',
  'c3d86295-4d51-4c86-bf75-a82f5c5f6449', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'ef74e0a7-3388-42bb-953e-48ccc6b09cd8',
  'Redaktion', 'Tages-Anzeiger', 'redaktion@tages-anzeiger.ch',
  'ce168b46-c154-43a7-bbe2-b2ec6ca2f839', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'cbc7b9c4-dddf-4d2f-9ab3-2d70f3c30621',
  'Redaktion', 'Femina', 'redaction@femina.ch',
  'de34c883-9f24-41fd-b693-34e7f109396e', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '15805d8e-15e8-427d-9646-3ad7942e9668',
  'Redaktion', 'Konsumentenschutz', 'info@konsumentenschutz.ch',
  'c315745b-0f08-49ac-9e62-b82e9bf91ef0', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '9bfb28d2-f61b-4dab-aefb-c65e74026fa2',
  'Redaktion', 'Beobachter', 'redaktion@beobachter.ch',
  'ed46e8ff-03a4-4f65-8144-d31d3110e969', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd985168c-00b9-4a9e-9303-48e30d15f162',
  'Redaktion', 'SRF', 'srf@srf.ch',
  'e160cd4d-b8d6-47d2-b01a-108ae64df6b1', 'medien',
  'erhalten, melden sich fall interesse', '2025-09-01', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'ecdefc97-4afe-4761-a577-8b4e28ef4358',
  'Redaktion', 'Zürcher Unterländer', 'region@zuonline.ch',
  '55ab8b8a-2ec9-4f3c-9f46-dcba74333b6b', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7a1657bc-146b-4945-bc38-a12c08badfea',
  'Redaktion', 'Limmattaler Zeitung', 'redaktion@limmattalerzeitung.ch',
  '8f772135-ad29-444f-9ce5-74402fd27324', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '5d70b3dc-48a6-4be0-b3c8-ba095cc3e684',
  'Isabella', 'Seemann', 'redaktion@tagblattzuerich.ch',
  '5b3d178e-4c73-45fb-8815-4e870155edc1', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '01cb2999-9ebf-4cef-ba0a-dbd12a418f50',
  'Redaktion', 'Zürcher Oberlander', 'redaktion@zol.ch',
  'a4bb9121-6461-499c-8ead-06302f4fbe0f', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd119408c-5e49-4c13-8ffb-7a7f04f1f0f5',
  'Redaktion', 'Der Tössthaler', 'redaktion@zol.ch',
  '6337e392-65ed-4734-9011-186d8eb271a7', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '69b9e979-841b-48a6-9377-2ad073066afd',
  'Redaktion', 'Anzeiger von Uster', 'redaktion@zol.ch',
  '995ff247-d58b-42dc-8f7a-5d985269112b', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '9274b5d3-1fbe-4043-866a-f3746f4e7e2b',
  'Redaktion', 'Regio', 'redaktion@zol.ch',
  'aae31b9c-4c3e-467b-a99b-7e7ec840c045', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '891e7a4c-292d-4e40-81e1-d04f8cacd04b',
  'Redaktion', 'Glattaler', 'redaktion@glattaler.ch',
  '113c0f9d-7ce7-4eb9-ae31-ffb5a94e6c36', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7a03aabe-1353-45a8-b4c6-6a8666a84497',
  'Redaktion', 'SonntagsZeitung', 'redaktion@sonntagszeitung.ch',
  '7de3f01d-f0be-42f2-b23b-3bdb3e584432', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'f129599a-fd00-4aba-9b01-0f95c6cecc53',
  'Redaktion', 'Radio Argovia', 'sekretariat@argovia.ch',
  '10969ac1-55ee-460e-ab2f-73abda9a27e1', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '4c54c2b0-acbf-4b3a-926b-e5575c93aa45',
  'Redaktion', 'Tele m1', 'info@telem1.ch',
  '94e14e16-0082-434c-94d1-cef0f08e44ec', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'b9122aa0-76f6-4859-a5df-07bdba1863cb',
  'Redaktion', 'Grenchnertagblatt', 'redaktion@grenchnertagblatt.ch',
  'e3ec0b86-caf7-4079-aac2-25f844f1a3e7', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'a9ffe578-9bf9-408d-8653-9f317dc72806',
  'Redaktion', 'Der Landbote', 'redaktion@landbote.ch',
  'f5abcfe7-1104-4f83-95ba-d3e4cdc8dcf1', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '8350d34b-b285-4e74-af17-3532658cb086',
  'Redaktion', 'Schaffhauser Nachrichten', 'redaktion@shn.ch',
  '6f817b4d-86b2-4da3-aae4-4e674621426f', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '23613e63-10e2-41af-8eb1-f0e6af6f8adf',
  'Redaktion', 'Radio Top', 'news@topmedien.ch',
  'fae3e2b2-9e47-42ef-9284-0fb3ca633904', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '20d8da01-b2d0-43e8-8657-3ba26f9b892d',
  'Redaktion', 'Stadtanzeiger Winterthur', 'redaktion@zol.ch',
  '5c5285fe-90f7-4ec2-9d20-698fce67e4ae', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'cc3907a6-a4e4-469b-b948-2753a0a53123',
  'Redaktion', 'Radio Stadtfilter', 'redaktion@stadtfilter.ch',
  '1b041eaf-3425-483f-91da-dd4ea4e83cc7', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '4994c05d-3a4a-4f63-b288-41be96790666',
  'Redaktion', 'WNTI', 'redaktion@wnti.ch',
  '9822bb4f-8cfd-49fe-b0e8-a60152f47ab6', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd2212adb-37de-4602-b9b4-c44baf3d1ea9',
  'Redaktion', 'Schaffhauser Magazin', 'redaktion@shn.ch',
  '202e6a05-e61d-45e5-b5a0-fa720cac210a', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'ed7c9984-3d5e-41de-917c-c97921367086',
  'Redaktion', 'Radio Munot', 'redaktion@radiomunot.ch',
  '3e004603-e6ad-4bb4-85f7-ad68960f68fc', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'b83e36d2-15e9-425f-a5df-462a1c49b166',
  'Redaktion', 'Ostschweiz Magazin', 'info@galledia.ch',
  'b7fb1c07-7538-46c3-b7a8-b5bf4ec9257f', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '077d83d2-1474-4fef-af04-6c40c86ab3ea',
  'Redaktion', 'Radio FM1', 'kontakt@radiofm1.ch',
  'b886afa0-0b9e-4cd7-a11f-858849f38de4', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'aeffcd4a-2f4f-4bec-90cf-c5308830e181',
  'Redaktion', 'Beobachter Natur', 'redaktion@beobachternatur.ch',
  '9bdadb88-e313-45ce-9188-61debdbf07c3', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'de6e0352-46cd-4396-b645-1a5dd7ef0a74',
  'Redaktion', 'Thurgauer Zeitung', 'zentralredaktion@tagblatt.ch',
  '5dc3f92f-94c7-4149-ae31-19c45dc58b6c', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '17422d11-5a52-404d-b3fa-3dfb8ea0987f',
  'Redaktion', 'Badener Tagblatt', 'redaktion@chmedia.ch',
  '57cd043a-da58-4c16-86a9-d66321b17190', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '0cab9694-d3e3-4d10-a9b3-beaea43c1a48',
  'Redaktion', 'St. Galler Tagblatt', 'zentralredaktion@tagblatt.ch',
  'c93e84ea-8a61-470b-a265-15e9bdeb9946', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '82b002a1-53c9-4c78-9eec-3faf462f311b',
  'Redaktion', 'Aargauer Woche', 'redaktion@chmedia.ch',
  '8a88e367-238f-4a5b-8dc9-1d23298abc5b', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'e2e189dc-591e-4af2-a0f5-62aef349f0be',
  'Redaktion', 'Aargauer Zeitung', 'redaktion@aargauerzeitung.ch',
  'd091b3f3-7ed6-4fa6-b5b5-747dc8137c5f', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7137064a-440b-49ff-9842-07ab293f2f72',
  'Redaktion', 'Zuger Woche', 'info@zugerwoche.ch',
  '54aebdf9-ca84-4961-a518-66736097e332', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'b4931bed-80e0-4a08-9f94-3e4a910e12c2',
  'Redaktion', 'Aarauer / Lenzburger / Zofinger Nachrichten / Neue', 'info@aarauer-nachrichten.ch',
  'caeb46a2-42cd-4e79-b160-5c4aafaaddcc', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'ae5293fd-f43c-4a3b-b22c-70cd904ba8e8',
  'Redaktion', 'Kreuzlinger / Weinfelder / Frauenfelder / Untersee', 'info@kreuzlinger-nachrichten.ch',
  '12166d8b-2626-4d4a-a07a-cc9414098a73', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7d9cfc79-7854-4e6b-98af-689348416955',
  'Redaktion', 'Winterthurer Zeitung', 'info@winterthurer-zeitung.ch',
  '0e633874-6a9b-4d46-8343-2f5c04854ea4', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '68d2396a-90bb-4afb-9739-edd5075bf649',
  'Redaktion', 'Toggenburger / See & Gaster Zeitung', 'info@toggenburger-zeitung.ch',
  '16d7eba9-cb0c-4d9b-a7bd-c1a5eb98f11a', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '6305b218-b7e9-468f-a9e4-1caf695f6b34',
  'Redaktion', 'Furttaler / Rümlanger', 'info@furttaler.ch',
  '24cadd3a-7954-47b5-bfe2-e676828f7361', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '33a7bb28-124a-4a2b-b75f-f884582002e8',
  'Redaktion', 'Wiler Nachrichten', 'info@wiler-nachrichten.ch',
  'f7c2bf14-d86b-44d3-b5bf-bd645a3e1022', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'd3b1534a-9219-4967-a4bb-319dfc3832ae',
  'Redaktion', 'St. Galler / Gossauer / Herisauer Nachrichten / Rh', 'sekretariat.sg@swissregiomedia.ch',
  '400d813b-e089-4e59-a60b-a30b8280f497', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '42daf647-198a-48fc-9c76-ebc491ad9c50',
  'Redaktion', 'Hauptstadt', 'info@hauptstadt.be',
  'a4e2641d-0f97-4904-aa96-f19ad4a0a3aa', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '159f8803-4107-4905-b381-b60585f66825',
  'Redaktion', 'Bund', 'redaktion@derbund.ch',
  '13fb952f-7bbe-4d70-811c-c2945cc9f125', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '21f9f0bf-360e-4b07-a0d0-bf59efcff37d',
  'Redaktion', 'Berner Zeitung', 'redaktion@bernerzeitung.ch',
  '29f1e19f-5ade-4b3b-b145-f62b2c27342e', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'cd74b768-2368-4734-bbde-329d6620299d',
  'Redaktion', 'Bärnerbär', 'redaktion@baernerbaer.ch',
  'f862bfb9-ffe8-4d9f-baa5-b4f37f26f25b', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'fd5004f2-38a9-48ed-a66c-f22687574552',
  'Redaktion', 'Anzeiger Region Bern', 'redaktion@anzeigerbern.ch',
  'ca36b134-e581-4c4b-872d-de353b5285dd', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'c9a8dc37-483e-4dc9-9e03-19a20ba84fe2',
  'Redaktion', 'Basler Zeitung', 'redaktion@baz.ch',
  '2445aa64-e727-4e5b-a3e1-2d8c62013b71', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '893bc4af-8855-4e87-96bf-389f9bb1f4c5',
  'Redaktion', 'Luzerner Zeitung', 'redaktion.online@luzernerzeitung.ch',
  'e92a125e-dd59-4922-854f-49042e7f9e11', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'ab06c6c0-4218-45cf-ac70-5f91c2e7da07',
  'Redaktion', 'Vorarlberger Nachrichten', 'redaktion@vn.at',
  '44a2e8c8-df6b-4e04-8459-c816e6f6ad1f', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  'c6ec004d-c996-4094-973c-12248ed76381',
  'Redaktion', 'NEUE Vorarlberger Tageszeitung', 'neue-redaktion@neue.at',
  'fcd8c1fb-c5e6-4f6c-964d-ec9667aba743', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '56b4b1b8-476c-4ebf-9db0-d4fd11db3251',
  'Redaktion', 'Blätle', 'blaettle@rzg.at',
  'c753980d-ba44-417e-aedf-9561bb1a9fc2', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '77e12c66-a499-406f-b322-6be8285c9b67',
  'Redaktion', 'LÄNDLE TV', 'info@laendletv.com',
  '45954885-f7a9-45ff-b8bb-9d667ffb3818', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '7b59704f-934d-4379-882f-b00b5518518a',
  'Redaktion', 'Radio Proton', 'proton@radioproton.at',
  '70e0acab-0b58-4e57-9e29-c4439e83d415', 'medien',
  NULL, '2025-10-15', TRUE, FALSE,
  'ja', NULL, FALSE
) ON CONFLICT DO NOTHING;
INSERT INTO crm_contacts
  (id, vorname, nachname, email, unternehmen_id, kategorie_id,
   notizen, zuletzt_kontakt, anfrage_verschickt, pm_geschickt,
   nachgehakt, themen, do_not_contact)
VALUES (
  '74cbe1a0-5036-4721-801a-566693f73022',
  'Redaktion', 'ferment – Das Impulsmagazin', 'kundendienst@diemedienag.ch',
  'fa4031ea-c10d-417c-974d-78f9b65966c6', 'medien',
  NULL, NULL, FALSE, FALSE,
  NULL, NULL, FALSE
) ON CONFLICT DO NOTHING;

-- ----------------------------------------------------------------
-- 4. Unternehmen → Aktivität verknüpfen (Zusage / Absage)
-- ----------------------------------------------------------------
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('ecf12d29-5fa0-4e74-b6c2-0b901a4704b0', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('022c8950-3f9a-43a3-8161-728d1af7bbd7', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('c234d6c7-b525-4589-a1e0-af370c0562a3', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Absage', 'Absage')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('e376beeb-f35e-4732-88b4-19f944f973e2', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('706877e4-024c-4a3d-a587-fc351aa8a8aa', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('e630ce54-1c41-444a-89cf-5d75225ba716', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('b2c20314-1680-409f-82b9-83baf03710ed', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('73eaf85a-ebdb-4b2c-9319-ff9d6359d4bb', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;
INSERT INTO crm_unternehmen_aktivitaeten (unternehmen_id, aktivitaet_id, rolle, zusage_status)
  VALUES ('ce168b46-c154-43a7-bbe2-b2ec6ca2f839', '415f9ace-4e26-4551-9951-8a3f50e68336', 'Medienpartner', 'ja')
  ON CONFLICT DO NOTHING;

-- Ende Import