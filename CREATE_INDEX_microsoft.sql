CREATE INDEX idx_konf_nimi ON Konferenssi (konf_nimi, id);
CREATE INDEX idx_hlo_nimi ON Henkilo (sukunimi, etunimi, id);
CREATE INDEX idx_konf_ilmo_id ON Konf_ilmoittautuminen (konferenssi_id, id);



konf_ohjelmanumero
konferenssi_id + id

konf_huone
tilan_nimi + id

esitelma
esitelman_nimi + id

ohjelmatyyppi
ohjelmatyyppi + id

