# 1: A regisztráció idejét ne lehessen módosítani (ezt db szinten oldjuk meg, hogy más kódrészlet se tudjon módosítani)
DELIMITER //
CREATE TRIGGER CompanyBeforeUpdateTrigger
BEFORE UPDATE ON companies
FOR EACH ROW
BEGIN
	SET NEW.registerAt=OLD.registerAt;
END; //


# 2: Készíts egy lekérdezést melynek az oszlopai az “activity” mezőben lévő értékek (ezek dinamikus adatok), sorai pedig az adott activity-hez tartozó cég név legyen.
DELIMITER //
CREATE PROCEDURE companies_activities()
BEGIN
	SET @query = CONCAT('SELECT ', (SELECT GROUP_CONCAT(distinct activity) 
	FROM (SELECT CONCAT(REPLACE(activity, " ", ""),".companyName AS '", activity, "'") as activity
		FROM companies ORDER BY activity) AS t0), ' FROM companies AS c ', (SELECT GROUP_CONCAT(distinct activity SEPARATOR " ")
	FROM (SELECT CONCAT("LEFT JOIN companies AS ", REPLACE(activity, " ", "")," ON c.companyId=", REPLACE(activity, " ", ""), ".companyId", " AND ", REPLACE(activity, " ", ""), ".activity=","'", activity, "'") as activity
	FROM companies ORDER BY activity) AS t1), ' ORDER BY c.companyName');
	PREPARE stmt FROM @query;
	EXECUTE stmt;
END; //

call companies_activities();


# 3: Készíts egy olyan lekérdezést amely visszaadja, hogy 2001.01.01 napjától kezdve egészen a mai napig az adott napon mely cégek alakultak meg. (azon a napon ahol nem volt cég alapítás ott null értéket vegyen fel)
CREATE OR REPLACE VIEW companies_foundations AS (SELECT v.date, c.company
FROM (SELECT ADDDATE('2001-01-01', t4*10000 + t3*1000 + t2*100 + t1*10 + t0) AS date FROM
(SELECT 0 t0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS t0,
(SELECT 0 t1 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS t1,
(SELECT 0 t2 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS t2,
(SELECT 0 t3 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS t3,
(SELECT 0 t4 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS t4) v

LEFT JOIN (SELECT companyFoundationDate, GROUP_CONCAT(companyName SEPARATOR ', ') as company FROM companies GROUP BY companyFoundationDate) AS c
ON c.companyFoundationDate = v.date

WHERE date BETWEEN '2001-01-01' AND NOW());
