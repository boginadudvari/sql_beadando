SELECT 
    j.jatekos_nev,
    s.golok,
    s.passzok,
    s.sarga_lapok,
    s.piros_lapok
FROM 
    Statisztikak s
INNER JOIN 
    Jatekosok j ON s.jatekos_id = j.jatekos_id
WHERE 
    s.meccs_id = 1;