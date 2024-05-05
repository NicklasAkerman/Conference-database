-- ILMOITTAUTUNEIDEN MÄÄRÄ
CREATE VIEW Ilmoittautuneiden_maara AS 
SELECT K.konf_nimi, count (*)  'Ilmoittautujamäärä' 
FROM Konf_ilmoittautuminen KI JOIN konferenssi K ON K.id = KI.konferenssi_id 
GROUP BY konf_nimi;
SELECT * FROM Ilmoittautuneiden_maara