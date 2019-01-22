drop schema sportboxru;

CREATE SCHEMA sportboxru;

CREATE TABLE sportboxru.club ( 
   club_id INT NOT NULL, 
   title VARCHAR(70) NOT NULL,
   PRIMARY KEY (club_id)
);

CREATE TABLE sportboxru.champ ( 
   champ_id INT NOT NULL, 
   title VARCHAR(70) NOT NULL, 
   PRIMARY KEY (champ_id)
);

CREATE TABLE sportboxru.position ( 
   position_id INT NOT NULL, 
   title VARCHAR(50) NOT NULL,
   PRIMARY KEY (position_id)
);

CREATE TABLE sportboxru.players ( 
   player_id INT NOT NULL, 
   fname VARCHAR(50) NOT NULL, 
   lname VARCHAR(20) NOT NULL,
   age INT NOT NULL,
   position_id INT NOT NULL,
   club_id INT NOT NULL,
   PRIMARY KEY (player_id),
   FOREIGN KEY (position_id)
	REFERENCES sportboxru.position(position_id),
	FOREIGN KEY (club_id)
	REFERENCES sportboxru.club(club_id)
);



CREATE TABLE sportboxru.champ2club ( 
   champ_id INT NOT NULL, 
   club_id INT NOT NULL, 
   FOREIGN KEY (champ_id)
	REFERENCES sportboxru.champ(champ_id),
	FOREIGN KEY (club_id)
	REFERENCES sportboxru.club(club_id)
);


CREATE TABLE sportboxru.club_members ( 
   club_member INT NOT NULL, 
   fname VARCHAR(50) NOT NULL, 
   lname VARCHAR(20) NOT NULL,
   club_id INT NOT NULL,
   severity INT NOT NULL,
   PRIMARY KEY (club_member),
   FOREIGN KEY (club_id)
	REFERENCES sportboxru.club(club_id)
);

/* ========================================================================== */

drop schema soccerru;

CREATE SCHEMA soccerru;

CREATE TABLE soccerru.league ( 
   league_id INT NOT NULL, 
   title VARCHAR(70) NOT NULL, 
   type VARCHAR(20) NOT NULL,
   PRIMARY KEY (league_id)
);

CREATE TABLE soccerru.position ( 
   position_id INT NOT NULL, 
   name VARCHAR(50) NOT NULL,
   PRIMARY KEY (position_id)
);

CREATE TABLE soccerru.person ( 
   person_id INT NOT NULL, 
   firstname VARCHAR(50) NOT NULL, 
   lastname VARCHAR(20) NOT NULL,  
   PRIMARY KEY (person_id)
);

CREATE TABLE soccerru.fc ( 
   fc_id INT NOT NULL, 
   name VARCHAR(70) NOT NULL,
   league INT NOT NULL,
   head_coach_id INT NOT NULL,   
   PRIMARY KEY (fc_id),
   FOREIGN KEY (head_coach_id)
	REFERENCES soccerru.person(person_id),
	FOREIGN KEY (league)
	REFERENCES soccerru.league(league_id)
);


CREATE TABLE soccerru.players ( 
   player_id INT NOT NULL, 
   firstname VARCHAR(50) NOT NULL, 
   lastname VARCHAR(20) NOT NULL,
   age INT NOT NULL,
   position VARCHAR(70) NOT NULL,
   PRIMARY KEY (player_id),
);

CREATE TABLE soccerru.club2players ( 
   fc_id INT NOT NULL, 
   player_id INT NOT NULL, 
   FOREIGN KEY (fc_id)
	REFERENCES fc(fc_id),
	FOREIGN KEY (player_id)
	REFERENCES soccerru.players(player_id)
);

CREATE TABLE soccerru.club2assistance ( 
   fc_id INT NOT NULL, 
   person_id INT NOT NULL, 
   FOREIGN KEY (fc_id)
	REFERENCES fc(fc_id),
	FOREIGN KEY (person_id)
	REFERENCES soccerru.person(person_id)
);

CREATE TABLE soccerru.club2manager ( 
   fc_id INT NOT NULL, 
   person_id INT NOT NULL, 
   FOREIGN KEY (fc_id)
	REFERENCES fc(fc_id),
	FOREIGN KEY (person_id)
	REFERENCES soccerru.person(person_id)
);
