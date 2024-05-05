-- ei samannimisiä konferensseja -trgiger --
CREATE TRIGGER trg_check_konferenssi ON KONFERENSSI AFTER INSERT,
UPDATE AS BEGIN -- check for duplicates--
IF EXISTS (
    SELECT
        1
    FROM
        KONFERENSSI
    WHERE
        konf_nimi = (
            SELECT
                konf_nimi
            FROM
                inserted
        )
        AND Id != (
            SELECT
                Id
            FROM
                inserted
        )
) BEGIN RAISERROR ('Konferenssin nimi on jo olemassa', 16, 1);

ROLLBACK TRANSACTION;

RETURN;

END IF EXISTS (
    SELECT
        1
    FROM
        inserted
    WHERE
        aloitus_pvm < GETDATE ()
) BEGIN RAISERROR ('Konferenssin täytyy olla tulevaisuudessa', 16, 1);

ROLLBACK TRANSACTION;

RETURN;

END;

END;