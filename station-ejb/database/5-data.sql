-- 1er Arrondissement
INSERT INTO Commune (id, val, desce) VALUES ('COMM1', 'Antananarivo', 'Capitale de Madagascar');
INSERT INTO Commune (id, val, desce) VALUES ('COMM2', 'Toamasina', 'Ville portuaire');


INSERT INTO arrondissement (idArrondissement,idCommune ,arrondissement, delimitation)
VALUES (
    'ARD'||getseqarrondissement(),
    '1er Arrondissement',
    'COMM1'
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
    'ARD' || getseqarrondissement(),
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
    'ARD' || getseqarrondissement(),
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

INSERT INTO arrondissement (idArrondissement, idCommune, arrondissement, delimitation)
VALUES (
    'ARD' || getseqarrondissement(),
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


INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(46.984406, -18.868592, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.308502, -18.807757, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP003', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.223358, -18.759544, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP004', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.985535, -18.63468, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP005', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(48.002014, -18.755723, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.960815, -18.802319, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.562561, -19.176731, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP003', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.643585, -19.235121, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP004', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.392273, -19.180624, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP005', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.60376, -18.491392, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP001', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.584534, -18.535692, NULL), NULL, NULL));

INSERT INTO maison (idMaison, idProp, localisation) 
VALUES ('MSN'||getseqmaison(), 'PROP002', SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(47.727356, -18.521361, NULL), NULL, NULL));



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

