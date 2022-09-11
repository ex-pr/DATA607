CREATE DATABASE rating;
USE rating;
CREATE TABLE rating (
 name_response varchar(100),
 movie_name varchar(100),
 rating int
);
-- create table and fill it in with names and movies/ratings
INSERT INTO rating 
VALUES 
-- ('Anna', 'MINIONS. THE RISE OF GRU', 3),
('Alex', 'MINIONS. THE RISE OF GRU', 2),
('Inna', 'MINIONS. THE RISE OF GRU', 4),
('Dan', 'MINIONS. THE RISE OF GRU', 3),
('Lucy', 'MINIONS. THE RISE OF GRU', NULL),

('Anna', 'JURASSIC WORLD DOMINION', 4),
('Alex', 'JURASSIC WORLD DOMINION', 3),
('Inna', 'JURASSIC WORLD DOMINION', NULL),
('Dan', 'JURASSIC WORLD DOMINION', 3),
('Lucy', 'JURASSIC WORLD DOMINION', 4),

('Anna', 'ROGUE ONE: A STAR WARS STORY', NULL),
('Alex', 'ROGUE ONE: A STAR WARS STORY', 5),
('Inna', 'ROGUE ONE: A STAR WARS STORY', 1),
('Dan', 'ROGUE ONE: A STAR WARS STORY', 3),
('Lucy', 'ROGUE ONE: A STAR WARS STORY', NULL),

('Anna', 'SPIDER-MAN: NO WAY HOME', 5),
('Alex', 'SPIDER-MAN: NO WAY HOME', 5),
('Inna', 'SPIDER-MAN: NO WAY HOME', 4),
('Dan', 'SPIDER-MAN: NO WAY HOME', 5),
('Lucy', 'SPIDER-MAN: NO WAY HOME', 4),

('Anna', 'ORPHAN: FIRST KILL', NULL),
('Alex', 'ORPHAN: FIRST KILL', 1),
('Inna', 'ORPHAN: FIRST KILL', NULL),
('Dan', 'ORPHAN: FIRST KILL', 2),
('Lucy', 'ORPHAN: FIRST KILL', NULL),

 ('Anna', 'ELVIS', 4),
('Alex', 'ELVIS', 3),
('Inna', 'ELVIS', 3),
('Dan', 'ELVIS', 4),
('Lucy', 'ELVIS', NULL);

-- find who did't watch which movie
SELECT *
FROM rating
WHERE rating IS NULL;

-- find average rating for each movie and put it desc order
SELECT movie_name, AVG(rating) AS rating_avg
FROM rating 
GROUP BY movie_name;

