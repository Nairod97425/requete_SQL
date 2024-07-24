-- 1 Nom et année de naissance des artistes nés avant 1950.
SELECT nom, annéeNaiss 
FROM artiste 
WHERE annéeNaiss < 1950;
-- nom	annéeNaiss	
-- Lucas	1944	
-- Ford	1942	
-- Cushing	1913	
-- Daniels	1946	
-- Brooks	1947	
-- Welles	1915	
-- Deneuve	1943	
-- Holm	1931	
-- Lang	1890	
-- Lee	1922	
-- Baker	1934	
-- Carradine	1936	
-- Eastwood	1930	
-- Freeman	1937	
-- Hackman	1930	
-- Harris	1930	
-- Wilkinson	1948	
-- Cronenberg	1943	
-- Kubrick	1928	
-- Dullea	1936	
-- Lockwood	1937	
-- Sylvester	1922	
-- Rain	1928	
-- Plummer	1929	
-- Glenn	1941	
-- Total 540

-- 2 Titre de tous les drames.
--    Affichage des lignes 0 - 24 (total de 83, traitement en 0,0030 seconde(s).)
SELECT titre 
FROM film 
WHERE genre = 'Drame';

-- titre	
-- Apocalypse Now	
-- A History of Violence	
-- Match point	
-- Le Secret de Brokeback Mountain	
-- Breaking the Waves	
-- Les Quatre Cents Coups	
-- Lost in Translation	
-- The Dark Knight : Le Chevalier noir	
-- Le Nom de la rose	
-- Rebecca	
-- Le Parrain	
-- Le Parrain, 2ème partie	
-- Le Mépris	
-- À bout de souffle	
-- Casablanca	
-- Le Bateau	
-- Le Pianiste	
-- La liste de Schindler	
-- Vol au dessus d'un nid de coucou	
-- Fight Club	
-- Fenêtre sur cour	
-- Solaris	
-- Titanic	
-- Boulevard du Crépuscule	
-- Usual Suspects	

-- 3 Quels rôles a joué Bruce Willis.
-- Affichage des lignes 0 -  4 (total de 5, traitement en 0,0060 seconde(s).)
SELECT f.titre, r.nomRôle
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce';

-- titre	                    nomRôle	
-- Piège de cristal	            John McClane	
-- Pulp Fiction	Butch           Coolidge	
-- Die Hard 4 : Retour en enfer	John McClane	
-- Une Journée en enfer	        John McClane	
-- 58 minutes pour vivre	    John McClane	

-- 4 Qui est le réalisateur de Memento.
--    Affichage des lignes 0 -  0 (total de 1, traitement en 0,0026 seconde(s).)
SELECT a.nom, a.prénom
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE f.titre = 'Memento';

-- Nolan	Christopher	

-- 5 Quelles sont les notes obtenues par le film Fargo
--  Affichage des lignes 0 -  0 (total de 1, traitement en 0,0065 seconde(s).)


SELECT n.note
FROM notation n
JOIN film f ON n.idFilm = f.idFilm
WHERE f.titre = 'Fargo';

-- 6	


-- 6 Qui joue le role de chewbacca?
-- Affichage des lignes 0 -  4 (total de 5, traitement en 0,0263 seconde(s).)


SELECT a.nom, a.prénom
FROM role r
JOIN artiste a ON r.idActeur = a.idArtiste
WHERE r.nomRôle = 'Chewbacca';

-- nom	prénom	
-- Mayhew	Peter	
-- Mayhew	Peter	
-- Mayhew	Peter	
-- Mayhew	Peter	
-- Suotamo	Joonas	

-- 7 Dans quels films Bruce Willis a-t-il joué le rôle de John McClane?
-- Affichage des lignes 0 -  3 (total de 4, traitement en 0,0061 seconde(s).)

SELECT f.titre
FROM role r
JOIN artiste a ON r.idActeur = a.idArtiste
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Willis' AND a.prénom = 'Bruce' AND r.nomRôle = 'John McClane';

-- titre	
-- Piège de cristal	
-- Die Hard 4 : Retour en enfer	
-- Une Journée en enfer	
-- 58 minutes pour vivre	

-- 8 Nom des acteurs de 'Sueurs froides'
-- Affichage des lignes 0 -  2 (total de 3, traitement en 0,0257 seconde(s).)

