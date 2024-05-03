-- ESITELMÄN TYYPPI
INSERT INTO esitelman_tyyppi VALUES ('Suullinen'), ('Posteri');

-- ESITELMÄN STATUS
INSERT INTO esitelman_status VALUES ('Vastaanotettu'),('Arvioinnissa'),('Hyväksytty'),('Peruttu'),('Hylätty'),('Vaatii muutoksia');

-- OHJELMATYYPPI
INSERT INTO ohjelmatyyppi VALUES ('Esitelmä', null);
INSERT INTO ohjelmatyyppi VALUES ('Paneelikeskustelu', null);
INSERT INTO ohjelmatyyppi VALUES ('Ruokailu', 'Huomioi jono');

-- TEEMA
INSERT INTO teema VALUES ('Työhyvinvointi'), ('Hyvinvointi'),('Tietotekniikka'),('Tekoäly'),('Ohjelmistokehitys'),('Rahoitus');

-- TEHTÄVÄ
INSERT INTO tehtava VALUES ('Esitelmien arvionti'),('Ryhmien kasaus'),('Aikataulutus'),('Ilmapallojen puhaltaminen');

-- TEHTÄVÄN STATUS
INSERT INTO tehtavan_status VALUES ('Ei aloitettu'),('Työn alla'),('Valmis'),('Ei tehdä');

-- ROOLI
INSERT INTO rooli VALUES ('Presidentti'), ('Ohjelmasihteeri'), ('Pääsihteeri'), ('Talousvastaava'), ('Huvivastaava'), ('Tiedottaja'), ('Tieteellinen työryhmä'), ('Arvioija');

-- HENKILÖ
INSERT INTO henkilo VALUES ('Aku', 'Ankka', '0400123123', 'aku.ankka@sposti.com', '00000', 'Ankkalinna', 'Paratiisitie 13', 'Ankkamaa');
INSERT INTO henkilo VALUES ('Teppo', 'Tulppu', '0400234234', 'teppo.tulppu@sposti.com', '00000', 'Ankkalinna', 'Paratiisitie 14', 'Ankkamaa');
INSERT INTO henkilo VALUES ('Roope', 'Ankka', '0400999777', 'roope.ankka@rikas.com', '00001', 'Ankkalinna', 'Rahasäiliökukkula 1', 'Ankkamaa');
INSERT INTO henkilo VALUES ('Risto', 'Reipas', '0409876548', 'risto.reipas@email.com', '00100', 'Helsinki', 'Urho Kekkosen katu 1', 'Suomi');
INSERT INTO henkilo VALUES ('Mikko', 'Mallikas', '0457878787', 'mikko.m@email.com', '00100', 'Helsinki', 'Mannerheimintie 30', 'Suomi');
INSERT INTO henkilo VALUES ('Joulu', 'Pukki', '020697855', 'J.pukki@korvatunturi.com', '99999', 'Korvatunturi', null, 'Suomi');
INSERT INTO henkilo VALUES ('Maija', 'Mietteliäs', '0401234567', 'maija.mietteliäs@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');

-- KONFERENSSIN SIJANTI
INSERT INTO konf_sijainti VALUES ('Messukeskus', 'Suomi', '00520', 'Helsinki', 'Messuaukio 1', 56000);
INSERT INTO konf_sijainti VALUES ('Helsingin jäähalli', 'Suomi', '00250', 'Helsinki', 'Nordenskiöldinkatu 11-13', 8200);
INSERT INTO konf_sijainti VALUES ('Oulun jäähalli', 'Suomi', '90130', 'Oulu', 'Teuvo Pakkalan katu 11', 6614);
INSERT INTO konf_sijainti VALUES ('Helsinki-halli', 'Suomi', '00240', 'Helsinki', 'Areenakuja 1', 15500);

-- SOSIAALINEN TAPAHTUMA 
INSERT INTO sos_tapahtuma VALUES ('Päätösillallinen ravintola Shelter', 'Illallinen', '2024.08.23 18:00', '2024.08.23 21:00', 'Kanavaranta 7, 00160 Helsinki', null, 70);
INSERT INTO sos_tapahtuma VALUES ('Metsäretki luontoon', 'Kävelyretki', '2025.08.24 12:00', '2025.08.24 18:00', 'Luontoreitti 1, 00160 Helsinki', null, 5);

