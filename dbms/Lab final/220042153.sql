use lab_final;
DROP TABLE IF EXISTS owner;
DROP TABLE IF EXISTS pokemon_attacks;
DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS trainer;
DROP TABLE IF EXISTS attacks;

CREATE TABLE pokemon (
    pokemon_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(20) NOT NULL,
    hp INT CHECK (hp > 0),
    attack INT CHECK (attack > 0),
    defense INT CHECK (defense > 0),
    speed INT CHECK (speed > 0)
);

CREATE TABLE trainer (
    trainer_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL
);

CREATE TABLE attacks (
    attack_id INT PRIMARY KEY,
    attack_name VARCHAR(50) NOT NULL,
    attack_type VARCHAR(20) NOT NULL,
    attack_power INT CHECK (attack_power > 0)
);

CREATE TABLE owner (
    trainer_id INT,
    pokemon_id INT,
    FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id),
    PRIMARY KEY (trainer_id, pokemon_id)
);

CREATE TABLE pokemon_attacks (
    pokemon_id INT,
    attack_id INT,
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id),
    FOREIGN KEY (attack_id) REFERENCES attacks(attack_id),
    PRIMARY KEY (pokemon_id, attack_id)
);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 45, 49, 49, 45);
INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 60, 62, 63, 60);
INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 80, 82, 83, 80);
INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 39, 52, 43, 65);
INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 58, 64, 58, 80);
INSERT INTO pokemon VALUES (6, 'Charizard', 'Fire', 78, 84, 78, 100);
INSERT INTO pokemon VALUES (7, 'Squirtle', 'Water', 44, 48, 65, 43);
INSERT INTO pokemon VALUES (8, 'Wartortle', 'Water', 59, 63, 80, 58);
INSERT INTO pokemon VALUES (9, 'Blastoise', 'Water', 79, 83, 100, 78);
INSERT INTO pokemon VALUES (10, 'Pikachu', 'Electric', 35, 55, 40, 90);
INSERT INTO pokemon VALUES (11, 'Raichu', 'Electric', 60, 90, 55, 110);
INSERT INTO pokemon VALUES (12, 'Caterpie', 'Bug', 45, 30, 35, 45);
INSERT INTO pokemon VALUES (13, 'Metapod', 'Bug', 50, 20, 55, 30);
INSERT INTO pokemon VALUES (14, 'Butterfree', 'Bug', 60, 45, 50, 70);
INSERT INTO pokemon VALUES (15, 'Weedle', 'Bug', 40, 35, 30, 50);
INSERT INTO pokemon VALUES (16, 'Kakuna', 'Bug', 45, 25, 50, 35);
INSERT INTO pokemon VALUES (17, 'Beedrill', 'Bug', 65, 90, 40, 75);
INSERT INTO pokemon VALUES (18, 'Pidgey', 'Normal', 40, 45, 40, 56);
INSERT INTO pokemon VALUES (19, 'Pidgeotto', 'Normal', 63, 60, 55, 71);
INSERT INTO pokemon VALUES (20, 'Pidgeot', 'Normal', 83, 80, 75, 101);
INSERT INTO pokemon VALUES (21, 'Sandshrew', 'Ground', 50, 75, 85, 40);
INSERT INTO pokemon VALUES (22, 'Sandslash', 'Ground', 75, 100, 110, 65);
INSERT INTO pokemon VALUES (23, 'Nidoran', 'Poison', 55, 47, 52, 41);
INSERT INTO pokemon VALUES (24, 'Nidorina', 'Poison', 70, 62, 67, 56);
INSERT INTO pokemon VALUES (25, 'Nidoqueen', 'Poison', 90, 92, 87, 76);

INSERT INTO trainer VALUES (1, 'Ash', 'Ketchum', 'Pallet Town');
INSERT INTO trainer VALUES (2, 'Misty', 'Williams', 'Cerulean City');
INSERT INTO trainer VALUES (3, 'Brock', 'Harrison', 'Pewter City');
INSERT INTO trainer VALUES (4, 'Gary', 'Oak', 'Pallet Town');
INSERT INTO trainer VALUES (5, 'Erika', 'Green', 'Celadon City');
INSERT INTO trainer VALUES (6, 'Jessie', 'Rocket', 'Viridian City');
INSERT INTO trainer VALUES (7, 'James', 'Rocket', 'Viridian City');
INSERT INTO trainer VALUES (8, 'Giovanni', 'Sakaki', 'Viridian City');
INSERT INTO trainer VALUES (9, 'Lance', 'Dragon', 'Blackthorn City');
INSERT INTO trainer VALUES (10, 'Steven', 'Stone', 'Mossdeep City');
INSERT INTO trainer VALUES (11, 'Cynthia', 'Henson', 'Celestic Town');
INSERT INTO trainer VALUES (12, 'Koga', 'Ishihara', 'Fuchsia City');
INSERT INTO trainer VALUES (13, 'Roxanne', 'McHugh', 'Rustboro City');
INSERT INTO trainer VALUES (14, 'Wallace', 'Norris', 'Sootopolis City');
INSERT INTO trainer VALUES (15, 'Clair', 'Klein', 'Blackthorn City');