SELECT a.nom, a.prénom
FROM role r
JOIN artiste a ON r.idActeur = a.idArtiste
JOIN film f ON r.idFilm = f.idFilm
WHERE f.titre = 'Sueurs froides';

-- nom	prénom	
-- Stewart	James	
-- Novak	Kim	
-- Bel Geddes	Barbara	

-- 9 Quelles sont les films notés par l'internaute Prénom 0 Nom0
-- Affichage des lignes 0 - 24 (total de 30, traitement en 0,0078 seconde(s).)


SELECT f.titre
FROM notation n
JOIN film f ON n.idFilm = f.idFilm
JOIN internaute i ON n.email = i.email
WHERE i.prénom = 'Prénom0' AND i.nom = 'Nom0';


-- titre	
-- Eternal Sunshine of the Spotless Mind	
-- Les Aventuriers de l'arche perdue	
-- Le Secret de Brokeback Mountain	
-- The Dark Knight : Le Chevalier noir	
-- Minority Report	
-- Terminator	
-- Le Parrain, 3ème partie	
-- Batman Begins	
-- Jurassic Park	
-- Eyes Wide Shut	
-- Kill Bill : Volume 2	
-- Reservoir Dogs	
-- Fight Club	
-- Piège de cristal	
-- Matrix Reloaded	
-- Pulp Fiction	
-- Shining	
-- Volte/Face	
-- Seven	
-- Rencontres du troisième type	
-- L'Empire contre-attaque	
-- Star Wars, épisode I - La Menace fantôme	
-- RoboCop	
-- No Country For Old Men	
-- Inception	

-- 10 Films dont le réalisateur est Tim Burton, et l’un des acteurs Johnny Depp.
-- Affichage des lignes 0 -  0 (total de 1, traitement en 0,0282 seconde(s).)


SELECT DISTINCT f.titre
FROM film f
JOIN artiste a1 ON f.idRéalisateur = a1.idArtiste
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a2 ON r.idActeur = a2.idArtiste
WHERE a1.nom = 'Burton' AND a1.prénom = 'Tim'
  AND a2.nom = 'Depp' AND a2.prénom = 'Johnny';

-- Sleepy Hollow, La Légende du cavalier sans tête	


-- 11 Titre des films dans lesquels a joué ́Woody Allen. Donner aussi le rôle.
-- Affichage des lignes 0 -  3 (total de 4, traitement en 0,0047 seconde(s).)


SELECT f.titre, r.nomRôle
FROM role r
JOIN artiste a ON r.idActeur = a.idArtiste
JOIN film f ON r.idFilm = f.idFilm
WHERE a.nom = 'Allen' AND a.prénom = 'Woody';

-- titre	nomRôle	
-- Scoop	Sid Waterman	
-- Manhattan	Isaac Davis	
-- Annie Hall	Alvy Singer	
-- Maris et femmes	Prof. Gabriel 'Gabe' Roth	

-- 12 Quel metteur en scène a tourné dans ses propres films ? Donner le nom, le rôle et le titre des films.
-- Affichage des lignes 0 - 16 (total de 17, traitement en 0,0014 seconde(s).)


SELECT a.nom, a.prénom, r.nomRôle, f.titre
FROM film f
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a ON r.idActeur = a.idArtiste
WHERE f.idRéalisateur = a.idArtiste;


-- nom	prénom	nomRôle	titre	
-- Eastwood	Clint	Bill Munny	Impitoyable	
-- Tarantino	Quentin	Mr. Brown	Reservoir Dogs	
-- Allen	Woody	Sid Waterman	Scoop	
-- Tarantino	Quentin	Jimmie Dimmick	Pulp Fiction	
-- Allen	Woody	Isaac Davis	Manhattan	
-- Allen	Woody	Alvy Singer	Annie Hall	
-- Kelly	Gene	Don Lockwood	Chantons sous la pluie	
-- Chaplin	Charlie	Adenoid Hynkel, Dictator of Tomania / A Jewish Bar...	Le dictateur	
-- Polanski	Roman	Alfred, Assistent des Professors	Le Bal des vampires	
-- Chaplin	Charlie	A factory worker	Les temps modernes	
-- Welles	Orson	Michael O'Hara	La Dame de Shanghai	
-- Lee Jones	Tommy	Pete Perkins	Trois enterrements	
-- Chaplin	Charlie	A Tramp	Le Kid	
-- Allen	Woody	Prof. Gabriel 'Gabe' Roth	Maris et femmes	
-- Chaplin	Charlie	Calvero	Les feux de la rampe	
-- Cassavetes	John	Maurice Aarons	Opening Night	
-- Podalydès	Bruno	Michel	Comme un avion	


