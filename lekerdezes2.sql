SELECT 
    cs.csapat_nev,
    s.ferohely
FROM 
    Stadionok s
INNER JOIN 
    Csapatok cs ON s.csapat_id = cs.csapat_id;