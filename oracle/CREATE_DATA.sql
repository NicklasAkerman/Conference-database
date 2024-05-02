-- ESITELMÄN TYYPPI
INSERT INTO esitelman_tyyppi VALUES (null, 'Suullinen');
INSERT INTO esitelman_tyyppi VALUES (null, 'Posteri');

-- ESITELMÄN STATUS
INSERT INTO esitelman_status VALUES (null, 'Vastaanotettu');
INSERT INTO esitelman_status VALUES (null, 'Arvioinnissa');
INSERT INTO esitelman_status VALUES (null, 'Hyväksytty');
INSERT INTO esitelman_status VALUES (null, 'Peruttu');
INSERT INTO esitelman_status VALUES (null, 'Hylätty');
INSERT INTO esitelman_status VALUES (null, 'Vaatii muutoksia');

-- OHJELMATYYPPI
INSERT INTO ohjelmatyyppi VALUES (null, 'Esitelmä', null);
INSERT INTO ohjelmatyyppi VALUES (null, 'Paneelikeskustelu', null);
INSERT INTO ohjelmatyyppi VALUES (null, 'Ruokailu', 'Huomioi jono');

-- TEEMA
INSERT INTO teema VALUES (null, 'Työhyvinvointi');
INSERT INTO teema VALUES (null, 'Hyvinvointi');
INSERT INTO teema VALUES (null, 'Tietotekniikka');
INSERT INTO teema VALUES (null, 'Tekoäly');
INSERT INTO teema VALUES (null, 'Ohjelmistokehitys');

-- TEHTÄVÄ
INSERT INTO tehtava VALUES (null, 'Esitelmien arvionti');
INSERT INTO tehtava VALUES (null, 'Ryhmien kasaus');
INSERT INTO tehtava VALUES (null, 'Aikataulutus');
INSERT INTO tehtava VALUES (null, 'Ilmapallojen puhaltaminen');

-- TEHTÄVÄN STATUS
INSERT INTO tehtavan_status VALUES (null, 'Ei aloitettu');
INSERT INTO tehtavan_status VALUES (null, 'Työn alla');
INSERT INTO tehtavan_status VALUES (null, 'Valmis');
INSERT INTO tehtavan_status VALUES (null, 'Ei tehdä');

-- ROOLI
INSERT INTO rooli VALUES (null, 'Presidentti');
INSERT INTO rooli VALUES (null, 'Ohjelmasihteeri');
INSERT INTO rooli VALUES (null, 'Pääsihteeri');
INSERT INTO rooli VALUES (null, 'Talousvastaava');
INSERT INTO rooli VALUES (null, 'Huvivastaava');
INSERT INTO rooli VALUES (null, 'Tiedottaja');
INSERT INTO rooli VALUES (null, 'Tieteellinen työryhmä');
INSERT INTO rooli VALUES (null, 'Arvioija');

-- HENKILÖ
INSERT INTO henkilo VALUES ( null, 'Aku', 'Ankka', '0400123123', 'aku.ankka@sposti.com', '00000', 'Ankkalinna', 'Paratiisitie 13', null);
INSERT INTO henkilo VALUES ( null, 'Teppo', 'Tulppu', '0400234234', 'teppo.tulppu@sposti.com', '00000', 'Ankkalinna', 'Paratiisitie 14', null);
INSERT INTO henkilo VALUES ( null, 'Roope', 'Ankka', '0400999777', 'roope.ankka@rikas.com', '00001', 'Ankkalinna', 'Rahasäiliökukkula 1', null);
INSERT INTO henkilo VALUES ( null, 'Risto', 'Reipas', '0409876548', 'risto.reipas@email.com', '00100', 'Helsinki', 'Urho Kekkosen katu 1', 'Suomi');
INSERT INTO henkilo VALUES ( null, 'Mikko', 'Mallikas', '0457878787', 'mikko.m@email.com', '00100', 'Helsinki', 'Mannerheimintie 30', 'Suomi');
INSERT INTO henkilo VALUES ( null, 'Joulu', 'Pukki', '020697855', 'J.pukki@korvatunturi.com', '99999', 'Korvatunturi', null, 'Suomi');
INSERT INTO henkilo VALUES ( null, 'Maija', 'Mietteliäs', '0401234567', 'maija.mietteliäs@email.com', '00180', 'Helsinki', 'Osoite 1A 12', 'Suomi');

