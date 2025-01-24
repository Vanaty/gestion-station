CREATE TABLE IMPOTUSER(
   id VARCHAR2(50) PRIMARY KEY,
   idUtilisateur VARCHAR2(50),
   idCommune VARCHAR2(50)
);

CREATE TABLE Commune(
   id VARCHAR2(50) PRIMARY KEY,
   val VARCHAR2(50),
   desce VARCHAR2(50)
);

CREATE TABLE Prix(
   id VARCHAR2(50),
   valeur DECIMAL(15,2),
   mois INTEGER,
   annee INTEGER,
   idCommune VARCHAR2(50)
);


CREATE TABLE Proprietaire(
   id VARCHAR2(50) PRIMARY KEY,
   val VARCHAR2(100),
   desce VARCHAR2(100)
);

CREATE TABLE maison(
   idMaison VARCHAR2(50) ,
   idProp VARCHAR2(50),
   localisation SDO_GEOMETRY,
   PRIMARY KEY(idMaison)
);

CREATE TABLE MaisonFille(
   id VARCHAR2(50) PRIMARY KEY,
   idMaison VARCHAR2(50),
   longueur NUMBER(15,2)   NOT NULL,
   largeur NUMBER(15,2)   NOT NULL,
   nbEtage NUMBER(10) DEFAULT 0,
   mois INTEGER,
   annee INTEGER
);



CREATE TABLE payment(
   idPayment VARCHAR2(50),
   mois NUMBER(2) NOT NULL,
   annee NUMBER(10)  NOT NULL,
   idMaison VARCHAR2(50)  NOT NULL,
   PRIMARY KEY(idPayment),
   FOREIGN KEY(idMaison) REFERENCES maison(idMaison)
);

CREATE TABLE matiere(
   idMatiere VARCHAR2(50) ,
   matiere VARCHAR2(50) ,
   PRIMARY KEY(idMatiere)
);

CREATE TABLE composant(
   idComposant VARCHAR2(50) ,
   composant VARCHAR2(50)  NOT NULL,
   idMatiere VARCHAR2(50)  NOT NULL,
   PRIMARY KEY(idComposant),
   FOREIGN KEY(idMatiere) REFERENCES matiere(idMatiere)
);


CREATE TABLE arrondissement(
   idArrondissement VARCHAR2(50) ,
   idCommune VARCHAR2(50),
   arrondissement VARCHAR2(50)  NOT NULL,
   delimitation SDO_GEOMETRY,
   PRIMARY KEY(idArrondissement),
   FOREIGN KEY(idCommune) REFERENCES commune(id)
);

CREATE TABLE composant_maison(
   idMaison VARCHAR2(50) ,
   idComposant VARCHAR2(50) ,
   coeff VARCHAR(50),
   mois INTEGER,
   annee INTEGER,
   PRIMARY KEY(idMaison, idComposant),
   FOREIGN KEY(idMaison) REFERENCES maison(idMaison),
   FOREIGN KEY(idComposant) REFERENCES composant(idComposant)
);

select c.idComposant,composant from composant_maison cm join composant c on c.idComposant = cm.idComposant where idMaison = 'MSN006'

select c.idComposant,composant from composant_maison cm join composant c on c.idComposant = cm.idComposant where idMaison = 'MSN006'

47,794647	-18,714083
47,794647	-18,776539
47,849579	-18,842872
47,900391	-18,89228
48,010254	-18,958568
48,132477	-18,776539
48,253326	-18,655511
48,212128	-18,539607
48,063812	-18,482278
47,897644	-18,466639
47,922363	-18,496612
47,794647	-18,714083