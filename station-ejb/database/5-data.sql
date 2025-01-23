-- 1er Arrondissement
INSERT INTO arrondissement (idArrondissement, arrondissement, delimitation)
VALUES (
    'ARD'||getseqarrondissement(),
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
    'ARD'||getseqarrondissement(),
    '2e Arrondissement',
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
    'ARD'||getseqarrondissement(),
    '3e Arrondissement',
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

