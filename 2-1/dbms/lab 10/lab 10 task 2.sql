use lab10;
-- Drop tables if they exist
DROP TABLE IF EXISTS pokemon_evolution;
DROP TABLE IF EXISTS trainer_pokemon;
DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS types;

-- Create tables
CREATE TABLE types (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE pokemon (
    pokemon_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    primary_type_id INT NOT NULL,
    secondary_type_id INT,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    speed INT NOT NULL,
    level INT DEFAULT 1,
    FOREIGN KEY (primary_type_id) REFERENCES types(type_id),
    FOREIGN KEY (secondary_type_id) REFERENCES types(type_id)
);

CREATE TABLE trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    hometown VARCHAR(50) NOT NULL,
    badges INT DEFAULT 0,
    is_gym_leader BOOLEAN DEFAULT FALSE
);

CREATE TABLE trainer_pokemon (
    trainer_id INT NOT NULL,
    pokemon_id INT NOT NULL,
    nickname VARCHAR(50),
    caught_date DATE NOT NULL,
    PRIMARY KEY (trainer_id, pokemon_id),
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id)
);

CREATE TABLE pokemon_evolution (
    base_pokemon_id INT NOT NULL,
    evolved_pokemon_id INT NOT NULL,
    min_level INT NOT NULL,
    PRIMARY KEY (base_pokemon_id, evolved_pokemon_id),
    FOREIGN KEY (base_pokemon_id) REFERENCES pokemon(pokemon_id),
    FOREIGN KEY (evolved_pokemon_id) REFERENCES pokemon(pokemon_id)
);

-- Insert Pokemon types
INSERT INTO types (type_name) VALUES
('Normal'), ('Fire'), ('Water'), ('Electric'), ('Grass'),
('Ice'), ('Fighting'), ('Poison'), ('Ground'), ('Flying'),
('Psychic'), ('Bug'), ('Rock'), ('Ghost'), ('Dragon'),
('Dark'), ('Steel'), ('Fairy');

-- Insert Pokemon
INSERT INTO pokemon (name, primary_type_id, secondary_type_id, hp, attack, defense, speed, level) VALUES
('Pikachu', 4, NULL, 35, 55, 40, 90, 25),
('Charizard', 2, 10, 78, 84, 78, 100, 36),
('Bulbasaur', 5, 8, 45, 49, 49, 45, 5),
('Squirtle', 3, NULL, 44, 48, 65, 43, 8),
('Jigglypuff', 1, 18, 115, 45, 20, 20, 18),
('Gengar', 14, 8, 60, 65, 60, 110, 40),
('Gyarados', 3, 10, 95, 125, 79, 81, 42),
('Machamp', 7, NULL, 90, 130, 80, 55, 45),
('Eevee', 1, NULL, 55, 55, 50, 55, 15),
('Snorlax', 1, NULL, 160, 110, 65, 30, 50);

-- Insert Trainers
INSERT INTO trainers (name, hometown, badges, is_gym_leader) VALUES
('Ash', 'Pallet Town', 8, FALSE),
('Misty', 'Cerulean City', 0, TRUE),
('Brock', 'Pewter City', 0, TRUE),
('Gary', 'Pallet Town', 10, FALSE),
('Lance', 'Blackthorn City', 0, FALSE);

-- Insert Trainer's Pokemon
INSERT INTO trainer_pokemon (trainer_id, pokemon_id, nickname, caught_date) VALUES
(1, 1, 'Pika', '2019-04-01'), -- Ash's Pikachu
(1, 2, 'Char', '2019-06-15'), -- Ash's Charizard
(1, 3, NULL, '2019-04-02'), -- Ash's Bulbasaur
(1, 4, NULL, '2019-05-10'), -- Ash's Squirtle
(2, 4, 'Bubbles', '2018-02-15'), -- Misty's Squirtle
(2, 7, 'Splash', '2018-03-20'), -- Misty's Gyarados
(3, 8, 'Flexo', '2017-11-25'), -- Brock's Machamp
(4, 2, 'Blaze', '2019-01-10'), -- Gary's Charizard
(4, 9, 'Fluffy', '2019-02-14'), -- Gary's Eevee
(5, 7, NULL, '2015-07-22'); -- Lance's Gyarados

-- Insert Evolution data
INSERT INTO pokemon_evolution (base_pokemon_id, evolved_pokemon_id, min_level) VALUES
(3, 2, 32), -- Bulbasaur to Charizard (not accurate but for example)
(4, 7, 34), -- Squirtle to Gyarados (not accurate but for example)
(9, 1, 20); -- Eevee to Pikachu (not accurate but for 


select * from pokemon;
drop function getstat;
DELIMITER //
CREATE FUNCTION getstat(p VARCHAR(100))
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
declare n INT;
 select hp+attack+defense+speed into n from pokemon where name = p;
RETURN n;
END //
DELIMITER ;


select getstat("Pikachu");











