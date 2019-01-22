insert into sportboxru.club values(1, 'Paris Saint-Germain');
insert into sportboxru.club values(2, 'FC Barcelona');
insert into sportboxru.club values(3, 'Liverpool FC');
insert into sportboxru.club values(4, 'Tottenham Hotspur');
insert into sportboxru.club values(5, 'Atletico Madrid');

insert into sportboxru.champ values(1, 'Ligue 1');
insert into sportboxru.champ values(2, 'LaLiga');
insert into sportboxru.champ values(3, 'Premier League');
insert into sportboxru.champ values(4, 'Champions League');

insert into sportboxru.position values(1, 'GK');
insert into sportboxru.position values(2, 'LD');
insert into sportboxru.position values(3, 'CD');
insert into sportboxru.position values(4, 'RD');
insert into sportboxru.position values(5, 'CM');
insert into sportboxru.position values(6, 'LM');
insert into sportboxru.position values(7, 'RM');
insert into sportboxru.position values(8, 'FW');

insert into sportboxru.players values(1, 'Kylian', 'Mbappe', 20, 7, 1);
insert into sportboxru.players values(2, 'Neymar', 'Neymar', 26, 6, 1);
insert into sportboxru.players values(3, 'Lionel', 'Messi', 31, 7, 2);
insert into sportboxru.players values(4, 'Mohamed', 'Salah', 26, 7, 3);
insert into sportboxru.players values(5, 'Harry', 'Kane', 25, 8, 4);

insert into sportboxru.champ2club values(1,1);
insert into sportboxru.champ2club values(2,3);
insert into sportboxru.champ2club values(2,5);
insert into sportboxru.champ2club values(3,3);
insert into sportboxru.champ2club values(3,4);

insert into sportboxru.club_members values(1, 'Sudie', 'Bracero', 1, 1);
insert into sportboxru.club_members values(2, 'Breanne', 'Neumeister', 1, 2);
insert into sportboxru.club_members values(3, 'Wilma', 'Mowery ', 1, 2);
insert into sportboxru.club_members values(4, 'Thelma', 'Cheatam', 1, 3);
insert into sportboxru.club_members values(5, 'Callie ', 'Jonason ', 1, 4);
insert into sportboxru.club_members values(6, 'Desmond', 'Cather ', 1, 5);
insert into sportboxru.club_members values(7, 'Christopher', 'Franchi', 3, 1);
insert into sportboxru.club_members values(8, 'Les', 'Stringfield', 3, 2);
insert into sportboxru.club_members values(9, 'Darrin', 'Wolff ', 3, 2);
insert into sportboxru.club_members values(10, 'Dylan', 'Corbett', 3, 3);
insert into sportboxru.club_members values(11, 'Shelton', 'Mcgahee', 3, 4);
insert into sportboxru.club_members values(12, 'Barney', 'Boe', 3, 5);

/* ========================================================================== */

insert into soccerru.league values(1, 'Serie A', 1);
insert into soccerru.league values(2, 'LaLiga', 1);
insert into soccerru.league values(3, 'Premier League', 1);
insert into soccerru.league values(4, 'Champions League', 2);
insert into soccerru.league values(5, 'Bundesliga', 1);

insert into soccerru.position values(1, 'GoalKeeper');
insert into soccerru.position values(2, 'Defender');
insert into soccerru.position values(3, 'Midfielder');
insert into soccerru.position values(4, 'Winger');
insert into soccerru.position values(5, 'Forward');

insert into soccerru.person values(1, 'Diego', 'Simeone');
insert into soccerru.person values(2, 'Niko', 'Kovac');
insert into soccerru.person values(3, 'Pep', 'Guardiola');
insert into soccerru.person values(4, 'Maurizio', 'Sarri');
insert into soccerru.person values(5, 'Massimiliano', 'Allegri');
insert into soccerru.person values(6, 'Natasha', 'Melanson');
insert into soccerru.person values(7, 'Lu', 'Bragan');
insert into soccerru.person values(8, 'Hayden', 'Beatrice');
insert into soccerru.person values(9, 'Lamar', 'Grover');
insert into soccerru.person values(10, 'Bennie', 'Moreau');
insert into soccerru.person values(11, 'Tuan', 'Lank');
insert into soccerru.person values(12, 'Aldo', 'Westerberg');
insert into soccerru.person values(13, 'Danial', 'Calvi');
insert into soccerru.person values(14, 'Lee', 'Frankel');
insert into soccerru.person values(15, 'Hassan', 'Borey');

insert into soccerru.fc values(1, 'Atletico Madrid', 2, 1);
insert into soccerru.fc values(2, 'Manchester City', 3, 3);
insert into soccerru.fc values(3, 'Chelsea FC', 3, 4);
insert into soccerru.fc values(4, 'Juventus FC', 1, 5);
insert into soccerru.fc values(5, 'Bayern Munich', 5, 2);

insert into soccerru.players values(1, 'Antoine' ,'Griezmann', 27, 5);
insert into soccerru.players values(2, 'Kevin' ,'De Bruyne', 27, 3);
insert into soccerru.players values(3, 'Eden' ,'Hazard', 27, 4);
insert into soccerru.players values(4, 'Paulo' ,'Dybala', 25, 5);
insert into soccerru.players values(5, 'Joshua' , 'Kimmich', 23, 2);

insert into soccerru.club2players values(1, 1);
insert into soccerru.club2players values(2, 2);
insert into soccerru.club2players values(3, 3);
insert into soccerru.club2players values(4, 4);
insert into soccerru.club2players values(5, 5);

insert into soccerru.club2assistance values(4, 6);
insert into soccerru.club2assistance values(4, 7);
insert into soccerru.club2assistance values(4, 8);
insert into soccerru.club2assistance values(5, 9);
insert into soccerru.club2assistance values(5, 10);
insert into soccerru.club2assistance values(5, 11);

insert into soccerru.club2manager values(4, 12);
insert into soccerru.club2manager values(4, 13);
insert into soccerru.club2manager values(5, 14);
insert into soccerru.club2manager values(5, 15);