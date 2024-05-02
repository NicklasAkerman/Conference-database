# Conference-database
Group assignment material from the course Database Design and Implementation

### Tiedon lisäys ja muuttaminen
##### Datan syöttäminen
>INSERT INTO taulun_nimi VALUES (null, 'arvo');

##### Sarakkeen tiedon päivitys
>UPDATE taulun_nimi  
>SET sarakkeen_nimi = 'uusi arvo'  
>WHERE id = 6;  

##### Taulun poisto
>DROP TABLE taulun_nimi;  

##### Tiedon poisto
>DELETE FROM taulun_nimi WHERE id = 3;

### Parametreistä
##### Näytä parametrit
>SELECT * FROM nls_database_parameters

##### Sessiokohtainen muutos parametreille
ALTER SESSION SET NLS_LANGUAGE = 'FINNISH';  
ALTER SESSION SET NLS_DATE_LANGUAGE = 'FINNISH';  
ALTER SESSION SET NLS_DATE_FORMAT = 'DD.MM.YYYY';  
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'DD.MM.YYYY HH24:MI';  
ALTER SESSION SET NLS_TIMESTAMP_TZ_FORMAT = 'DD.MM.YYYY HH24:MI';  
ALTER SESSION SET NLS_CURRENCY = '€';  
ALTER SESSION SET NLS_TERRITORY = 'FINLAND';  
ALTER SESSION SET NLS_ISO_CURRENCY = 'FINLAND';  

##### Tietokantakohtainen muutos parametreille
ALTER SYSTEM SET NLS_LANGUAGE = 'FINNISH';  
ALTER SYSTEM SET NLS_DATE_LANGUAGE = 'FINNISH';  
ALTER SYSTEM SET NLS_DATE_FORMAT = 'DD.MM.YYYY';  
ALTER SYSTEM SET NLS_TIMESTAMP_FORMAT = 'DD.MM.YYYY HH24:MI';  
ALTER SYSTEM SET NLS_TIMESTAMP_TZ_FORMAT = 'DD.MM.YYYY HH24:MI';  
ALTER SYSTEM SET NLS_CURRENCY = '€';  
ALTER SYSTEM SET NLS_TERRITORY = 'FINLAND';  
ALTER SYSTEM SET NLS_ISO_CURRENCY = 'FINLAND';  