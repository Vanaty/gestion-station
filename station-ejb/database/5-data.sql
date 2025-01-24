-- 1er Arrondissement
INSERT INTO IMPOTUSER(id, idCommune,idUtilisateur) VALUES('IUSER001','COMM1','1060')
INSERT INTO Commune (id, val, desce) VALUES ('COMM1', 'Antananarivo', 'Capitale de Madagascar');
INSERT INTO Commune (id, val, desce) VALUES ('COMM2', 'Toamasina', 'Ville portuaire');


INSERT INTO arrondissement (idArrondissement,idCommune ,arrondissement, delimitation)
VALUES (
    'ARD001',
    'COMM1',
    '1er Arrondissement',
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            47.080536,-18.589103,
            46.796265,-18.840271,
            46.918488,-18.99235,
            47.176666,-19.028725,
            47.558441,-18.848073,
            47.513123,-18.643793,
            47.194519,-18.563054,
            47.080536,-18.589103
        )
    )
);

-- 2e Arrondissement
INSERT INTO arrondissement (idArrondissement, idCommune, arrondissement, delimitation)
VALUES (
    'ARD002',
    'COMM1',
    '2eme Arrondissement',
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            47.794647, -18.714083,
            47.794647, -18.776539,
            47.849579, -18.842872,
            47.900391, -18.89228,
            48.010254, -18.958568,
            48.132477, -18.776539,
            48.253326, -18.655511,
            48.212128, -18.539607,
            48.063812, -18.482278,
            47.897644, -18.466639,
            47.922363, -18.496612,
            47.794647, -18.714083
        )
    )
);


-- 3e Arrondissement
INSERT INTO arrondissement (idArrondissement, idCommune, arrondissement, delimitation)
VALUES (
    'ARD003',
    'COMM1',
    '3eme Arrondissement',
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            47.327728, -19.07807,
            47.617493, -19.075472,
            47.765808, -19.272739,
            47.436218, -19.357025,
            47.264557, -19.266254,
            47.327728, -19.07807
        )
    )
);

-- 4e Arrondissement
INSERT INTO arrondissement (idArrondissement, idCommune, arrondissement, delimitation)
VALUES (
    'ARD004',
    'COMM1',
    '4eme Arrondissement',
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            47.327728, -19.07807,
            47.617493, -19.075472,
            47.765808, -19.272739,
            47.436218, -19.357025,
            47.264557, -19.266254,
            47.327728, -19.07807
        )
    )
);


INSERT INTO Proprietaire (id, val, desce) VALUES ('PROP001', 'Jean Dupont', 'Propriétaire de plusieurs terrains');
INSERT INTO Proprietaire (id, val, desce) VALUES ('PROP002', 'Marie Lafont', 'Investisseur immobilier');
INSERT INTO Proprietaire (id, val, desce) VALUES ('PROP003', 'Paul Martin', 'Propriétaire d’un immeuble locatif');
INSERT INTO Proprietaire (id, val, desce) VALUES ('PROP004', 'Sophie Bernard', 'Gère des terrains agricoles');
INSERT INTO Proprietaire (id, val, desce) VALUES ('PROP005', 'David Morel', 'Possède des résidences secondaires');

-- Insertion des maisons avec des identifiants explicites
INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN001', 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(46.984406, -18.868592, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN002', 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.308502, -18.807757, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN003', 'PROP003', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.223358, -18.759544, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN004', 'PROP004', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.985535, -18.63468, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN005', 'PROP005', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(48.002014, -18.755723, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN006', 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.960815, -18.802319, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN007', 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.562561, -19.176731, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN008', 'PROP003', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.643585, -19.235121, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN009', 'PROP004', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.392273, -19.180624, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN010', 'PROP005', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.60376, -18.491392, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN011', 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.584534, -18.535692, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN012', 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.727356, -18.521361, NULL), NULL, NULL));

INSERT ALL
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF001', 'MSN001', 400, 200, 2, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF002', 'MSN002', 150, 90, 1, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF003', 'MSN003', 600, 700, 3, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF004', 'MSN004', 300, 150, 1, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF005', 'MSN005', 540, 260, 2, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF006', 'MSN006', 470, 350, 3, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF007', 'MSN007', 220, 100, 1, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF008', 'MSN008', 600, 210, 2, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF009', 'MSN009', 500, 400, 3, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF010', 'MSN010', 250, 300, 4, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF011', 'MSN011', 260, 100, 3, 1, 2024)
    INTO MaisonFille (id, idMaison, longueur, largeur, nbEtage, mois, annee) VALUES ('MF012', 'MSN012', 255.5, 200, 2, 1, 2024)
