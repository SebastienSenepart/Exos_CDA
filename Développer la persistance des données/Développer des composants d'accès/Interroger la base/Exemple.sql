drop database exemple;
create database exemple;

use exemple;


CREATE TABLE dept (
	nodept 		varchar(50) NOT NULL PRIMARY KEY,
	nom 		varchar(50) NOT NULL,
	noregion 	varchar(50) NOT NULL
);

CREATE TABLE employe(
	noemp 		int NOT NULL PRIMARY KEY,
	nom 		varchar(50) NOT NULL,
	prenom 		varchar(50) NOT NULL,
	dateemb 	datetime NOT NULL,
	nosup 		varchar(50) NULL,
	titre 		varchar(50) NOT NULL,
	nodep 		varchar(50) NOT NULL REFERENCES dept(nodept),
	salaire 	decimal(18, 0) NOT NULL,
	tauxcom 	decimal(18, 0) NULL
);



INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('10', 'finance', '1');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('20', 'atelier', '2');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('30', 'atelier', '3');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('31', 'vente', '1');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('32', 'vente', '2');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('33', 'vente', '3');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('34', 'vente', '4');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('35', 'vente', '5');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('41', 'distribution', '1');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('42', 'distribution', '2');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('43', 'distribution', '3');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('44', 'distribution', '4');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('45', 'distribution', '5');
INSERT INTO  dept  ( nodept ,  nom ,  noregion ) VALUES ('50', 'administration', '1');




INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (1, 'patamob', 'adhémar', '20000326', NULL, 'président', '50', 50000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (2, 'zeublouse', 'agathe', '20000415', '1', 'dir.distrib', '41', 35000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (3, 'kuzbidon', 'alex', '20000505', '1', 'dir.vente', '31', 34000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (4, 'locale', 'anasthasie', '20000525', '1', 'dir.finance', '10', 36000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (5, 'teutmaronne', 'armand', '20000614', '1', 'dir.administratif', '50', 36000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (6, 'zoudanlkou', 'debbie', '20000704', '2', 'chef entrepot', '41', 25000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (7, 'rivenbusse', 'elsa', '20000724', '2', 'chef entrepot', '42', 24000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (8, 'ardelpic', 'helmut', '20000813', '2', 'chef entrepot', '43', 23000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (9, 'peursconla', 'humphrey', '20000902', '2', 'chef entrepot', '44', 22000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (10, 'vrante', 'helena', '20000922', '2', 'chef entrepot', '45', 21000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (11, 'melusine', 'enfaillite', '20001012', '3', 'représentant', '31', 25000, 10);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (12, 'eurktumeme', 'odile', '20001101', '3', 'représentant', '32', 26000, 12);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (13, 'hotdeugou', 'olaf', '20001121', '3', 'représentant', '33', 27000, 10);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (14, 'odlavieille', 'pacome', '20001211', '3', 'représentant', '34', 25000, 15);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (15, 'amartakaldire', 'quentin', '20001221', '3', 'représentant', '35', 23000, 17);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (16, 'traibien', 'samira', '20001231', '6', 'secrétaire', '41', 15000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (17, 'fonfec', 'sophie', '20010110', '6', 'secrétaire', '41', 14000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (18, 'fairent', 'teddy', '20010120', '7', 'secrétaire', '42', 13000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (19, 'blaireur', 'terry', '20010209', '7', 'secrétaire', '42', 13000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (20, 'ajerre', 'tex', '20010209', '8', 'secrétaire', '43', 13000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (21, 'chmonfisse', 'thierry', '20010219', '8', 'secrétaire', '43', 12000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (22, 'phototetedemort', 'thomas', '20010219', '9', 'secrétaire', '44', 22500, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (23, 'kaecoute', 'xavier', '20010301', '9', 'secrétaire', '34', 11500, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (24, 'adrouille-toutltan', 'yves', '20010311', '10', 'secrétaire', '45', 11000, NULL);
INSERT INTO  employe  ( noemp ,  nom ,  prenom ,  dateemb ,  nosup ,  titre ,  nodep ,  salaire ,  tauxcom ) VALUES (25, 'anchier', 'yvon', '20010321', '10', 'secrétaire', '45', 10000, NULL);


 SELECT nodept, nom, noregion
 FROM dept;

 SELECT nom, dateemb, nosup, nodep, salaire
 FROM employe;

 SELECT DISTINCT titre
 FROM employe;

 SELECT nom, noemp, nodep 
 FROM employe
 WHERE titre = "secrétaire";

 SELECT nom, nodept
 FROM dept
 WHERE nodept >40;

 SELECT nom, prenom
 FROM employe
 WHERE nom<prenom;

 SELECT nom, salaire, nodep
 FROM employe
 WHERE titre="représentant" AND nodep="35" AND salaire>20000;

 SELECT nom, titre, salaire
 FROM employe 
 WHERE titre="représentant" OR titre="président";

 SELECT nom, titre, nodep, salaire
 FROM employe
 WHERE titre="représentant" OR (titre="secrétaire" AND nodep="34");

 SELECT nom, salaire
 FROM employe
 WHERE salaire BETWEEN 20000 AND 30000;

 SELECT nom
 FROM employe
 WHERE nom LIKE "H%";

 SELECT nom
 FROM employe
 WHERE nom LIKE "%n";

 SELECT nom 
 FROM employe
 WHERE nom LIKE "__u%"

 SELECT salaire, nom
 FROM employe
 WHERE nodep = "41"
 ORDER BY salaire ASC;

  SELECT salaire, nom
 FROM employe
 WHERE nodep = "41"
 ORDER BY salaire DESC;

 SELECT titre, salaire, nom
 FROM employe
 ORDER BY titre ASC, salaire DESC;

 SELECT nom, salaire, tauxcom, titre
 FROM employe
 WHERE tauxcom IS NULL;

--23
 SELECT nom, salaire, tauxcom, titre
 FROM employe
 WHERE tauxcom IS NOT NULL;

--24
 SELECT nom, salaire, tauxcom, titre
 FROM employe
 WHERE tauxcom <15;

--25
 SELECT nom, salaire, tauxcom, titre
 FROM employe
 WHERE tauxcom >15;

--26
 SELECT nom, salaire, tauxcom, salaire*tauxcom/100 as commission
 FROM employe
 WHERE tauxcom !=0;

 --27
 SELECT nom, salaire, tauxcom, salaire*tauxcom/100 as commission
 FROM employe
 WHERE tauxcom!=0
 ORDER BY tauxcom ASC;

 --28

 SELECT CONCAT(prenom, ' ', nom) AS identite
FROM employe

--29

SELECT LEFT(nom,5) 
FROM employe;

--30

SELECT nom, LOCATE ("r", nom)
FROM employe;

--31

SELECT nom, UPPER(nom) as majuscule, LOWER(nom) as minuscule
FROM employe
WHERE nom="Vrante";

--32
SELECT nom, LENGTH(nom) as nb_lettres
FROM employe

--Partie 2

SELECT prenom, noregion 
FROM employe
JOIN dept ON employe.nodep = dept.nodept;

--

SELECT nodept, dept.nom AS nom_dept, employe.nom AS nom_emp
FROM dept 
JOIN employe ON employe.nodep = dept.nodept;

--

SELECT employe.nom AS nom_emp_distri
FROM employe
JOIN dept ON employe.nodep = dept.nodept;
WHERE dept.nom = "Distribution";

--


SELECT emp1.nom AS employé, emp1.salaire, emp2.nom AS patron, emp2.salaire
FROM  employe emp1
INNER JOIN employe emp2
ON emp1.nosup = emp2.noemp
WHERE emp1.salaire > emp2.salaire;

--

SELECT nom, titre
FROM employe
WHERE titre IN 
(SELECT titre FROM employe WHERE nom = "Amartakaldire");

--

SELECT nom, salaire, nodep 
FROM employe
WHERE salaire > ANY (
SELECT salaire
FROM employe 
WHERE nodep = "31")
ORDER BY nodep ASC, salaire ASC;
 
--

SELECT nom, salaire, nodep 
FROM employe
WHERE salaire > ALL (
SELECT salaire
FROM employe 
WHERE nodep = "31")
ORDER BY nodep ASC, salaire ASC;

--

SELECT nom, titre
FROM employe
WHERE nodep = "31" AND titre = ANY (SELECT titre FROM employe WHERE nodep = "32");

--

SELECT nom, titre
FROM employe
WHERE nodep = "31" AND titre != ALL (SELECT titre FROM employe WHERE nodep = "32");

--

SELECT nom, titre, salaire 
FROM employe
WHERE titre IN (SELECT titre FROM employe WHERE nom = "Fairent") 
AND salaire IN (SELECT salaire FROM employe WHERE nom = "Fairent");

-- 1

SELECT dept.nodept, dept.nom AS nom_dept, employe.nom AS nom_emp
FROM dept
LEFT JOIN employe
ON employe.nodep = dept.nodept;

-- 2
SELECT COUNT(nom), titre
FROM employe
GROUP BY titre ASC;

-- 3

SELECT AVG(salaire) AS moyenne, SUM(salaire) AS somme, noregion
FROM employe
JOIN dept ON employe.nodep = dept.nodept
GROUP BY noregion ASC;

-- 4

SELECT nodep
FROM employe
GROUP BY nodep
HAVING COUNT(nom) >3;

--5

SELECT MAX(salaire) AS salaire_max, MIN(salaire) AS salaire_max, (MAX(salaire) - MIN(salaire)) AS différence
FROM employe;

--6

SELECT SUBSTRING(nom, 1, 1) AS init
FROM employe
GROUP BY init
HAVING COUNT(init)>3;

--7

SELECT titre, COUNT(nom) AS nb_employes
FROM employe
GROUP BY titre;

--8

SELECT dept.nom, COUNT(employe.nom) AS nb_employes
FROM dept
LEFT JOIN employe ON dept.nodept = employe.nodep
GROUP BY dept.nom ASC;

--9

SELECT titre, AVG(salaire) AS moyenne
FROM employe
GROUP BY titre
HAVING moyenne > (
	SELECT AVG(salaire) 
	FROM employe 
	WHERE titre = "Représentant");

--10

SELECT COUNT(salaire) AS nb_salaires, COUNT(tauxcom) AS nb_tauxcom
FROM employe;





