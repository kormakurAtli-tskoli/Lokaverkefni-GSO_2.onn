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

CREATE TABLE tegund(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255)
);
INSERT INTO
	tegund(nafn)
VALUES
	("Folk Rock"),
    ("Hard Rock"),
    ("Rock Opera"),
    ("Rock"),
    ("Rock and Roll");

CREATE TABLE flytjandi(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nafn VARCHAR(255),
    faedingardagur INT,
    lysing VARCHAR(555),
    danardagur INT,
    tegund_flytjanda INT,
    flokkur_flytjanda INT,
    FOREIGN KEY (tegund_flytjanda) REFERENCES tegund(ID),
    FOREIGN KEY (flokkur_flytjanda) REFERENCES flokkur(ID)
);
INSERT INTO
	flytjandi(nafn,faedingardagur,lysing,danardagur,tegund_flytjanda,flokkur_flytjanda)
VALUES
	("Simon & Garfunkel",1957,"Simon & Garfunkel er dúó sem samanstendur af Paul Simon og Art Garfunkel. Þeir voru eitt af bestu böndunum í kringum 1960. Vinsælustu lögin þeirra eru án efa Mrs. Robinson og Sound Of Silence",1970,1,3),
    ("Aerosmith",1970,"Aerosmith er amerísk rokkhljómsveit sem stundum er kölluð 'The Bad Boys from Boston'. Hljómsveitin samanstendur af Steven Tyler, Joe Perry, Brad Whitford, Tom Hamilton og Joey Kramer. Vinsælustu lögin þeirra hljóta að vera Dream On, sem var samplað af Eminem fyrir lagið Sing For The Moment, og I  Don't Wanna Miss A Thing.",NULL,2,2),
    ("George Michael",1963,"Georgios Kyriacos Panayiotou, betur þekktur sem George Michael, (fæddur í London) var breskur tónlistarmaður. Hann reis til frægðar með tvíeykinu Wham! á 9. áratugnum og hélt svo áfram með sólóferil.",2016,5,1),
    ("Meat Loaf",1947,"Meat Loaf, Marvin Lee Aday, Michael Lee Aday eru þrjú nöfn sem þessi einstaki tónlistarmaður hefur. Hann hefur unnið margoft með Jim Steinman, sem skrifaði til dæmis Holding out for a Hero með Bonnie Tyler.",NULL,3,1),
    ("Queen",1970,"Queen var bresk rokkhljómsveit sem kom fram á sjónarsviðið 1970. Hún var stofnuð af Freddie Mercury söngvara sveitarinnar, Roger Taylor trommuleikara og Brian May gítarleikara í London sama ár. Félagarnir fengu ýmsa bassaleikara til liðs við sig áður en John Deacon var ráðinn bassaleikari sveitarinnar 1971. Hljómsveitin var með allra vinsælustu rokk-hljómsveitunum á áttunda og níunda áratugnum og frá henni hafa komið heimsþekkt lög á borð við „Bohemian Rhapsody“, „We Will Rock You“ og „Killer Queen“.",NULL,4,2);
