CREATE INDEX idx_konf_nimi ON Konferenssi (konf_nimi, id);
CREATE INDEX idx_hlo_nimi ON Henkilo (sukunimi, etunimi, id);
CREATE INDEX idx_konf_ilmo_id ON Konf_ilmoittautuminen (konferenssi_id, id);

