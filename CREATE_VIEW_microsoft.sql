-- ILMOITTAUTUNEIDEN MÄÄRÄ
CREATE VIEW Ilmoittautuneiden_maara AS 
SELECT K.konf_nimi, count (*)  'Ilmoittautujamäärä' 
FROM Konf_ilmoittautuminen KI JOIN konferenssi K ON K.id = KI.konferenssi_id 
GROUP BY konf_nimi;
SELECT * FROM Ilmoittautuneiden_maara;

-- ILMOTTAUNEIDEN MÄÄRÄ KONFERENSSIN NIMEN PERUSTEELLA HAKIEN
CREATE VIEW Ilmoittautuneiden_maara_nimella AS 
SELECT K.konf_nimi, count (*)  'Ilmoittautujamäärä' 
FROM Konf_ilmoittautuminen KI JOIN konferenssi K ON K.id = KI.konferenssi_id 
where konf_nimi LIKE 'Sijoita %'
GROUP BY konf_nimi;
SELECT * FROM Ilmoittautuneiden_maara_nimella;

-- ARVIOIJAN ARVIONTILOMAKE


-- ESITELMIEN HYVÄKSYMISKIRJEET



-- ESITELMÄEHDOTUKSET TEEMOITTAIN
CREATE VIEW konferenssin_esitelmien_teemat_konf_id_1
Konferenssitaulun konf_nimi, teema taulun teeman nimi, esitelmä taulusta esitelmän aihe




-- KONFERENSSI OHJELMA
Konferenssi taulun Konf_nimi
Konf_ohjelmanumero koko taulun
CREATE VIEW konferenssin_ohjelma_konf_id_1 AS

-- PROCEEDINGS


--VAHVISTUSKIRJEET ILMOITTAUTUMISESTA


-- OSALLISTUJALISTAN KOONTI

