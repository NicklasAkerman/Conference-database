CREATE OR REPLACE TRIGGER trg_arviointi_id
BEFORE INSERT ON arviointi
FOR EACH ROW
BEGIN
    :NEW.id := arviointi_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_esitelma_id
BEFORE INSERT ON esitelma
FOR EACH ROW
BEGIN
    :NEW.id := esitelma_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_esitelman_status_id
BEFORE INSERT ON esitelman_status
FOR EACH ROW
BEGIN
    :NEW.id := esitelman_status_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_esitelman_tyyppi_id
BEFORE INSERT ON esitelman_tyyppi
FOR EACH ROW
BEGIN
    :NEW.id := esitelman_tyyppi_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_henkilo_id
BEFORE INSERT ON henkilo
FOR EACH ROW
BEGIN
    :NEW.id := henkilo_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_hinta_id
BEFORE INSERT ON konf_hinta
FOR EACH ROW
BEGIN
    :NEW.id := konf_hinta_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_huone_id
BEFORE INSERT ON konf_huone
FOR EACH ROW
BEGIN
    :NEW.id := konf_huone_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_ilmoittautuminen_id
BEFORE INSERT ON konf_ilmoittautuminen
FOR EACH ROW
BEGIN
    :NEW.id := konf_ilmoittautuminen_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_ohjelmanumero_id
BEFORE INSERT ON konf_ohjelmanumero
FOR EACH ROW
BEGIN
    :NEW.id := konf_ohjelmanumero_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_sijainti_id
BEFORE INSERT ON konf_sijainti
FOR EACH ROW
BEGIN
    :NEW.id := konf_sijainti_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_tehtava_id
BEFORE INSERT ON konf_tehtava
FOR EACH ROW
BEGIN
    :NEW.id := konf_tehtava_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konf_tyontekija_id
BEFORE INSERT ON konf_tyontekija
FOR EACH ROW
BEGIN
    :NEW.id := konf_tyontekija_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_konferenssi_id
BEFORE INSERT ON konferenssi
FOR EACH ROW
BEGIN
    :NEW.id := konferenssi_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_ohjelmatyyppi_id
BEFORE INSERT ON ohjelmatyyppi
FOR EACH ROW
BEGIN
    :NEW.id := ohjelmatyyppi_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_rooli_id
BEFORE INSERT ON rooli
FOR EACH ROW
BEGIN
    :NEW.id := rooli_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_sos_tapahtuma_id
BEFORE INSERT ON sos_tapahtuma
FOR EACH ROW
BEGIN
    :NEW.id := sos_tapahtuma_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_teema_id
BEFORE INSERT ON teema
FOR EACH ROW
BEGIN
    :NEW.id := teema_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_tehtava_id
BEFORE INSERT ON tehtava
FOR EACH ROW
BEGIN
    :NEW.id := tehtava_id.NEXTVAL;
END;
/

CREATE OR REPLACE TRIGGER trg_tehtavan_status_id
BEFORE INSERT ON tehtavan_status
FOR EACH ROW
BEGIN
    :NEW.id := tehtavan_status_id.NEXTVAL;
END;
/