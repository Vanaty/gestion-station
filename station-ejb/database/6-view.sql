

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