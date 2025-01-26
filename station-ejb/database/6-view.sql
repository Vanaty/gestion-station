

CREATE OR REPLACE VIEW v_maison_arr AS
SELECT 
    m.idMaison,
    m.idProp,
    (m.localisation).sdo_point.x AS longitude,
    (m.localisation).sdo_point.y AS latitude,
    a.idArrondissement,
    c.id as idCommune
FROM
    maison m
JOIN 
    arrondissement a
ON 
    SDO_RELATE(
        m.localisation, 
        a.delimitation, 
        'mask=INSIDE'
    ) = 'TRUE'
JOIN
    Commune c 
ON 
    a.idCommune = c.id;


CREATE OR REPLACE VIEW v_composant AS
SELECT 
    cm.idMaison,
    c.idComposant,
    c.composant,
    cm.coeff as coefficient,
    cm.mois,
    cm.annee
FROM 
    composant c
JOIN 
    composant_maison cm
ON 
    c.idComposant = cm.idComposant;



CREATE VIEW v_maison_proprietaire AS
SELECT 
    m.idMaison,
    p.id AS idProprietaire,
    p.val AS nomProprietaire,
    p.desce AS descriptionProprietaire,
    m.localisation
FROM maison m
LEFT JOIN Proprietaire p ON m.idProp = p.id;