SELECT 1 FROM DUAL;


INSERT INTO Prix (id, valeur, mois, annee, idCommune) VALUES ('PRX001', 5000.50, 1, 2024, 'COMM1');
INSERT INTO Prix (id, valeur, mois, annee, idCommune) VALUES ('PRX002', 6200.75, 1, 2024, 'COMM2');
INSERT INTO Prix (id, valeur, mois, annee, idCommune) VALUES ('PRX003', 5000.50, 5, 2024, 'COMM1');
INSERT INTO Prix (id, valeur, mois, annee, idCommune) VALUES ('PRX004', 6200.75, 5, 2024, 'COMM2');

/* Maison premier arrondissement */

/* Requête Spatatial */


-- Insertion des paiements pour la maison MSN006
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN1');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 2, 2025, 'MSN1');

-- Insertion des paiements pour la maison MSN007
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN2');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 3, 2025, 'MSN2');

-- Insertion des paiements pour la maison MSN008
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 2, 2025, 'MSN003');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 4, 2025, 'MSN003');

-- Insertion des paiements pour la maison MSN009
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN004');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 5, 2025, 'MSN004');

-- Insertion des paiements pour la maison MSN0010
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 6, 2025, 'MSN005');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 7, 2025, 'MSN005');


INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 8, 2025, 'MSN006');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 6, 2025, 'MSN006');


INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 8, 2025, 'MSN007');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 9, 2025, 'MSN007');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN007');

insert into matiere(idMatiere,matiere) values('MAT001','Bois');
insert into matiere(idMatiere,matiere) values('MAT002','Fer');
insert into matiere(idMatiere,matiere) values('MAT003','Acier');
insert into matiere(idMatiere,matiere) values('MAT004','Beton');

insert into composant(idComposant,composant,idMatiere) values('CMP001','Toit en bois','MAT001');
insert into composant(idComposant,composant,idMatiere) values('CMP002','Toit en Fer','MAT002');
insert into composant(idComposant,composant,idMatiere) values('CMP003','Toit en Acier','MAT003');
insert into composant(idComposant,composant,idMatiere) values('CMP004','Toit en Beton','MAT004');

insert into composant(idComposant,composant,idMatiere) values('CMP005','Mur en bois','MAT001');
insert into composant(idComposant,composant,idMatiere) values('CMP006','Mur en Fer','MAT002');
insert into composant(idComposant,composant,idMatiere) values('CMP007','Mur en Acier','MAT003');
insert into composant(idComposant,composant,idMatiere) values('CMP008','Mur en Beton','MAT004');


-- Insertion avec des valeurs pour coeff, mois et annee
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee) 
VALUES ('MSN1', 'CMP001', 1.2, 1, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN1', 'CMP005', 1.5, 1, 2024);

-- Maison MSN2
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN2', 'CMP002', 1.3, 2, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN2', 'CMP006', 1.7, 2, 2024);

-- Maison MSN3
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN3', 'CMP003', 1.4, 3, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN3', 'CMP007', 1.6, 3, 2024);

-- Maison MSN4
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN4', 'CMP004', 1.8, 4, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN4', 'CMP008', 2.0, 4, 2024);

-- Maison MSN5
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN5', 'CMP001', 1.1, 5, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN5', 'CMP005', 1.3, 5, 2024);

-- Maison MSN6
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN6', 'CMP003', 1.2, 6, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN6', 'CMP006', 1.9, 6, 2024);

-- Maison MSN7
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN7', 'CMP007', 1.4, 7, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN7', 'CMP002', 1.5, 7, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN8', 'CMP005', 1.3, 5, 2024);

-- Maison MSN6
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN9', 'CMP003', 1.2, 6, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN10', 'CMP006', 1.9, 6, 2024);

-- Maison MSN7
INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN11', 'CMP007', 1.4, 7, 2024);

INSERT INTO composant_maison (idMaison, idComposant, coeff, mois, annee)
VALUES ('MSN12', 'CMP002', 1.5, 7, 2024);

