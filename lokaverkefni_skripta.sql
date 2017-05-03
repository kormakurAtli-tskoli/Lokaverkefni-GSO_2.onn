CREATE TABLE flokkur(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
	flokkur(nafn)
VALUES
	("Sóló"),
    ("Hljómsveit"),
    ("Dúó");

CREATE TABLE utgefandi(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
	utgefandi(nafn)
VALUES
	("Columbia Records"),
    ("Cleveland International Records"),
    ("EMI Records");