-- 13 Titre des films de Quentin Tarantino dans lesquels il n’a pasjoué
--  Affichage des lignes 0 -  4 (total de 5, traitement en 0,0023 seconde(s).)


SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE a.nom = 'Tarantino' AND a.prénom = 'Quentin'
AND f.idFilm NOT IN (
    SELECT r.idFilm
    FROM role r
    JOIN artiste a2 ON r.idActeur = a2.idArtiste
    WHERE a2.nom = 'Tarantino' AND a2.prénom = 'Quentin'
);


-- titre	
-- Kill Bill : Volume 1	
-- Jackie Brown	
-- Kill Bill : Volume 2	
-- Inglourious Basterds	
-- Django Unchained	

-- 14 Quel metteur en scène a tourné ́en tant qu’acteur ? Donner le nom, le rôle et le titre des films dans lesquels cet artiste a joué.
-- Affichage des lignes 0 - 26 (total de 27, traitement en 0,0023 seconde(s).)


SELECT DISTINCT a.nom, a.prénom, r.nomRôle, f.titre
FROM film f
JOIN role r ON f.idFilm = r.idFilm
JOIN artiste a ON r.idActeur = a.idArtiste
WHERE a.idArtiste IN (
    SELECT DISTINCT idRéalisateur
    FROM film
);


-- nom	prénom	nomRôle	titre	
-- Eastwood	Clint	Bill Munny	Impitoyable	
-- Coppola	Sofia	Mary Corleone	Le Parrain, 3ème partie	
-- Lang	Fritz	Himself	Le Mépris	
-- Pollack	Sydney	Victor Ziegler	Eyes Wide Shut	
-- Eastwood	Clint	Blondie	Le Bon, la Brute et le Truand	
-- Tarantino	Quentin	Mr. Brown	Reservoir Dogs	
-- Allen	Woody	Sid Waterman	Scoop	
-- Tarantino	Quentin	Jimmie Dimmick	Pulp Fiction	
-- Allen	Woody	Isaac Davis	Manhattan	
-- Allen	Woody	Alvy Singer	Annie Hall	
-- Cassavetes	John	Guy Woodhouse	Rosemary's Baby	
-- Huston	John	Noah Cross	Chinatown	
-- Truffaut	François	Claude Lacombe	Rencontres du troisième type	
-- Kelly	Gene	Don Lockwood	Chantons sous la pluie	
-- Chaplin	Charlie	Adenoid Hynkel, Dictator of Tomania / A Jewish Bar...	Le dictateur	
-- Polanski	Roman	Alfred, Assistent des Professors	Le Bal des vampires	
-- Chaplin	Charlie	A factory worker	Les temps modernes	
-- Welles	Orson	Michael O'Hara	La Dame de Shanghai	
-- Lee Jones	Tommy	Samuel Gerard	Le Fugitif	
-- Lee Jones	Tommy	Sheriff Ed Tom Bell	No Country For Old Men	
-- Lee Jones	Tommy	Pete Perkins	Trois enterrements	
-- Chaplin	Charlie	A Tramp	Le Kid	
-- Allen	Woody	Prof. Gabriel 'Gabe' Roth	Maris et femmes	
-- Pollack	Sydney	Jack	Maris et femmes	
-- Chaplin	Charlie	Calvero	Les feux de la rampe	
-- Cassavetes	John	Maurice Aarons	Opening Night	
-- Podalydès	Bruno	Michel	Comme un avion	

-- 15 Donnez les films de Hitchcock sans James Stewart
-- Affichage des lignes 0 -  6 (total de 7, traitement en 0,0015 seconde(s).)


SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE a.nom = 'Hitchcock' AND a.prénom = 'Alfred'
  AND f.idFilm NOT IN (
    SELECT r.idFilm
    FROM role r
    JOIN artiste a2 ON r.idActeur = a2.idArtiste
    WHERE a2.nom = 'Stewart' AND a2.prénom = 'James'
);