-- KONFERENSSIN HUONE
INSERT INTO konf_huone VALUES ('Snellmann', '003', '1', 250, 3);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '045', '2', 25, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '044', '2', 25, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '042', '2', 15, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '042', '2', 15, 1);
INSERT INTO konf_huone VALUES ('Tapahtuma-alue', '000', '1', 4500, 2);
INSERT INTO konf_huone VALUES ('Tapahtuma-alue', '000', '1', 2000, 4);

-- KONFERENSSIN TYÖNTEKIJÄ
INSERT INTO konf_tyontekija VALUES (1, 1);
INSERT INTO konf_tyontekija VALUES (5, 8);
INSERT INTO konf_tyontekija VALUES (6, 8);

-- KONFERENSSI
INSERT INTO konferenssi VALUES ('Sijoita kuin Roope Ankka', '2025.05.02', '2025.05.02', null, 3, 6);
INSERT INTO konferenssi VALUES ('Kävele kuin Roope Ankka', '2025.09.02', '2025.09.02', null, 3, 2);

-- KONFERENSSIN HINTA
INSERT INTO konf_hinta VALUES (250, 1),(200, 1),(400, 2), (350, 2);

-- KONFERENSSIN ILMOITTAUTUMINEN
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.01', 1, 0, 0, 0, 0, null, 1, 1, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.02', 0, 0, 0, 0, 0, null, 1, 2, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.03', 1, 0, 1, 0, 0, null, 1, 3, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.04', 1, 0, 0, 1, 0, null, 1, 4, 1);


-- SOSIAALISEN TAPAHTUMAN ILMOITTAUTUMINEN
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.01', null, 1, 0, 2, 1, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.02', null, 1, 0, 1, 2, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.03', null, 1, 0, 1, 3, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.04', null, 0, 0, 1, 4, 1, 1);


-- ESITELMÄ
INSERT INTO esitelma VALUES ('www.linkki.fi', '2024.05.01', null, 'Näin minusta tuli RIKAS!', 'Ohjeet miten tulla rikkaaksi', 'roope@ankka.com', 1, 6, 1, 1, null);
INSERT INTO esitelma VALUES ('www.linkki.fi', '2024.05.01', null, 'Näin minusta tuli hyvä kävalijä', 'Ohjeet kuinka kävellä kuin Roope Ankka', 'roope@ankka.com', 1, 2, 1, 3, null);

-- ESITELMAN TEKIJÄ
INSERT INTO esitelman_tekija VALUES (1, null, 1, 3);
INSERT INTO esitelman_tekija VALUES (1, null, 2, 1);
INSERT INTO esitelman_tekija VALUES (2, null, 2, 3);

-- ARVIOINTI
INSERT INTO arviointi VALUES ('2024.05.01', null, 1, 1, 1, 6);
INSERT INTO arviointi VALUES ('2024.05.01', 'Tämä on kommentti', 2, 1, 1, 6);
INSERT INTO arviointi VALUES ('2024.05.01', null, 3, 1, 1, 6);

-- KONFERENSSIN TEHTÄVÄ
INSERT INTO konf_tehtava VALUES ('2024.05.01', 1, 1, 1, 1);
INSERT INTO konf_tehtava VALUES ('2024.05.02', 2, 1, 1, 2);
INSERT INTO konf_tehtava VALUES ('2024.05.03', 3, 1, 1, 3);
INSERT INTO konf_tehtava VALUES ('2024.05.03', 3, 1, 1, 4);

-- KONFERENSSIN OHJELMANUMERO
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.01', '2024.05.01 22:00', '2024.05.01 23:00', null, 1, 1, 1, 1);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.01', '2024.05.01 14:00', '2024.05.01 14:55', null, 2, 1, 1, 1);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.01', '2024.05.01 15:00', '2024.05.01 15:55', null, 2, 1, 2, 2);

-- OHJELMAN HENKILÖ
INSERT INTO ohjelman_henkilo VALUES (1, 1),(2, 3),(2, 1);
