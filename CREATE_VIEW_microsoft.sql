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




-- ARVIOIJAN ARVIONTILOMAKE ------> KESKEN!!!! Pura konf_tyontekija_id nimiksi... = arvioinnin tekija

CREATE VIEW Arviointilomke AS

SELECT  A.konf_tyontekija_id, E.esitelman_nimi, T.id as teema, ET.esitelman_tyyppi, A.kommentti
FROM Arviointi A
JOIN esitelma E ON E.id = A.esitelma_id
JOIN teema T ON T.id = E.teema_id
JOIN esitelman_tyyppi ET ON ET.id = A.esitelman_tyyppi_id





-- ESITELMIEN HYVÄKSYMISKIRJEET
CREATE VIEW Konferenssin_hyväksymiskirjeet AS
SELECT 
    esitelma.id AS 'Esitelmän id',
    esitelma.esitelman_nimi AS 'Esitelmän nimi',
    henkilo.etunimi AS 'Etunimi', 
    henkilo.sukunimi AS 'Sukunimi', 
    henkilo.puhnro AS 'Puhelin',
    henkilo.postinumero AS 'Postinumero', 
    henkilo.postitoimipaikka AS 'Postitoimipaikka', 
    henkilo.katuosoite AS 'Katuosoite', 
    esitelma.email AS 'Esitelmän lähettäjän sähköpostiosoite',
    henkilo.maa AS 'Maa', 
    konferenssi.konf_nimi AS 'Konferenssi',
    konferenssi.id as 'Konferenssin id',
    esitelman_status.esitelman_status AS 'Esitelmän tila',
	konf_ohjelmanumero.aloitus_aika AS 'Aika'
FROM esitelma
JOIN esitelman_tekija ON esitelman_tekija.esitelma_id = esitelma.id
JOIN esitelman_status ON esitelman_status.id = esitelma.esitelman_status_id
JOIN henkilo ON henkilo.id = esitelman_tekija.henkilo_id 
JOIN konferenssi ON esitelma.konferenssi_id = konferenssi.id
JOIN konf_ohjelmanumero ON konf_ohjelmanumero.esitelma_id = esitelma.id
WHERE 
    esitelman_tekija.jarjestysnro = 1 
    AND esitelman_status.esitelman_status = 'Hyväksytty'
    AND konferenssi.id = 1;


-- ESITELMÄEHDOTUKSET TEEMOITTAIN    ----->
SELECT ROW_NUMBER() OVER (ORDER BY T.teema ASC) AS 'Rivinumero',
        K.konf_nimi AS 'Konferenssin nimi', 
		T.teema AS 'Esitelmän teema',
		E.esitelman_nimi AS 'Esitelmän nimi'
FROM Esitelma E
JOIN konferenssi K ON K.id = E.konferenssi_id
JOIN teema T ON T.id = E.teema_id
WHERE K.id = 1;



-- KONFERENSSIOHJELMA    -----> saisiko grouppausta jottei tarvi rivinumeroa? oder + view ei voi tehdä
CREATE VIEW Konferenssiohjelma AS 
SELECT ROW_NUMBER() OVER (ORDER BY KO.aloitus_aika ASC) AS rivi_numero,
		K.konf_nimi, KO.pvm, KO.aloitus_aika, KO.lopetus_aika, 
		E.esitelman_nimi, KH.huonenro
FROM Konf_ohjelmanumero KO 
JOIN konferenssi K ON K.id = KO.konferenssi_id
JOIN konf_huone KH ON KH.id = KO.konf_huone_id
JOIN esitelma E ON E.id = KO.esitelma_id 
WHERE K.konf_nimi LIKE 'Sijoita %';

SELECT * FROM Konferenssiohjelma;


!!!!!!!!!!!!!!!--- LISÄÄMÄLLÄ esittelijän NIMEN HAKUTULOKSEEN ---> en saa samaa lopputulosta??

SELECT K.konf_nimi, KO.pvm, KO.aloitus_aika, KO.lopetus_aika, 
        E.esitelman_nimi, O.ohjelmatyyppi, KH.huonenro, H.sukunimi, H.etunimi
FROM Konf_ohjelmanumero KO 
JOIN konferenssi K ON K.id = KO.konferenssi_id
JOIN konf_huone KH ON KH.id = KO.konf_huone_id
JOIN esitelma E ON E.id = KO.esitelma_id
JOIN esitelman_tekija ET ON ET.esitelma_id = E.id
JOIN ohjelmatyyppi O ON O.id = KO.ohjelmatyyppi_id 
JOIN henkilo H ON H.id = ET.henkilo_id                            
WHERE K.konf_nimi LIKE 'Sijoita %'
ORDER BY KO.aloitus_aika asc;






-- PROCEEDINGS






--VAHVISTUSKIRJEET ILMOITTAUTUMISESTA
CREATE VIEW Vahvistuskirje_maksaneille AS
SELECT H.sukunimi, H.etunimi, H.email   ---  TARVIIKO OLLA MYÖS MAKSETTU-SARAKETTA?---
FROM Konf_ilmoittautuminen KI 
JOIN henkilo H ON H.id = KI.henkilo_id
JOIN konferenssi K ON K.id = KI.konferenssi_id
WHERE K.konf_nimi LIKE 'Sijoita %'
AND KI.onko_maksettu = 1;

SELECT * FROM Vahvistuskirje_maksaneille;


-- OSALLISTUJALISTAN KOONTI
CREATE VIEW Konferenssin_osallistujalista AS
SELECT H.sukunimi, H.etunimi, H.email
FROM Konf_ilmoittautuminen KI 
JOIN henkilo H ON H.id = KI.henkilo_id
JOIN konferenssi K ON K.id = KI.konferenssi_id
WHERE K.konf_nimi LIKE 'Sijoita %';

SELECT * FROM Konferenssin_osallistujalista;