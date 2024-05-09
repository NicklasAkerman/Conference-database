-- ESITELMÄN TYYPPI
INSERT INTO esitelman_tyyppi VALUES ('Suullinen'), ('Posteri'), ('Tyhjä');

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
INSERT INTO henkilo VALUES ('Iines', 'Ankka', '0400999777', 'iines.ankka@rikas.com', '00001', 'Ankkalinna', 'Paratiisitie 111', 'Ankkamaa');
INSERT INTO henkilo VALUES ('Super', 'Mies', '0401234567', 'Super@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Bat', 'Man', '0401234567', 'Bat@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Kapteeni', 'Amerikka', '0401234567', 'Kapteeni@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Vihreä', 'Hulkki', '0401234567', 'Vihreä@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Prinsessa', 'Ruusunen', '0401234567', 'Prinsessa@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Pieni', 'Merenneito', '0401234567', 'pieni@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Anna', 'Frozen', '0401234567', 'anna@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');
INSERT INTO henkilo VALUES ('Elsa', 'Frosen', '0401234567', 'elsa@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');


-- KONFERENSSIN SIJANTI
INSERT INTO konf_sijainti VALUES ('Messukeskus', 'Suomi', '00520', 'Helsinki', 'Messuaukio 1', 56000);
INSERT INTO konf_sijainti VALUES ('Helsingin jäähalli', 'Suomi', '00250', 'Helsinki', 'Nordenskiöldinkatu 11-13', 8200);
INSERT INTO konf_sijainti VALUES ('Oulun jäähalli', 'Suomi', '90130', 'Oulu', 'Teuvo Pakkalan katu 11', 6614);
INSERT INTO konf_sijainti VALUES ('Helsinki-halli', 'Suomi', '00240', 'Helsinki', 'Areenakuja 1', 15500);

-- SOSIAALINEN TAPAHTUMA 
INSERT INTO sos_tapahtuma VALUES ('Päätösillallinen ravintola Shelter', 'Illallinen', '2024.08.23 18:00', '2024.08.23 21:00', 'Kanavaranta 7, 00160 Helsinki', null, 70);
INSERT INTO sos_tapahtuma VALUES ('Metsäretki luontoon', 'Kävelyretki', '2025.08.24 12:00', '2025.08.24 18:00', 'Luontoreitti 1, 00160 Helsinki', null, 5);

-- KONFERENSSIN HUONE
INSERT INTO konf_huone VALUES ('Snellmann', '103', '1', 250, 3);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '245', '2', 25, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '244', '2', 25, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '242', '2', 15, 1);
INSERT INTO konf_huone VALUES ('Neuvotteluhuone', '242', '2', 15, 1);
INSERT INTO konf_huone VALUES ('Tapahtuma-alue', '000', '1', 4500, 2);
INSERT INTO konf_huone VALUES ('Tapahtuma-alue', '000', '1', 2000, 4);

-- KONFERENSSIN TYÖNTEKIJÄ 
INSERT INTO konf_tyontekija VALUES (9, 8); -- henkilo_id, rooli_id
INSERT INTO konf_tyontekija VALUES (10, 8);
INSERT INTO konf_tyontekija VALUES (11, 8);
INSERT INTO konf_tyontekija VALUES (12, 8);
INSERT INTO konf_tyontekija VALUES (5, 5);
INSERT INTO konf_tyontekija VALUES (6, 1);

-- KONFERENSSI
INSERT INTO konferenssi VALUES ('Sijoita kuin Roope Ankka', '2025.05.02', '2025.05.02', 'Sijoitusneuvoja', 3, 6);
INSERT INTO konferenssi VALUES ('Kävele kuin Aku Ankka', '2025.09.02', '2025.09.02', 'Kävelyneuvonta', 2, 2);
INSERT INTO konferenssi VALUES ('Koodaa kuin Iines', '2026.09.02', '2026.09.02', 'Koodausta', 2, 5);
INSERT INTO konferenssi VALUES ('Mennyt konferenssi', '2023.09.02', '2023.09.02', 'Kaikki oli ennen paremmin', 2, 4);

-- KONFERENSSIN HINTA
INSERT INTO konf_hinta VALUES (250, 1),(200, 1),(400, 2), (350, 2), (1000, 3), (2500, 3);

-- KONFERENSSIN ILMOITTAUTUMINEN
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.01', 1, 0, 1, 0, 0, null, 1, 1, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.02', 1, 0, 1, 1, 0, null, 1, 2, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.02', 1, 0, 1, 1, 0, '2024.05.03', 1, 3, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.01', 1, 0, 0, 0, 0, null, 1, 5, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.02', 1, 0, 0, 0, 0, null, 1, 6, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.03', 1, 0, 0, 0, 0, null, 1, 7, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.05', 1, 0, 0, 0, 0, null, 1, 8, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.06', 0, 0, 0, 0, 1, null, 1, 9, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.07', 0, 0, 0, 0, 1, null, 1, 10, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.08', 0, 0, 0, 0, 1, null, 1, 11, 1);
INSERT INTO konf_ilmoittautuminen VALUES ('2024.05.09', 0, 0, 0, 0, 1, null, 1, 12, 1);

    -- MENNYT KONFERENSSI, on maksanut ja osallistunut (1)
