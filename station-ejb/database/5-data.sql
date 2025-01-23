-- 1er Arrondissement
<<<<<<< Updated upstream
INSERT INTO arrondissement (idArrondissement, arrondissement, delimitation)
=======
INSERT INTO Commune (id, val, desce) VALUES ('COMM1', 'Antananarivo', 'Capitale de Madagascar');
INSERT INTO Commune (id, val, desce) VALUES ('COMM2', 'Toamasina', 'Ville portuaire');


-- 1er Arrondissement
INSERT INTO arrondissement (idArrondissement, idCommune, arrondissement, delimitation)
>>>>>>> Stashed changes
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
            2.3364, 48.8625,
            2.3455, 48.8621,
            2.3451, 48.8603,
            2.3360, 48.8605,
            2.3364, 48.8625
        )
    )
);

-- 2e Arrondissement
INSERT INTO arrondissement (idArrondissement, arrondissement, delimitation)
VALUES (
<<<<<<< Updated upstream
    'ARD'||getseqarrondissement(),
    '2e Arrondissement',
=======
    'ARD002',
    'COMM1',
    '2eme Arrondissement',
>>>>>>> Stashed changes
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            2.3464, 48.8635,
            2.3555, 48.8631,
            2.3551, 48.8613,
            2.3460, 48.8615,
            2.3464, 48.8635
        )
    )
);

-- 3e Arrondissement
INSERT INTO arrondissement (idArrondissement, arrondissement, delimitation)
VALUES (
<<<<<<< Updated upstream
    'ARD'||getseqarrondissement(),
    '3e Arrondissement',
=======
    'ARD003',
    'COMM1',
    '3eme Arrondissement',
>>>>>>> Stashed changes
    SDO_GEOMETRY(
        2003,
        4326,
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(
            2.3564, 48.8645,
            2.3655, 48.8641,
            2.3651, 48.8623,
            2.3560, 48.8625,
            2.3564, 48.8645
        )
    )
);

<<<<<<< Updated upstream
=======
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

-- Insertion des propriétaires
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



>>>>>>> Stashed changes
/* Maison premier arrondissement */
INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    10,
    15,
    2,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3380, 48.8610, NULL),
        NULL,
        NULL
    )
);

INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    8,
    12,
    1,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3390, 48.8620, NULL),
        NULL,
        NULL
    )
);

INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    12,
    18,
    3,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3400, 48.8600, NULL),
        NULL,
        NULL
    )
);

/* Deuxieme arrondissement */
INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    9,
    14,
    2,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3500, 48.8620, NULL),
        NULL,
        NULL
    )
);

INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    11,
    16,
    3,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3510, 48.8630, NULL),
        NULL,
        NULL
    )
);

/* 3e arrondissement */
INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    7,
    10,
    1,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3600, 48.8620, NULL),
        NULL,
        NULL
    )
);

INSERT INTO maison (idMaison, largeur, longueur, nbEtage, localisation)
VALUES (
    'MSN'||getseqmaison(),
    13,
    20,
    4,
    SDO_GEOMETRY(
        2001,
        4326,
        SDO_POINT_TYPE(2.3610, 48.8630, NULL),
        NULL,
        NULL
    )
);

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
VALUES ('PAY00'||getseqpayment(), 2, 2025, 'MSN3');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 4, 2025, 'MSN3');

-- Insertion des paiements pour la maison MSN009
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN4');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 5, 2025, 'MSN4');

-- Insertion des paiements pour la maison MSN0010
INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 6, 2025, 'MSN5');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 7, 2025, 'MSN5');


INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 8, 2025, 'MSN6');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 6, 2025, 'MSN6');


INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 8, 2025, 'MSN7');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 9, 2025, 'MSN7');

INSERT INTO payment (idPayment, mois, annee, idMaison)
VALUES ('PAY00'||getseqpayment(), 1, 2025, 'MSN7');

insert into matiere(idMatiere,matiere) values('MAT00'||getseqmatiere(),'Bois');
insert into matiere(idMatiere,matiere) values('MAT00'||getseqmatiere(),'Fer');
insert into matiere(idMatiere,matiere) values('MAT00'||getseqmatiere(),'Acier');
insert into matiere(idMatiere,matiere) values('MAT00'||getseqmatiere(),'Beton');

insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Toit en bois',0.5,'MAT001');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Toit en Fer',1,'MAT002');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Toit en Acier',1.5,'MAT003');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Toit en Beton',2,'MAT004');

insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Mur en bois',0.7,'MAT001');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Mur en Fer',1.25,'MAT002');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Mur en Acier',0.75,'MAT003');
insert into composant(idComposant,composant,coefficient,idMatiere) values('CMP00'||getseqcomposant(),'Mur en Beton',0.55,'MAT004');

-- Maison MSN006
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN1', 'CMP001');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN1', 'CMP005');

-- Maison MSN007
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN2', 'CMP002');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN2', 'CMP006');

-- Maison MSN008
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN3', 'CMP003');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN3', 'CMP007');

-- Maison MSN009
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN4', 'CMP004');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN4', 'CMP008');

-- Maison MSN0010
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN5', 'CMP001');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN5', 'CMP005');

-- Maison MSN0010
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN6', 'CMP003');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN6', 'CMP006');

-- Maison MSN0010
INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN7', 'CMP007');

INSERT INTO composant_maison (idMaison, idComposant)
VALUES ('MSN7', 'CMP002');

