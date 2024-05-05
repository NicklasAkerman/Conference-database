-- TAULUJEN LUONTI
CREATE TABLE arviointi (
    id                  INTEGER NOT NULL identity (1,1) primary key,
    arviointi_pvm       DATE NOT NULL,
    kommentti           VARCHAR(1000),
    konf_tyontekija_id  INTEGER NOT NULL,
    esitelma_id         INTEGER NOT NULL,
    esitelman_tyyppi_id INTEGER NOT NULL,
    esitelman_status_id INTEGER
);

CREATE TABLE esitelma (
    id                    INTEGER NOT NULL identity (1,1) primary key,
    linkki                VARCHAR(200) NOT NULL,
    vastaanotto_pvm       DATE NOT NULL,
    esitys_ajankohta      DATETIME,
    esitelman_nimi        VARCHAR(100) NOT NULL,
    tiivistelma           VARCHAR(1000) NOT NULL,
    email                 VARCHAR(100) NOT NULL,
    konferenssi_id        INTEGER NOT NULL,
    teema_id              INTEGER NOT NULL,
    esitelman_tyyppi_id   INTEGER,
    esitelman_status_id   INTEGER NOT NULL,
    konf_ohjelmanumero_id INTEGER
);

CREATE TABLE esitelman_status (
    id               INTEGER NOT NULL identity (1,1) primary key,
    esitelman_status VARCHAR(50) NOT NULL
);

CREATE TABLE esitelman_tekija (
    jarjestysnro     INTEGER NOT NULL,
    kotiorganisaatio VARCHAR(100),
    esitelma_id      INTEGER NOT NULL,
    henkilo_id       INTEGER NOT NULL,
    PRIMARY KEY (esitelma_id, henkilo_id)
);

CREATE TABLE esitelman_tyyppi (
    id               INTEGER NOT NULL identity (1,1) primary key,
    esitelman_tyyppi VARCHAR(30) NOT NULL
);

CREATE TABLE henkilo (
    id               INTEGER NOT NULL identity (1,1) primary key,
    etunimi          VARCHAR(50) NOT NULL,
    sukunimi         VARCHAR(100) NOT NULL,
    puhnro           VARCHAR(20),
    email            VARCHAR(100) NOT NULL,
    postinumero      VARCHAR(10),
    postitoimipaikka VARCHAR(100),
    katuosoite       VARCHAR(100),
    maa              VARCHAR(30)
);


CREATE TABLE konf_hinta (
    id             INTEGER NOT NULL identity (1,1) primary key,
    hinta          FLOAT NOT NULL,
    konferenssi_id INTEGER NOT NULL
);

CREATE TABLE konf_huone (
    id                    INTEGER NOT NULL identity (1,1) primary key,
    tilan_nimi            VARCHAR(50),
    huonenumero           VARCHAR(3) NOT NULL,
    kerros                VARCHAR(2) NOT NULL,
    huoneen_max_hlo_maara INTEGER,
    konf_sijainti_id      INTEGER NOT NULL
);

CREATE TABLE konf_ilmoittautuminen (
    id                 INTEGER NOT NULL identity (1,1) primary key,
    ilmoittautumis_pvm DATE NOT NULL,
    onko_maksettu      BIT,
    onko_osallistunut  BIT,
    onko_esitelmoija   BIT,
    onko_kutsuttu      BIT,
    onko_tyontekija    BIT,
    konf_perumis_pvm   DATE,
    konf_hinta_id      INTEGER NOT NULL,
    henkilo_id         INTEGER NOT NULL,
    konferenssi_id     INTEGER NOT NULL
);


CREATE TABLE konf_ohjelmanumero (
    id               INTEGER NOT NULL identity (1,1) primary key,
    pvm              DATE,
    aloitus_aika     DATETIME,
    lopetus_aika     DATETIME,
    lisainfo         VARCHAR(200),
    konferenssi_id   INTEGER NOT NULL,
    konf_huone_id    INTEGER,
    esitelma_id      INTEGER,
    ohjelmatyyppi_id INTEGER NOT NULL
);


CREATE TABLE konf_sijainti (
    id               INTEGER NOT NULL identity (1,1) primary key,
    paikan_nimi      VARCHAR(50) NOT NULL,
    maa              VARCHAR(30) NOT NULL,
    postinumero      VARCHAR(10) NOT NULL,
    postitoimipaikka VARCHAR(100) NOT NULL,
    katuosoite       VARCHAR(200) NOT NULL,
    max_hlo_maara    INTEGER
);


CREATE TABLE konf_tehtava (
    id                 INTEGER NOT NULL identity (1,1) primary key,
    tehtavan_deadline  DATE,
    konf_tyontekija_id INTEGER,
    konferenssi_id     INTEGER NOT NULL,
    tehtavan_status_id INTEGER NOT NULL,
    tehtava_id         INTEGER NOT NULL
);

CREATE TABLE konf_tyontekija (
    id         INTEGER NOT NULL identity (1,1) primary key,
    henkilo_id INTEGER NOT NULL,
    rooli_id   INTEGER NOT NULL
);

CREATE TABLE konferenssi (
    id               INTEGER NOT NULL identity (1,1) primary key,
    konf_nimi        VARCHAR(200) NOT NULL,
    aloitus_pvm      DATE,
    lopetus_pvm      DATE,
    konf_tiivistelma VARCHAR(1000),
    konf_sijainti_id INTEGER,
    teema_id         INTEGER NOT NULL
);

CREATE TABLE ohjelman_henkilo (
    konf_ohjelmanumero_id INTEGER NOT NULL,
    henkilo_id            INTEGER NOT NULL
    PRIMARY KEY (konf_ohjelmanumero_id, henkilo_id)
);

CREATE TABLE ohjelmatyyppi (
    id            INTEGER NOT NULL identity (1,1) primary key,
    ohjelmatyyppi VARCHAR(50) NOT NULL,
    lisainfo      VARCHAR(200)
);


CREATE TABLE rooli (
    id    INTEGER NOT NULL identity (1,1) primary key,
    rooli VARCHAR(30) NOT NULL
);

CREATE TABLE sos_ilmoittautuminen (
    ilmoittautumis_pvm DATE NOT NULL,
    sos_perumis_pvm    DATE,
    onko_maksettu      BIT,
    onko_kutsuttu      BIT,
    hlo_maara          INTEGER NOT NULL,
    henkilo_id         INTEGER NOT NULL,
    konferenssi_id     INTEGER NOT NULL,
    sos_tapahtuma_id   INTEGER NOT NULL
    PRIMARY KEY (henkilo_id, konferenssi_id, sos_tapahtuma_id)
);


CREATE TABLE sos_tapahtuma (
    id                 INTEGER NOT NULL identity (1,1) primary key,
    sos_tapahtuma_nimi VARCHAR(100) NOT NULL,
    tapahtuma_tyyppi   VARCHAR(50) NOT NULL,
    aloitus_aika       DATETIME NOT NULL,
    lopetus_aika       DATETIME NOT NULL,
    paikka             VARCHAR(100) NOT NULL,
    info               VARCHAR(1000),
    hinta              FLOAT NOT NULL
);


CREATE TABLE teema (
    id    INTEGER NOT NULL identity (1,1) primary key,
    teema VARCHAR(200) NOT NULL
);


CREATE TABLE tehtava (
    id              INTEGER NOT NULL identity (1,1) primary key,
    tehtavan_kuvaus VARCHAR(300) NOT NULL
);


CREATE TABLE tehtavan_status (
    id              INTEGER NOT NULL identity (1,1) primary key,
    tehtavan_status VARCHAR(50) NOT NULL
);

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