INSERT INTO konf_ilmoittautuminen VALUES ('2022.05.07', 1, 1, 0, 0, 0, null, 1, 5, 4);
INSERT INTO konf_ilmoittautuminen VALUES ('2022.05.08', 1, 1, 0, 0, 0, null, 1, 6, 4);
INSERT INTO konf_ilmoittautuminen VALUES ('2022.05.09', 1, 1, 0, 0, 0, null, 1, 7, 4);
INSERT INTO konf_ilmoittautuminen VALUES ('2022.05.10', 1, 1, 0, 0, 0, null, 1, 8, 4);

-- SOSIAALISEN TAPAHTUMAN ILMOITTAUTUMINEN
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.01', null, 1, 0, 2, 1, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.02', null, 1, 0, 1, 2, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.03', null, 1, 0, 1, 3, 1, 1);
INSERT INTO sos_ilmoittautuminen VALUES ('2024.05.04', null, 0, 0, 1, 4, 1, 1);


-- ESITELMÄ
INSERT INTO esitelma VALUES ('www.linkki1.fi', '2024.05.01', null, 'Näin minusta tuli RIKAS!', 'Ohjeet miten tulla rikkaaksi', 'roopeEsitelmä@ankka.com', 1, 6, 1, 3, null);
INSERT INTO esitelma VALUES ('www.linkki2.fi', '2024.05.02', null, 'Näin minusta tuli hyvä kävelijä', 'Ohjeet kuinka kävellä kuin Aku Ankka', 'AkuEsitelmä@ankka.com', 2, 1, 1, 3, null);
INSERT INTO esitelma VALUES ('www.linkki3.fi', '2024.05.03', null, 'pihistele kuin teppo', 'Tiivistelmätekstiä', 'tepontoinenemail@ankkala.com', 1, 6, 2, 3, null);
INSERT INTO esitelma VALUES ('www.linkki4.fi', '2024.05.04', null, 'elä kuin aku', 'Tiivistelmätekstiä', 'aku.ankka.esitelmöi@sposti.com', 1, 6, 1, 3, null);

-- ESITELMAN TEKIJÄ
INSERT INTO esitelman_tekija VALUES (1, null, 1, 3);
INSERT INTO esitelman_tekija VALUES (1, 'AL', 2, 1);
INSERT INTO esitelman_tekija VALUES (2, 'AL', 2, 2);
INSERT INTO esitelman_tekija VALUES (1, null, 3, 2);
INSERT INTO esitelman_tekija VALUES (1, 'AL', 4, 1);

-- ARVIOINTI
INSERT INTO arviointi VALUES ('2024.05.01', null, 1, 1, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.02', 'Tämä on kommentti', 2, 1, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.03', 'hieno on', 3, 1, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.04', 'Muutoksien jälkeen olisi hyvä posteri', 4, 1, 2, 6);

INSERT INTO arviointi VALUES ('2024.05.05', null, 1, 3, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.06', 'Tämä on kommentti', 2, 3, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.07', 'hieno on', 3, 3, 1, 3);
INSERT INTO arviointi VALUES ('2024.05.08', 'Ei sovellu tähän konferenssiin', 4, 3, 3, 5);

-- KONFERENSSIN TEHTÄVÄ
INSERT INTO konf_tehtava VALUES ('2024.05.01', 3, 1, 1, 1);
INSERT INTO konf_tehtava VALUES ('2024.05.02', 3, 1, 1, 2);
INSERT INTO konf_tehtava VALUES ('2024.05.03', 4, 1, 1, 3);
INSERT INTO konf_tehtava VALUES ('2024.05.03', 4, 1, 1, 4);

-- KONFERENSSIN OHJELMANUMERO
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.01', '2024.05.01 09:00', '2024.05.01 09:55', null, 1, 3, 1, 1);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.02', '2024.05.02 10:00', '2024.05.01 10:55', null, 1, 3, 3, 1);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.03', '2024.05.03 11:00', '2024.05.01 11:55', null, 1, 3, 4, 1);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.04', '2024.05.04 13:00', '2024.05.01 13:55', 'LOUNAS', 1, 3, null, 3);
INSERT INTO konf_ohjelmanumero VALUES ('2024.05.05', '2024.05.05 14:00', '2024.05.01 14:55', 'Paneelikeskustelu', 1, 3, null, 2);


-- OHJELMAN HENKILÖ
INSERT INTO ohjelman_henkilo VALUES (1, 3),(2, 2),(3, 1), (5, 1),(5, 3);