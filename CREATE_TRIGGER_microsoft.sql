-- ei samannimisiä konferensseja -trgiger --
CREATE OR REPLACE TRIGGER trg_check_konferenssi
BEFORE INSERT OR UPDATE ON KONFERENSSI
FOR EACH ROW

DECLARE
    No_duplicates   EXCEPTION;
    Not_in_past     EXCEPTION;


BEGIN
    -- check for duplicates--
    IF (:OLD.konf_nimi = :NEW.konf_nimi)
    THEN RAISE No_duplicates;
    END IF;

    -- check date --
    IF (:NEW.alotus_pvm < CURRENT_DATE)
    THEN RAISE Not_in_past;
    END IF;

EXCEPTION
WHEN No_duplicates
    THEN RAISE_APPLICATION_ERROR ('Konferenssin nimi on jo olemassa');

WHEN Not_in_past
    THEN RAISE_APPLICATION_ERROR ('Konferenssin täytyy olla tulevaisuudessa');

END;