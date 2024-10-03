use okbro;

CREATE TABLE pokemon (
    pokemon_id INT PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(20),
    hp INT,
    attack INT,
    defense INT,
    speed INT
);

CREATE TABLE trainer (
    trainer_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO pokemon (pokemon_id, name, type, hp, attack, defense, speed)
VALUES
(1, 'Bulbasaur', 'Grass', 45, 49, 49, 45),
(2, 'Ivysaur', 'Grass', 60, 62, 63, 60),
(3, 'Venusaur', 'Grass', 80, 82, 83, 80),
(4, 'Charmander', 'Fire', 39, 52, 43, 65),
(5, 'Charmeleon', 'Fire', 58, 64, 58, 80),
(6, 'Charizard', 'Fire', 78, 84, 78, 100),
(7, 'Squirtle', 'Water', 44, 48, 65, 43),
(8, 'Wartortle', 'Water', 59, 63, 80, 58),
(9, 'Blastoise', 'Water', 79, 83, 100, 78),
(10, 'Pikachu', 'Electric', 35, 55, 40, 90),
(11, 'Raichu', 'Electric', 60, 90, 55, 110);

INSERT INTO trainer (trainer_id, first_name, last_name, city)
VALUES
(1, 'Ash', 'Ketchum', 'Pallet Town'),
(2, 'Misty', 'Williams', 'Cerulean City'),
(3, 'Brock', 'Harrison', 'Pewter City'),
(4, 'Gary', 'Oak', 'Pallet Town'),
(5, 'Erika', 'Green', 'Celadon City');

select DISTINCT type from pokemon;

select * from pokemon where attack between 50 and 80;

select name from pokemon where name like "c%";

SELECT name
FROM pokemon
WHERE name LIKE '%saur%';

SELECT name
FROM pokemon
WHERE name LIKE '____e____';

SELECT CONCAT(first_name, ' ', last_name) AS full_name, city FROM trainer;

SELECT name, type, attack
FROM pokemon
ORDER BY type ASC, attack DESC;

CREATE TABLE trainer_pokemon (
    trainer_id INT,
    pokemon_id INT,
    FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id)
);
