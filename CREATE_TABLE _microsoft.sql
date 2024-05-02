-- TAULUJEN LUONTI
CREATE TABLE arviointi (
    id                  INTEGER NOT NULL,
    arviointi_pvm       DATE NOT NULL,
    kommentti           VARCHAR2(1000 CHAR),
    konf_tyontekija_id  INTEGER NOT NULL,
    esitelma_id         INTEGER NOT NULL,
    esitelman_tyyppi_id INTEGER NOT NULL,
    esitelman_status_id INTEGER
);

ALTER TABLE arviointi ADD CONSTRAINT arviointi_pk PRIMARY KEY ( id );

CREATE TABLE esitelma (
    id                    INTEGER NOT NULL,
    linkki                VARCHAR2(200 CHAR) NOT NULL,
    vastaanotto_pvm       DATE NOT NULL,
    esitys_ajankohta      DATE,
    esitelman_nimi        VARCHAR2(100 CHAR) NOT NULL,
    tiivistelma           VARCHAR2(1000 CHAR) NOT NULL,
    email                 VARCHAR2(100 CHAR) NOT NULL,
    konferenssi_id        INTEGER NOT NULL,
    teema_id              INTEGER NOT NULL,
    esitelman_tyyppi_id   INTEGER,
    esitelman_status_id   INTEGER NOT NULL,
    konf_ohjelmanumero_id INTEGER
);

CREATE UNIQUE INDEX esitelma__idx ON
    esitelma (
        konf_ohjelmanumero_id
    ASC );

ALTER TABLE esitelma ADD CONSTRAINT esitelma_pk PRIMARY KEY ( id );