INSERT INTO attacks VALUES (1, 'Tackle', 'Normal', 40);
INSERT INTO attacks VALUES (2, 'Vine Whip', 'Grass', 45);
INSERT INTO attacks VALUES (3, 'Flamethrower', 'Fire', 90);
INSERT INTO attacks VALUES (4, 'Water Gun', 'Water', 40);
INSERT INTO attacks VALUES (5, 'Thunderbolt', 'Electric', 90);
INSERT INTO attacks VALUES (6, 'Bug Bite', 'Bug', 60);
INSERT INTO attacks VALUES (7, 'Earthquake', 'Ground', 100);
INSERT INTO attacks VALUES (8, 'Poison Sting', 'Poison', 15);
INSERT INTO attacks VALUES (9, 'Rock Slide', 'Rock', 75);
INSERT INTO attacks VALUES (10, 'Ice Beam', 'Ice', 90);
INSERT INTO attacks VALUES (11, 'Dragon Claw', 'Dragon', 80);

INSERT INTO owner VALUES (1, 1);
INSERT INTO owner VALUES (1, 4);
INSERT INTO owner VALUES (2, 7);
INSERT INTO owner VALUES (3, 18);
INSERT INTO owner VALUES (4, 6);
INSERT INTO owner VALUES (5, 3);
INSERT INTO owner VALUES (6, 20);
INSERT INTO owner VALUES (7, 8);
INSERT INTO owner VALUES (8, 9);
INSERT INTO owner VALUES (9, 5);
INSERT INTO owner VALUES (10, 10);
INSERT INTO owner VALUES (11, 14);
INSERT INTO owner VALUES (12, 23);
INSERT INTO owner VALUES (13, 21);
INSERT INTO owner VALUES (14, 22);
INSERT INTO owner VALUES (15, 25);

INSERT INTO pokemon_attacks VALUES (1, 2);
INSERT INTO pokemon_attacks VALUES (1, 6);
INSERT INTO pokemon_attacks VALUES (4, 3);
INSERT INTO pokemon_attacks VALUES (4, 5);
INSERT INTO pokemon_attacks VALUES (7, 4);
INSERT INTO pokemon_attacks VALUES (7, 9);
INSERT INTO pokemon_attacks VALUES (6, 5);
INSERT INTO pokemon_attacks VALUES (6, 7);
INSERT INTO pokemon_attacks VALUES (12, 8);
INSERT INTO pokemon_attacks VALUES (14, 2);
INSERT INTO pokemon_attacks VALUES (17, 6);
INSERT INTO pokemon_attacks VALUES (20, 3);
INSERT INTO pokemon_attacks VALUES (25, 11);
INSERT INTO pokemon_attacks VALUES (2, 5);
INSERT INTO pokemon_attacks VALUES (9, 10);
INSERT INTO pokemon_attacks VALUES (13, 7);
INSERT INTO pokemon_attacks VALUES (18, 1);
INSERT INTO pokemon_attacks VALUES (22, 9);

-- task1
select name, type, max(hp) from pokemon
group by name,type;

-- task 2

select name, (hp*0.8+attack*1.2+defense*10+speed*1.5) as combat_rating 
from pokemon;


-- task 3
select t.first_name, t.last_name, t.trainer_id
from trainer t 
join owner o on t.trainer_id = o.trainer_id
join pokemon p on p.pokemon_id=o.pokemon_id
where p.name like "%saur%" and t.first_name like "_s%" ;


-- task 4
select t.first_name, t.last_name, t.trainer_id
from trainer t 
join owner o on t.trainer_id = o.trainer_id
join pokemon p on p.pokemon_id=o.pokemon_id
where p.type="electric" and p.speed>40;

-- task 5



select p.name, a.attack_name, a.attack_power
from pokemon p
left join pokemon_attacks pa
on p.pokemon_id = pa.pokemon_id
left join  attacks  a
on  pa.attack_id = a.attack_id;



-- task 6

select t.first_name, t.last_name, t.trainer_id,p.name,
 max(p.hp*0.8+p.attack*1.2+p.defense*10+p.speed*1.5) as combat_rating 
from trainer t 
join owner o on t.trainer_id = o.trainer_id
join pokemon p on p.pokemon_id=o.pokemon_id
group by t.trainer_id,p.pokemon_id;

-- task 7
DELIMITER //
 CREATE PROCEDURE avg_atk()
 BEGIN
  select p.type,  count(p.pokemon_id) / count(a.attack_type) as avg_atk 
  from pokemon p
  join pokemon_attacks pa
  on p.pokemon_id = pa.pokemon_id
  join  attacks  a
  on  pa.attack_id = a.attack_id
  group by p.type ;
 END //
 DELIMITER ;
 
 call avg_atk();


-- task 8

  DELIMITER //
 CREATE FUNCTION calculate_square(n INT)
 RETURNS INT
 DETERMINISTIC
 NO SQL
 BEGIN
 update pokemon p
set p.speed =p.speed+n 
join owner o on t.trainer_id = o.trainer_id
join pokemon p on p.pokemon_id = o.pokemon_id
where p.type="grass" and t.city="pallet town";
 END //
 DELIMITER ;
  SELECT calculate_square(5) AS square;
  
  -- task 11
  set pokemon_id to 12 where
  