-- titre	
-- La Mort aux trousses	
-- Rebecca	
-- Les Enchaînés	
-- Psychose	
-- Les Oiseaux	
-- L'Inconnu du Nord-Express	
-- Soupçons	

-- 16 Dans quels films le réalisateur a-t-il le même prénom que l’un des interprètes ? (titre, nom du réalisateur, nom de l’interprète). Le réalisateur et l’interprète ne doivent pas être la même personne.
-- Affichage des lignes 0 -  6 (total de 7, traitement en 0,0015 seconde(s).)


SELECT f.titre
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
WHERE a.nom = 'Hitchcock' AND a.prénom = 'Alfred'
  AND f.idFilm NOT IN (
    SELECT r.idFilm
    FROM role r
    JOIN artiste a2 ON r.idActeur = a2.idArtiste
    WHERE a2.nom = 'Stewart' AND a2.prénom = 'James'
);


-- titre	
-- La Mort aux trousses	
-- Rebecca	
-- Les Enchaînés	
-- Psychose	
-- Les Oiseaux	
-- L'Inconnu du Nord-Express	
-- Soupçons	

-- 17 Les films sans rôle
-- Affichage des lignes 0 -  0 (total de 1, traitement en 0,0009 seconde(s).)


SELECT f.titre
FROM film f
LEFT JOIN role r ON f.idFilm = r.idFilm
WHERE r.idFilm IS NULL;

-- La Guerre des Mondes	

-- 18 Quelles sont les films non notés par l'internaute Prénom1 Nom1
-- Affichage des lignes 0 - 24 (total de 195, traitement en 0,0005 seconde(s).)


SELECT f.titre
FROM film f
WHERE f.idFilm NOT IN (
    SELECT n.idFilm
    FROM notation n
    JOIN internaute i ON n.email = i.email
    WHERE i.prénom = 'Prénom10000' AND i.nom = 'Nom10000'
);


-- titre	
-- La Guerre des étoiles	
-- Apocalypse Now	
-- Impitoyable	
-- Eternal Sunshine of the Spotless Mind	
-- A History of Violence	
-- 2001 l'Odyssée de l'espace	
-- La Guerre des Mondes	
-- Blade Runner	
-- Indiana Jones et le temple maudit	
-- Taxi Driver	
-- Match point	
-- Le Secret de Brokeback Mountain	
-- Breaking the Waves	
-- Tigre et Dragon	
-- Les Quatre Cents Coups	
-- Lost in Translation	
-- The Dark Knight : Le Chevalier noir	
-- Jackie Brown	
-- Le Nom de la rose	
-- La Mort aux trousses	
-- Le Parrain	
-- Certains l'aiment chaud	
-- Le Parrain, 2ème partie	
-- Le Parrain, 3ème partie	
-- L'Ultime Razzia	

-- 19 Quels acteurs n’ont jamais réalisé de film ?
-- Affichage des lignes 0 - 24 (total de 986, traitement en 0,0016 seconde(s).)


SELECT DISTINCT a.nom, a.prénom
FROM artiste a
JOIN role r ON a.idArtiste = r.idActeur
WHERE a.idArtiste NOT IN (
    SELECT DISTINCT f.idRéalisateur
    FROM film f
);


-- nom	prénom	
-- 	Bourvil	
-- 	Terry-Thomas	
-- A. Fox	Vivica	
-- Adames	John	
-- Adams	Amy	
-- Affleck	Casey	
-- Aimée	Anouk	
-- Alexander	Jane	
-- Ali	Mahershala	
-- Allen	Joan	
-- Allen	Karen	
-- Allen	Nancy	
-- Altman	Allen	
-- Alwyn	Joe	
-- Amalric	Mathieu	
-- Amiot	Paul	
-- Amis	Suzy	
-- Anders	Glenn	
-- Anderson	Judith	
-- Anderson	Paul	
-- Andersson	Bibi	
-- Anglade	Jean-Hugues	
-- Ann Miller	Penelope	
-- Appietto	Cédric	
-- Arditi	Pierre	

-- 20 Quelle est la moyenne des notes de Memento
-- Affichage des lignes 0 -  0 (total de 1, traitement en 0,0064 seconde(s).)


SELECT AVG(n.note) AS moyenne_note
FROM notation n
JOIN film f ON n.idFilm = f.idFilm
WHERE f.titre = 'Memento';

-- 8.0000	

