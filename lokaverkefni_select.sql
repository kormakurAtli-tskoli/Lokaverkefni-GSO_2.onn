-- A) Sýnið öll lög á tilteknum diski (þið veljið titilinn sjálf).
SELECT lag.nafn as "Lag", diskur.nafn as "Diskur", lag.texti
FROM lag
INNER JOIN diskur
ON lag.diskur = diskur.ID
WHERE diskur.nafn = "Bat Out of Hell"

-- B) Sýnið öll lög tiltekins flytjanda (þið veljið flytjandann sjálf).
SELECT lag.nafn as "Lag", flytjandi.nafn as "Flytjandi", lag.texti
FROM lag
INNER JOIN flytjandi
ON lag.flytjandi = flytjandi.ID
WHERE flytjandi.nafn = "Simon & Garfunkel"

-- C) Sýnið öll lög tiltekinnar tegundar tónlistar (þið veljið tegundina sjálf).
SELECT lag.nafn as "Lag", tegund.nafn as "Tegund", lag.texti
FROM lag
INNER JOIN tegund
ON lag.tegund = tegund.ID
WHERE tegund.nafn = "Hard Rock"