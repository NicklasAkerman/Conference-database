-- ILMOITTAUTUNEIDEN MÄÄRÄ
CREATE VIEW Ilmoittautuneiden_maara_kaikki_konf AS 
SELECT K.konf_nimi AS 'Konferenssi', count (*)  'Ilmoittautujamäärä' 
FROM Konf_ilmoittautuminen KI JOIN konferenssi K ON K.id = KI.konferenssi_id 
WHERE KI.konf_perumis_pvm IS NULL
GROUP BY konf_nimi;


-- ILMOTTAUNEIDEN MÄÄRÄ KONFERENSSIN NIMEN PERUSTEELLA HAKIEN
CREATE VIEW Ilmoittautuneiden_maara AS 
SELECT K.konf_nimi AS 'Konferenssi', count (*)  'Ilmoittautujamäärä' 
FROM Konf_ilmoittautuminen KI JOIN konferenssi K ON K.id = KI.konferenssi_id 
where K.id = 1 AND KI.konf_perumis_pvm IS NULL
GROUP BY konf_nimi;


-- ARVIOIJAN ARVIONTILOMAKE
CREATE VIEW Arviointilomake AS
SELECT H.sukunimi AS 'Arvioijan sukunimi',
	H.etunimi AS 'Arvioijan etunimi', 
	E.esitelman_nimi AS 'Esitelmän nimi', 
	T.teema AS 'Esitelmän teema',
	ET.esitelman_tyyppi AS 'Esitelmäsuositus', 
	A.kommentti AS 'Kommentti',
	E.linkki AS 'Linkki esitelmään'
FROM Arviointi A
JOIN esitelma E ON E.id = A.esitelma_id
JOIN teema T ON T.id = E.teema_id
JOIN esitelman_tyyppi ET ON ET.id = A.esitelman_tyyppi_id
JOIN Konf_tyontekija kt ON a.konf_tyontekija_id = kt.id
JOIN henkilo H on kt.henkilo_id = h.id
WHERE e.konferenssi_id=1;


-- ESITELMIEN HYVÄKSYMISKIRJEET
CREATE VIEW Konferenssin_hyväksymiskirjeet AS
SELECT 
    E.id AS 'Esitelmän id',
    E.esitelman_nimi AS 'Esitelmän nimi',
    H.etunimi AS 'Etunimi', 
    H.sukunimi AS 'Sukunimi', 
    H.puhnro AS 'Puhelin',
    H.postinumero AS 'Postinumero', 
    H.postitoimipaikka AS 'Postitoimipaikka', 
    H.katuosoite AS 'Katuosoite', 
    E.email AS 'Esitelmän lähettäjän sähköpostiosoite',
    H.maa AS 'Maa', 
    K.konf_nimi AS 'Konferenssi',
    K.id as 'Konferenssin id',
    ES.esitelman_status AS 'Esitelmän tila',
	KO.aloitus_aika AS 'Aika'
FROM esitelma E
JOIN esitelman_tekija ET ON ET.esitelma_id = E.id
JOIN esitelman_status ES ON ES.id = E.esitelman_status_id
JOIN henkilo H ON H.id = ET.henkilo_id 
JOIN konferenssi K ON E.konferenssi_id = K.id
JOIN konf_ohjelmanumero KO ON KO.esitelma_id = E.id
WHERE 
    ET.jarjestysnro = 1 
    AND ES.esitelman_status = 'Hyväksytty'
    AND K.id = 1;


-- ESITELMÄEHDOTUKSET TEEMOITTAIN
CREATE VIEW Konferenssin_esitelmaehdotukset_teemoittain AS
SELECT ROW_NUMBER() OVER (ORDER BY T.teema ASC) AS 'Rivinumero',
        K.konf_nimi AS 'Konferenssin nimi', 
		T.teema AS 'Esitelmän teema',
		E.esitelman_nimi AS 'Esitelmän nimi'
FROM Esitelma E
JOIN konferenssi K ON K.id = E.konferenssi_id
JOIN teema T ON T.id = E.teema_id
WHERE K.id = 1;


-- KONFERENSSIOHJELMA
CREATE VIEW Konferenssiohjelma AS 
SELECT ROW_NUMBER() OVER (ORDER BY KO.aloitus_aika ASC) AS 'Rivinumero',
		K.konf_nimi AS 'Konferenssi',
		KO.pvm AS 'PVM',
		KO.aloitus_aika AS 'Alkaa',
		KO.lopetus_aika AS 'Loppuu',
		E.esitelman_nimi AS 'Esitelmän nimi',
		KH.huonenumero AS 'Huonenumero',
		H.sukunimi AS 'Esitelmöijän sukunimi',
		H.etunimi AS 'Esitelmöijän etunimi'
FROM Konf_ohjelmanumero KO 
JOIN konferenssi K ON K.id = KO.konferenssi_id
JOIN konf_huone KH ON KH.id = KO.konf_huone_id
JOIN esitelma E ON E.id = KO.esitelma_id 
JOIN ohjelman_henkilo OH ON OH.konf_ohjelmanumero_id = KO.id
JOIN henkilo H ON OH.henkilo_id = H.id
WHERE K.id = 1;


-- PROCEEDINGS
CREATE VIEW Proceedings_tuloste AS
SELECT K.konf_nimi AS 'Konferenssi',
        K.aloitus_pvm AS 'Alkoi',
        K.lopetus_pvm AS 'Loppui',
        K.konf_tiivistelma AS 'Konferenssin tiivistelmä',
        E.esitelman_nimi AS 'Esitelmä',
        H.sukunimi AS 'Esitelmän tekijän sukunimi',
        H.etunimi AS 'Esitelmän tekijän etunimi',
        E.tiivistelma AS 'Esitelmän tiivistelmä'
FROM Esitelma E
JOIN Konferenssi K ON K.id = E.konferenssi_id
JOIN Esitelman_tekija ET ON ET.esitelma_id = E.id
JOIN Henkilo H ON H.id = ET.henkilo_id
WHERE K.id = 1 AND E.esitelman_status_id = 3;


--VAHVISTUSKIRJEET ILMOITTAUTUMISESTA
CREATE VIEW Vahvistuskirje_maksaneille AS
SELECT H.sukunimi AS 'Sukunimi',
    H.etunimi AS 'Etunimi',
    H.email AS 'email'
FROM Konf_ilmoittautuminen KI 
JOIN henkilo H ON H.id = KI.henkilo_id
JOIN konferenssi K ON K.id = KI.konferenssi_id
WHERE K.id = 1
AND KI.onko_maksettu = 1;


-- OSALLISTUMISTODISTUKET
CREATE VIEW Konferenssin_osallistumistodistus AS
SELECT H.sukunimi AS 'Sukunimi',
    H.etunimi AS 'Etunimi',
    H.email AS 'email'
FROM Konf_ilmoittautuminen KI 
JOIN henkilo H ON H.id = KI.henkilo_id
JOIN konferenssi K ON K.id = KI.konferenssi_id
WHERE K.id = 4 AND KI.onko_osallistunut = 1;


-- NIMILISTA KONFERENSSIIN ILMOITTAUTUNEILLE
CREATE VIEW Konferenssiin_ilmoittautuneet AS
SELECT H.sukunimi AS 'Sukunimi',
    H.etunimi AS 'Etunimi'
FROM Konf_ilmoittautuminen KI 
JOIN henkilo H ON H.id = KI.henkilo_id
JOIN konferenssi K ON K.id = KI.konferenssi_id
WHERE K.id = 1;
