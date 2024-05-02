-- ESITELMÄN TYYPPI
INSERT INTO esitelman_tyyppi VALUES ('Suullinen'), ('Posteri');

-- ESITELMÄN STATUS
INSERT INTO esitelman_status VALUES ('Vastaanotettu'),('Arvioinnissa'),('Hyväksytty'),('Peruttu'),('Hylätty'),('Vaatii muutoksia'):

-- OHJELMATYYPPI
INSERT INTO ohjelmatyyppi VALUES ('Esitelmä', null);
INSERT INTO ohjelmatyyppi VALUES ('Paneelikeskustelu', null);
INSERT INTO ohjelmatyyppi VALUES ('Ruokailu', 'Huomioi jono');

-- TEEMA
INSERT INTO teema VALUES ('Työhyvinvointi'), ('Hyvinvointi'),('Tietotekniikka'),('Tekoäly'),('Ohjelmistokehitys');

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
INSERT INTO testi_sos_tapahtuma VALUES (null, 'Päätösillallinen ravintola Shelter', 'Illallinen', '23.08.2024 18:00', '23.08.2024 21:00', 'Kanavaranta 7, 00160 Helsinki', null, 70.00);

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