-- 21 id, nom et prénom des réalisateurs, et nombre de films qu’ils ont tournés.
-- Affichage des lignes 0 - 24 (total de 107, traitement en 0,0071 seconde(s).)


SELECT a.idArtiste, a.nom, a.prénom, COUNT(f.idFilm) AS nombre_films
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
GROUP BY a.idArtiste, a.nom, a.prénom;


-- idArtiste	nom	prénom	nombre_films	
-- 1	Lucas	George	5	
-- 39	Mendes	Sam	1	
-- 40	Welles	Orson	1	
-- 42	von Trier	Lars	2	
-- 68	Lang	Fritz	1	
-- 138	Tarantino	Quentin	7	
-- 190	Eastwood	Clint	1	
-- 201	Gondry	Michel	2	
-- 223	González Iñárritu	Alejandro	2	
-- 224	Cronenberg	David	4	
-- 240	Kubrick	Stanley	7	
-- 488	Spielberg	Steven	13	
-- 510	Burton	Tim	1	
-- 525	Nolan	Christopher	6	
-- 578	Scott	Ridley	6	
-- 638	Mann	Michael	5	
-- 793	Buñuel	Luis	1	
-- 1032	Scorsese	Martin	3	
-- 1090	McTiernan	John	2	
-- 1150	De Palma	Brian	1	
-- 1223	Coen	Joel	2	
-- 1224	Coen	Ethan	1	
-- 1243	Allen	Woody	8	
-- 1614	Lee	Ang	3	
-- 1650	Truffaut	François	3	

-- 22 Nom et prénom des réalisateurs qui ont tourné au moins deux films.
-- Affichage des lignes 0 - 24 (total de 46, traitement en 0,0011 seconde(s).)


SELECT a.nom, a.prénom
FROM film f
JOIN artiste a ON f.idRéalisateur = a.idArtiste
GROUP BY a.idArtiste, a.nom, a.prénom
HAVING COUNT(f.idFilm) >= 2;


-- nom	prénom	
-- Lucas	George	
-- von Trier	Lars	
-- Tarantino	Quentin	
-- Gondry	Michel	
-- González Iñárritu	Alejandro	
-- Cronenberg	David	
-- Kubrick	Stanley	
-- Spielberg	Steven	
-- Nolan	Christopher	
-- Scott	Ridley	
-- Mann	Michael	
-- Scorsese	Martin	
-- McTiernan	John	
-- Coen	Joel	
-- Allen	Woody	
-- Lee	Ang	
-- Truffaut	François	
-- Coppola	Sofia	
-- Ford Coppola	Francis	
-- Pollack	Sydney	
-- Hitchcock	Alfred	
-- Cameron	James	
-- Wilder	Billy	
-- Polanski	Roman	
-- Godard	Jean-Luc	

-- 23 Quels films ont une moyenne des notes supérieure à 7
-- Affichage des lignes 0 - 24 (total de 71, traitement en 0,0067 seconde(s).)


SELECT f.titre, AVG(n.note) AS moyenne_note
FROM film f
JOIN notation n ON f.idFilm = n.idFilm
GROUP BY f.idFilm, f.titre
HAVING AVG(n.note) > 7;


-- titre	moyenne_note	
-- Kill Bill : Volume 1	7.1250	
-- Apocalypse Now	8.5000	
-- Eternal Sunshine of the Spotless Mind	7.7500	
-- 2001 l'Odyssée de l'espace	8.2500	
-- Memento	8.0000	
-- Blade Runner	8.6667	
-- Les Aventuriers de l'arche perdue	8.0000	
-- Indiana Jones et la dernière croisade	7.7500	
-- Gladiator	7.2000	
-- Taxi Driver	7.5000	
-- Lost in Translation	8.0000	
-- The Dark Knight : Le Chevalier noir	8.0000	
-- Minority Report	7.3333	
-- Jackie Brown	8.0000	
-- Terminator	7.4000	
-- Rebecca	8.0000	
-- Le Parrain	7.5000	
-- Le Parrain, 2ème partie	7.8000	
-- Le Parrain, 3ème partie	7.6667	
-- Le Silence des Agneaux	8.6667	
-- Jurassic Park	7.5714	
-- Eyes Wide Shut	8.0000	
-- Le Bateau	7.3333	
-- Kill Bill : Volume 2	8.0000	
-- La liste de Schindler	7.5000	