-- KONFERENSSIN SIJANTI
INSERT INTO konf_sijainti VALUES (null, 'Messukeskus', 'Suomi', '00520', 'Helsinki', 'Messuaukio 1', 56000);
INSERT INTO konf_sijainti VALUES (null, 'Helsingin jäähalli', 'Suomi', '00250', 'Helsinki', 'Nordenskiöldinkatu 11-13', 8200);
INSERT INTO konf_sijainti VALUES (null, 'Oulun jäähalli', 'Suomi', '90130', 'Oulu', 'Teuvo Pakkalan katu 11', 6614);
INSERT INTO konf_sijainti VALUES (null, 'Helsinki-halli', 'Suomi', '00240', 'Helsinki', 'Areenakuja 1', 15500);

-- SOSIAALINEN TAPAHTUMA JOS KÄYTÖSSÄ SUOMIPARAMETRIT 
-- EI VIELÄ AJETTU
INSERT INTO testi_sos_tapahtuma VALUES (null, 'Päätösillallinen ravintola Shelter', 'Illallinen', '23.08.2024 18:00', '23.08.2024 21:00', 'Kanavaranta 7, 00160 Helsinki', null, 70.00);
-- SOSIAALINEN TAPAHTUMA JOS KÄYTÖSSÄ AMERICAN PARAMETRIT
-- EI VIELÄ AJETTU
INSERT INTO testi_sos_tapahtuma VALUES (null, 'Päätösillallinen ravintola Shelter', 'Illallinen', '23.may.2024 12:00', '12.may.2024 10:00', 'Kanavaranta 7, 00160 Helsinki', null, 70.00);

-- KONFERENSSIN HUONE
INSERT INTO konf_huone VALUES (null, 'Snellmann', '003', '1', 250, 3);
INSERT INTO konf_huone VALUES (null, 'Neuvotteluhuone', '045', '2', 25, 1);
INSERT INTO konf_huone VALUES (null, 'Neuvotteluhuone', '044', '2', 25, 1);
INSERT INTO konf_huone VALUES (null, 'Neuvotteluhuone', '042', '2', 15, 1);
INSERT INTO konf_huone VALUES (null, 'Neuvotteluhuone', '042', '2', 15, 1);
INSERT INTO konf_huone VALUES (null, 'Tapahtuma-alue', '000', '1', 4500, 2);
INSERT INTO konf_huone VALUES (null, 'Tapahtuma-alue', '000', '1', 2000, 4);

-- KONFERENSSIN TYÖNTEKIJÄ
INSERT INTO konf_tyontekija VALUES (null, 1, 1);
INSERT INTO konf_tyontekija VALUES (null, 5, 8);
INSERT INTO konf_tyontekija VALUES (null, 6, 8);

-- KONFERENSSI
INSERT INTO konferenssi VALUES ();

-- KONFERENSSIN HINTA
INSERT INTO konf_hinta VALUES ();

-- KONFERENSSIN ILMOITTAUTUMINEN
INSERT INTO konf_ilmoittautuminen VALUES ();

-- SOSIAALISEN TAPAHTUMAN ILMOITTAUTUMINEN
INSERT INTO sos_ilmoittautuminen VALUES ();

-- ESITELMÄ
INSERT INTO esitelma VALUES ();

-- ESITELMAN TEKIJÄ
INSERT INTO esitelman_tekija VALUES ();

-- ARVIOINTI
INSERT INTO arvionti VALUES ();

-- KONFERENSSIN TEHTÄVÄ
INSERT INTO konf_tehtava VALUES ();

-- KONFERENSSIN OHJELMANUMERO
INSERT INTO konf_ohjelmanumero VALUES ();

-- OHJELMAN HENKILÖ
INSERT INTO ohjelman_henkilo VALUES ();
