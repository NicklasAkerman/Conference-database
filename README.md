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