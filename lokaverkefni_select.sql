-- A) Sýnið öll lög á tilteknum diski (þið veljið titilinn sjálf).
SELECT lag.nafn as "Lag", diskur.nafn as "Diskur", lag.texti
FROM lag
INNER JOIN diskur
ON lag.diskur = diskur.ID
WHERE diskur.nafn = "Bat Out of Hell";

-- B) Sýnið öll lög tiltekins flytjanda (þið veljið flytjandann sjálf).
SELECT lag.nafn as "Lag", flytjandi.nafn as "Flytjandi", lag.texti
FROM lag
INNER JOIN flytjandi
ON lag.flytjandi = flytjandi.ID
WHERE flytjandi.nafn = "Simon & Garfunkel";

-- C) Sýnið öll lög tiltekinnar tegundar tónlistar (þið veljið tegundina sjálf).
SELECT lag.nafn as "Lag", tegund.nafn as "Tegund", lag.texti
FROM lag
INNER JOIN tegund
ON lag.tegund = tegund.ID
WHERE tegund.nafn = "Hard Rock";

-- D) Sýnið öll lög sem taka meira en 5 mín í spilun.
SELECT nafn AS  "Lag", FORMAT( lengd_sek /60, 1 ) AS  "Mínútur í spilun", lengd_sek AS  "Sekúndur í spilun"
FROM lag
WHERE lengd_sek >300;

-- E) Sýnið alla diska sem eru gefnir út eftir árið 2010.
SELECT nafn as "Diskur", CONVERT( utgafudagur, CHAR( 4 ) ) as "Útgáfuár"
FROM diskur
WHERE utgafudagur > 20100000;

-- F) Sýnið nafn diska, nafn flytjanda og útgáfuár flytjanda fyrir fyrstu tvo útgáfufyrirtækin í stafrófinu.
SELECT diskur.nafn as "Nafn disks", flytjandi.nafn as "Flytjandi", utgefandi.nafn as "Útgefandi", CONVERT( diskur.utgafudagur, CHAR( 4 ) ) as "Útgáfuár disks"
FROM diskur
JOIN flytjandi
ON diskur.flytjandi = flytjandi.ID
JOIN utgefandi
ON diskur.utgefandi = utgefandi.ID
GROUP BY utgefandi.nafn
ORDER BY utgefandi.nafn;

-- G) Sýnið fimm lengstu lögin, nafn flytjanda og nafn útgefanda.
SELECT lag.nafn AS  "Lag", flytjandi.nafn AS  "Flytjandi", FORMAT( lag.lengd_sek /60, 1 ) AS "Mínútur í spilun", lag.lengd_sek AS  "Sekúndur í spilun", utgefandi.nafn AS  "Útgefandi"
FROM lag
JOIN flytjandi
ON lag.flytjandi = flytjandi.ID
JOIN diskur
ON lag.diskur = diskur.ID
JOIN utgefandi
ON diskur.utgefandi = utgefandi.ID
ORDER BY lag.lengd_sek DESC 
LIMIT 5;

-- H) Sýnið fjölda diska á tegund – birtið bara þær tvær tegundir sem hafa flesta diska.
SELECT tegund.nafn as "Tegund", count(diskur.nafn) as "Fjöldi diska"
FROM diskur
JOIN lag
ON diskur.ID = lag.diskur
JOIN tegund
ON lag.tegund = tegund.ID
GROUP BY tegund.nafn
LIMIT 2;

-- I) Sýnið þann útgefanda sem hefur gefið út fæsta diska.
SELECT utgefandi.nafn as "Útgefandi", count(diskur.nafn) as "Fjöldi útgefna diska (í gagnagrunninum)"
FROM diskur
JOIN utgefandi
ON utgefandi.ID = diskur.utgefandi
GROUP BY utgefandi.nafn
ORDER BY count(diskur.nafn) ASC
LIMIT 1;

-- J) Sýnið nafn, tegund, útgefanda allra diska sem gefnir eru út á árunum 1998-2017. Hópað saman eftir útgefanda.
SELECT diskur.nafn as "Diskur", tegund.nafn as "Tegund", utgefandi.nafn as "Útgefandi"
FROM diskur
JOIN lag
ON lag.diskur = diskur.ID
JOIN utgefandi
ON utgefandi.ID = diskur.utgefandi
JOIN tegund
ON tegund.ID = lag.tegund
WHERE diskur.utgafudagur > 19980000 AND diskur.utgafudagur < 20170000
GROUP BY utgefandi.nafn;

-- K) Sýnið hversu mörg lög byrja á bókstafnum A og hversu mörg lög hafa bókstafinn s í nafninu
SELECT count(nafn)as "Fjöldi laga sem byrja á A"
FROM lag
WHERE nafn LIKE "A%";

SELECT count(nafn) as "Fjöldi laga sem hafa 's' í nafninu"
FROM lag
WHERE nafn LIKE "%s%";

-- L) Sýndu nafn og aldur allra flytjanda.
SELECT nafn, 2017-faedingardagur as "Aldur"
FROM flytjandi;

-- M) Sýndu meðallengd allra laganna.
SELECT FORMAT(AVG(FORMAT(lengd_sek /60,1)),1) AS "Meðallengd laga í mínútum"
FROM lag;

-- N) Sýndu hversu margir flytjendur eiga fleiri en 4 lög
SELECT flytjandi.nafn as "Flytjandi", count(lag.nafn) as "Fjöldi laga"
FROM flytjandi
JOIN lag
ON flytjandi.ID = lag.flytjandi
GROUP BY flytjandi.nafn
HAVING count(lag.nafn) > 4;

-- O) Sýndu elsta flytjandann og nöfn allra hans laga.
SELECT lag.nafn as "Lag", flytjandi.nafn as "Flytjandi",2017-flytjandi.faedingardagur as "Aldur"
FROM lag
JOIN flytjandi
ON lag.flytjandi = flytjandi.ID
GROUP BY lag.nafn
ORDER BY flytjandi.faedingardagur
LIMIT 5;

-- Eftirfarandi eru fyrirspurnir frá okkur

-- 1) 

-- 2) 

-- 3) 

-- 4) 

-- 5) 

-- 6) 

-- 7) 
