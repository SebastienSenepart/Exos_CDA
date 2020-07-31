CREATE DATABASE gestion_clientele;
USE gestion_clientele;
CREATE TABLE client_hot(
      cl_num INT AUTO_INCREMENT,
      cl_add VARCHAR(200),
      cl_nom VARCHAR(50) NOT NULL,
      cl_prenom VARCHAR(50) NOT NULL,
      PRIMARY KEY (cl_num)      
);
CREATE TABLE station(
      sta_num INT,
      sta_nom VARCHAR(50),
      PRIMARY KEY (sta_num)
);
CREATE TABLE hotel(
      hot_num INT,
      hot_capacite INT,
      hot_categ INT,
      hot_nom VARCHAR(50),
      hot_add VARCHAR(200),
      hot_sta_num INT NOT NULL,
PRIMARY KEY (hot_num),
CONSTRAINT fk_sta_num
   FOREIGN KEY(hot_sta_num) 
   REFERENCES station(sta_num)
);
CREATE TABLE chambre(
      ch_num INT,
      ch_capacite INT,
      ch_degre_confort INT,
      ch_exposition INT,
      ch_type INT,     
      ch_hot_num INT NOT NULL,
PRIMARY KEY (ch_num),
CONSTRAINT fk_hot_num 
    FOREIGN KEY(ch_hot_num) 
    REFERENCES hotel(hot_num)
);
CREATE TABLE reservation( 
      res_num INT,
      res_ch_num INT NOT NULL,
      res_cl_num INT NOT NULL,
      res_date_debut DATE NOT NULL,
      res_date_fin DATE NOT NULL,
      res_date_reservation DATE,
      res_montant_arrhes INT NOT NULL,
      res_prix_total INT NOT NULL,
PRIMARY KEY (res_num),
CONSTRAINT fk_ch_num 
   FOREIGN KEY(res_ch_num) 
   REFERENCES chambre(ch_num),
CONSTRAINT fk_cl_num 
   FOREIGN KEY(res_cl_num) 
   REFERENCES client_hot(cl_num)
);   
CREATE USER 'util_3'@'localhost' IDENTIFIED BY 'ijkl';
GRANT ALL PRIVILEGES ON gestion_clientele.* TO 'util_1'@'localhost' 
IDENTIFIED BY 'ijkl';
SELECT * FROM USER;
DROP USER 'util_1'@'localhost';
SELECT * FROM USER;
GRANT ALL PRIVILEGES ON gestion_clientele.* TO 'util_1'@'%' IDENTIFIED BY 'abcd';
GRANT SELECT ON gestion_clientele.* TO 'util_2' IDENTIFIED BY 'efgh';
GRANT SELECT ON gestion_clientele.reservation TO 'util_3' IDENTIFIED BY 'ijkl';
