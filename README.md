# Conference-database
Group assignment material from the course Database Design and Implementation

### Tiedon lisäys ja muuttaminen
##### Datan syöttäminen
>INSERT INTO taulun_nimi VALUES (1, 'arvo');

##### Sarakkeen tiedon päivitys
>UPDATE taulun_nimi  
>SET sarakkeen_nimi = 'uusi arvo'  
>WHERE id = 6;  

##### Taulun poisto
>DROP TABLE taulun_nimi;  

##### Tiedon poisto
>DELETE FROM taulun_nimi WHERE id = 3;

##### Näkymän luonti
>CREATE VIEW nakyman_nimi AS

##### Näkymän poisto
>DROP VIEW nakyman_nimi