CREATE TABLE esitelman_status (
    id               INTEGER NOT NULL,
    esitelman_status VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE esitelman_status ADD CONSTRAINT esitelman_status_pk PRIMARY KEY ( id );

CREATE TABLE esitelman_tekija (
    jarjestysnro     INTEGER NOT NULL,
    kotiorganisaatio VARCHAR2(100),
    esitelma_id      INTEGER NOT NULL,
    henkilo_id       INTEGER NOT NULL
);

ALTER TABLE esitelman_tekija ADD CONSTRAINT esitelman_tekija_pk PRIMARY KEY ( esitelma_id, henkilo_id );

CREATE TABLE esitelman_tyyppi (
    id               INTEGER NOT NULL,
    esitelman_tyyppi VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE esitelman_tyyppi ADD CONSTRAINT esitelman_tyyppi_pk PRIMARY KEY ( id );

CREATE TABLE henkilo (
    id               INTEGER NOT NULL,
    etunimi          VARCHAR2(50 CHAR) NOT NULL,
    sukunimi         VARCHAR2(100 CHAR) NOT NULL,
    puhnro           VARCHAR2(20 CHAR),
    email            VARCHAR2(100 CHAR) NOT NULL,
    postinumero      VARCHAR2(5 CHAR),
    postitoimipaikka VARCHAR2(100 CHAR),
    katuosoite       VARCHAR2(100 CHAR),
    maa              VARCHAR2(30 CHAR)
);

ALTER TABLE henkilo ADD CONSTRAINT henkilo_pk PRIMARY KEY ( id );

CREATE TABLE konf_hinta (
    id             INTEGER NOT NULL,
    hinta          NUMBER NOT NULL,
    konferenssi_id INTEGER NOT NULL
);

ALTER TABLE konf_hinta ADD CONSTRAINT konf_hinta_pk PRIMARY KEY ( id );

CREATE TABLE konf_huone (
    id                    INTEGER NOT NULL,
    tilan_nimi            VARCHAR2(50 CHAR),
    huonenro              VARCHAR2(3 CHAR) NOT NULL,
    kerros                VARCHAR2(2 CHAR) NOT NULL,
    huoneen_max_hlo_maara INTEGER,
    konf_sijainti_id      INTEGER NOT NULL
);

ALTER TABLE konf_huone ADD CONSTRAINT konf_huone_pk PRIMARY KEY ( id );

CREATE TABLE konf_ilmoittautuminen (
    id                 INTEGER NOT NULL,
    ilmoittautumis_pvm DATE NOT NULL,
    onko_maksettu      CHAR(1),
    onko_osallistunut  CHAR(1),
    onko_esitelmoija   CHAR(1),
    onko_kutsuttu      CHAR(1),
    onko_tyontekija    CHAR(1),
    konf_perumis_pvm   DATE,
    konf_hinta_id      INTEGER NOT NULL,
    henkilo_id         INTEGER NOT NULL,
    konferenssi_id     INTEGER NOT NULL
);

ALTER TABLE konf_ilmoittautuminen ADD CONSTRAINT konf_ilmoittautuminen_pk PRIMARY KEY ( id );

CREATE TABLE konf_ohjelmanumero (
    id               INTEGER NOT NULL,
    pvm              DATE,
    aloitus_aika     DATE,
    lopetus_aika     DATE,
    lisainfo         VARCHAR2(200 CHAR),
    konferenssi_id   INTEGER NOT NULL,
    konf_huone_id    INTEGER,
    esitelma_id      INTEGER,
    ohjelmatyyppi_id INTEGER NOT NULL
);

CREATE UNIQUE INDEX konf_ohjelmanumero__idx ON
    konf_ohjelmanumero (
        esitelma_id
    ASC );

ALTER TABLE konf_ohjelmanumero ADD CONSTRAINT konf_ohjelmanumero_pk PRIMARY KEY ( id );

CREATE TABLE konf_sijainti (
    id               INTEGER NOT NULL,
    paikan_nimi      VARCHAR2(50 CHAR) NOT NULL,
    maa              VARCHAR2(30 CHAR) NOT NULL,
    postinumero      VARCHAR2(5 CHAR) NOT NULL,
    postitoimipaikka VARCHAR2(100 CHAR) NOT NULL,
    katuosoite       VARCHAR2(200 CHAR) NOT NULL,
    max_hlo_maara    INTEGER
);

ALTER TABLE konf_sijainti ADD CONSTRAINT konf_sijainti_pk PRIMARY KEY ( id );

CREATE TABLE konf_tehtava (
    id                 INTEGER NOT NULL,
    tehtavan_deadline  DATE,
    konf_tyontekija_id INTEGER,
    konferenssi_id     INTEGER NOT NULL,
    tehtavan_status_id INTEGER NOT NULL,
    tehtava_id         INTEGER NOT NULL
);

ALTER TABLE konf_tehtava ADD CONSTRAINT konf_tehtava_pk PRIMARY KEY ( id );

CREATE TABLE konf_tyontekija (
    id         INTEGER NOT NULL,
    henkilo_id INTEGER NOT NULL,
    rooli_id   INTEGER NOT NULL
);

ALTER TABLE konf_tyontekija ADD CONSTRAINT konf_tyontekija_pk PRIMARY KEY ( id );

CREATE TABLE konferenssi (
    id               INTEGER NOT NULL,
    konf_nimi        VARCHAR2(200) NOT NULL,
    aloitus_pvm      DATE,
    lopetus_pvm      DATE,
    konf_tiivistelma VARCHAR2(1000 CHAR),
    konf_sijainti_id INTEGER,
    teema_id         INTEGER NOT NULL
);

ALTER TABLE konferenssi ADD CONSTRAINT konferenssi_pk PRIMARY KEY ( id );

CREATE TABLE ohjelman_henkilo (
    konf_ohjelmanumero_id INTEGER NOT NULL,
    henkilo_id            INTEGER NOT NULL
);

ALTER TABLE ohjelman_henkilo ADD CONSTRAINT ohjelman_henkilo_pk PRIMARY KEY ( konf_ohjelmanumero_id, henkilo_id );

CREATE TABLE ohjelmatyyppi (
    id            INTEGER NOT NULL,
    ohjelmatyyppi VARCHAR2(50 CHAR) NOT NULL,
    lisainfo      VARCHAR2(200 CHAR)
);

ALTER TABLE ohjelmatyyppi ADD CONSTRAINT ohjelmatyyppi_pk PRIMARY KEY ( id );

CREATE TABLE rooli (
    id    INTEGER NOT NULL,
    rooli VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE rooli ADD CONSTRAINT rooli_pk PRIMARY KEY ( id );

CREATE TABLE sos_ilmoittautuminen (
    ilmoittautumis_pvm DATE NOT NULL,
    sos_perumis_pvm    DATE,
    onko_maksettu      CHAR(1),
    onko_kutsuttu      CHAR(1),
    hlo_maara          INTEGER NOT NULL,
    henkilo_id         INTEGER NOT NULL,
    konferenssi_id     INTEGER NOT NULL,
    sos_tapahtuma_id   INTEGER NOT NULL
);

ALTER TABLE sos_ilmoittautuminen ADD CONSTRAINT sos_ilmoittautuminen_pk PRIMARY KEY ( henkilo_id, konferenssi_id, sos_tapahtuma_id );

CREATE TABLE sos_tapahtuma (
    id                 INTEGER NOT NULL,
    sos_tapahtuma_nimi VARCHAR2(100 CHAR) NOT NULL,
    tapahtuma_tyyppi   VARCHAR2(50 CHAR) NOT NULL,
    aloitus_aika       TIMESTAMP NOT NULL,
    lopetus_aika       TIMESTAMP NOT NULL,
    paikka             VARCHAR2(100 CHAR) NOT NULL,
    info               VARCHAR2(1000 CHAR),
    hinta              NUMBER NOT NULL
);

ALTER TABLE sos_tapahtuma ADD CONSTRAINT sos_tapahtuma_pk PRIMARY KEY ( id );

CREATE TABLE teema (
    id    INTEGER NOT NULL,
    teema VARCHAR2(200 CHAR) NOT NULL
);

ALTER TABLE teema ADD CONSTRAINT teema_pk PRIMARY KEY ( id );

CREATE TABLE tehtava (
    id              INTEGER NOT NULL,
    tehtavan_kuvaus VARCHAR2(300 CHAR) NOT NULL
);

ALTER TABLE tehtava ADD CONSTRAINT tehtava_pk PRIMARY KEY ( id );

CREATE TABLE tehtavan_status (
    id              INTEGER NOT NULL,
    tehtavan_status VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE tehtavan_status ADD CONSTRAINT tehtavan_status_pk PRIMARY KEY ( id );

-- VIITEAVAIMET
ALTER TABLE arviointi
    ADD CONSTRAINT arviointi_esitelma_fk FOREIGN KEY ( esitelma_id )
        REFERENCES esitelma ( id );

ALTER TABLE arviointi
    ADD CONSTRAINT arviointi_esitelman_status_fk FOREIGN KEY ( esitelman_status_id )
        REFERENCES esitelman_status ( id );

ALTER TABLE arviointi
    ADD CONSTRAINT arviointi_esitelman_tyyppi_fk FOREIGN KEY ( esitelman_tyyppi_id )
        REFERENCES esitelman_tyyppi ( id );

ALTER TABLE arviointi
    ADD CONSTRAINT arviointi_konf_tyontekija_fk FOREIGN KEY ( konf_tyontekija_id )
        REFERENCES konf_tyontekija ( id );

ALTER TABLE esitelma
    ADD CONSTRAINT esitelma_esitelman_status_fk FOREIGN KEY ( esitelman_status_id )
        REFERENCES esitelman_status ( id );

ALTER TABLE esitelma
    ADD CONSTRAINT esitelma_esitelman_tyyppi_fk FOREIGN KEY ( esitelman_tyyppi_id )
        REFERENCES esitelman_tyyppi ( id );

ALTER TABLE esitelma
    ADD CONSTRAINT esitelma_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE esitelma
    ADD CONSTRAINT esitelma_teema_fk FOREIGN KEY ( teema_id )
        REFERENCES teema ( id );

ALTER TABLE esitelman_tekija
    ADD CONSTRAINT esitelman_tekija_esitelma_fk FOREIGN KEY ( esitelma_id )
        REFERENCES esitelma ( id );

ALTER TABLE esitelman_tekija
    ADD CONSTRAINT esitelman_tekija_henkilo_fk FOREIGN KEY ( henkilo_id )
        REFERENCES henkilo ( id );

ALTER TABLE konf_hinta
    ADD CONSTRAINT konf_hinta_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE konf_huone
    ADD CONSTRAINT konf_huone_konf_siji_fk FOREIGN KEY ( konf_sijainti_id )
        REFERENCES konf_sijainti ( id );

ALTER TABLE konf_ilmoittautuminen
    ADD CONSTRAINT konf_ilmo_henkilo_fk FOREIGN KEY ( henkilo_id )
        REFERENCES henkilo ( id );

ALTER TABLE konf_ilmoittautuminen
    ADD CONSTRAINT konf_ilmo_konf_hinta_fk FOREIGN KEY ( konf_hinta_id )
        REFERENCES konf_hinta ( id );

ALTER TABLE konf_ilmoittautuminen
    ADD CONSTRAINT konf_ilmo_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE konf_ohjelmanumero
    ADD CONSTRAINT konf_ohjelmanro_konf_huone_fk FOREIGN KEY ( konf_huone_id )
        REFERENCES konf_huone ( id );

ALTER TABLE konf_ohjelmanumero
    ADD CONSTRAINT konf_ohjelmanro_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE konf_ohjelmanumero
    ADD CONSTRAINT konf_ohjelmanro_ohj_tyyppi_fk FOREIGN KEY ( ohjelmatyyppi_id )
        REFERENCES ohjelmatyyppi ( id );

ALTER TABLE konf_tehtava
    ADD CONSTRAINT konf_tehtava_konf_tt_fk FOREIGN KEY ( konf_tyontekija_id )
        REFERENCES konf_tyontekija ( id );

ALTER TABLE konf_tehtava
    ADD CONSTRAINT konf_tehtava_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE konf_tehtava
    ADD CONSTRAINT konf_tehtava_teht_status_fk FOREIGN KEY ( tehtavan_status_id )
        REFERENCES tehtavan_status ( id );

ALTER TABLE konf_tehtava
    ADD CONSTRAINT konf_tehtava_tehtava_fk FOREIGN KEY ( tehtava_id )
        REFERENCES tehtava ( id );

ALTER TABLE konf_tyontekija
    ADD CONSTRAINT konf_tyontekija_henkilo_fk FOREIGN KEY ( henkilo_id )
        REFERENCES henkilo ( id );

ALTER TABLE konf_tyontekija
    ADD CONSTRAINT konf_tyontekija_rooli_fk FOREIGN KEY ( rooli_id )
        REFERENCES rooli ( id );

ALTER TABLE konferenssi
    ADD CONSTRAINT konferenssi_konf_sijainti_fk FOREIGN KEY ( konf_sijainti_id )
        REFERENCES konf_sijainti ( id );

ALTER TABLE konferenssi
    ADD CONSTRAINT konferenssi_teema_fk FOREIGN KEY ( teema_id )
        REFERENCES teema ( id );

ALTER TABLE ohjelman_henkilo
    ADD CONSTRAINT ohjelman_henkilo_henkilo_fk FOREIGN KEY ( henkilo_id )
        REFERENCES henkilo ( id );

ALTER TABLE ohjelman_henkilo
    ADD CONSTRAINT ohjelman_hlo_konf_ohj_nro_fk FOREIGN KEY ( konf_ohjelmanumero_id )
        REFERENCES konf_ohjelmanumero ( id );

ALTER TABLE sos_ilmoittautuminen
    ADD CONSTRAINT sos_ilmo_henkilo_fk FOREIGN KEY ( henkilo_id )
        REFERENCES henkilo ( id );

ALTER TABLE sos_ilmoittautuminen
    ADD CONSTRAINT sos_ilmo_konferenssi_fk FOREIGN KEY ( konferenssi_id )
        REFERENCES konferenssi ( id );

ALTER TABLE sos_ilmoittautuminen
    ADD CONSTRAINT sos_ilmo_sos_tapahtuma_fk FOREIGN KEY ( sos_tapahtuma_id )
        REFERENCES sos_tapahtuma ( id );