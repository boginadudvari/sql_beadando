SELECT 
	m.meccs_id,
	m.meccs_datum,
	hcs.csapat_nev AS hazai_csapat,
    vcs.csapat_nev AS vendeg_csapat,
    m.hazai_csapat_pont,
    m.vendeg_csapat_pont
FROM 
    Meccsek m
INNER JOIN 
    Csapatok AS hcs ON m.hazai_csapat_id = hcs.csapat_id
INNER JOIN 
    Csapatok AS vcs ON m.vendeg_csapat_id = vcs.csapat_id;