SELECT 
    j.jatekos_nev,
    SUM(s.golok) AS osszes_gol,
    SUM(s.passzok) AS osszes_passz,
    SUM(s.sarga_lapok) AS osszes_sarga_lap,
    SUM(s.piros_lapok) AS osszes_piros_lap
FROM 
    Statisztikak s
LEFT JOIN 
    Jatekosok j ON s.jatekos_id = j.jatekos_id
LEFT JOIN 
    Csapatok cs on j.csapat_id = cs.csapat_id
WHERE 
    cs.csapat_nev = 'Fradi'
GROUP BY 
    j.jatekos_nev;