use testdb;
create tablespace game_data_tbs
DATAFILE 'game_data_tbs01.dbf' size 50m;

create tablespace analytics_tbs
DATAFILE 'analytics_tbs01.dbf' size 50m;

ALTER DATABASE
DATAFILE 'game_data_tbs01.dbf' RESIZE 10m;

CREATE USER rpg_admin
IDENTIFIED BY rpg123
DEFAULT TABLESPACE  game_data_tbs ;

CREATE TABLE player (
id INT PRIMARY KEY,
username VARCHAR2(50),
region VARCHAR2(50)
) TABLESPACE game_data_tbs;


CREATE TABLE character (
id INT PRIMARY KEY,
name VARCHAR2(50),
player_id INT,
CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES player(id)
) TABLESPACE game_data_tbs;


CREATE TABLE item (
id INT PRIMARY KEY,
name VARCHAR2(50),
type VARCHAR2(50)
) TABLESPACE game_data_tbs;


CREATE TABLE quest (
id INT PRIMARY KEY,
title VARCHAR2(100)
) TABLESPACE game_data_tbs;


CREATE TABLE character_item (
character_id INT,
item_id INT,
PRIMARY KEY (character_id, item_id)
) TABLESPACE analytics_tbs;


CREATE TABLE quest_participation (
character_id INT,
quest_id INT,
rating NUMBER(2),
PRIMARY KEY (character_id, quest_id)
) TABLESPACE analytics_tbs;


CREATE TABLE quest_reward (
quest_id INT,
item_id INT,
PRIMARY KEY (quest_id, item_id)
) TABLESPACE analytics_tbs;


CREATE TABLE favorite_item_type (
player_id INT,
item_type VARCHAR2(50),
PRIMARY KEY (player_id, item_type)
) TABLESPACE analytics_tbs;



INSERT INTO player (id, username, region) VALUES (1, 'user_0_thxrs', 'West');
INSERT INTO player (id, username, region) VALUES (2, 'user_0_qjjfa', 'North');
INSERT INTO player (id, username, region) VALUES (3, 'user_0_zsvqr', 'West');
INSERT INTO player (id, username, region) VALUES (4, 'user_0_mrvuz', 'South');
INSERT INTO player (id, username, region) VALUES (5, 'user_0_ekqnd', 'West');
INSERT INTO player (id, username, region) VALUES (6, 'user_0_smvza', 'North');
INSERT INTO player (id, username, region) VALUES (7, 'user_0_hejkz', 'South');
INSERT INTO player (id, username, region) VALUES (8, 'user_0_ukrmx', 'West');
INSERT INTO player (id, username, region) VALUES (9, 'user_0_cgpzt', 'North');
INSERT INTO player (id, username, region) VALUES (10, 'user_0_wkmbs', 'Central');
INSERT INTO player (id, username, region) VALUES (11, 'user_0_zfywj', 'East');
INSERT INTO player (id, username, region) VALUES (12, 'user_0_nuruo', 'North');
INSERT INTO player (id, username, region) VALUES (13, 'user_0_sgkrr', 'West');
INSERT INTO player (id, username, region) VALUES (14, 'user_0_whavh', 'South');
INSERT INTO player (id, username, region) VALUES (15, 'user_0_fsawk', 'West');


INSERT INTO character (id, name, player_id) VALUES (1, 'char_0_akdj', 1);
INSERT INTO character (id, name, player_id) VALUES (2, 'char_0_bjdu', 2);
INSERT INTO character (id, name, player_id) VALUES (3, 'char_0_cxiu', 3);
INSERT INTO character (id, name, player_id) VALUES (4, 'char_0_dvnm', 4);
INSERT INTO character (id, name, player_id) VALUES (5, 'char_0_elpr', 5);
INSERT INTO character (id, name, player_id) VALUES (6, 'char_0_fykt', 6);
INSERT INTO character (id, name, player_id) VALUES (7, 'char_0_gjwe', 7);
INSERT INTO character (id, name, player_id) VALUES (8, 'char_0_hzxy', 8);
INSERT INTO character (id, name, player_id) VALUES (9, 'char_0_iald', 9);
INSERT INTO character (id, name, player_id) VALUES (10, 'char_0_jlzp', 10);
INSERT INTO character (id, name, player_id) VALUES (11, 'char_0_kcvr', 11);
INSERT INTO character (id, name, player_id) VALUES (12, 'char_0_ltmp', 12);
INSERT INTO character (id, name, player_id) VALUES (13, 'char_0_mrnt', 13);
INSERT INTO character (id, name, player_id) VALUES (14, 'char_0_nswr', 14);
INSERT INTO character (id, name, player_id) VALUES (15, 'char_0_owpt', 15);


INSERT INTO item (id, name, type) VALUES (1, 'Sword of Fire', 'Weapon');
INSERT INTO item (id, name, type) VALUES (2, 'Shield of Ice', 'Armor');
INSERT INTO item (id, name, type) VALUES (3, 'Healing Potion', 'Consumable');
INSERT INTO item (id, name, type) VALUES (4, 'Mana Crystal', 'Consumable');
INSERT INTO item (id, name, type) VALUES (5, 'Cloak of Shadows', 'Armor');
INSERT INTO item (id, name, type) VALUES (6, 'Thunder Axe', 'Weapon');
INSERT INTO item (id, name, type) VALUES (7, 'Boots of Speed', 'Armor');
INSERT INTO item (id, name, type) VALUES (8, 'Invisibility Ring', 'Accessory');
INSERT INTO item (id, name, type) VALUES (9, 'Book of Spells', 'Magic');
INSERT INTO item (id, name, type) VALUES (10, 'Dragon Scale', 'Crafting');
INSERT INTO item (id, name, type) VALUES (11, 'Elixir of Strength', 'Consumable');
INSERT INTO item (id, name, type) VALUES (12, 'Mystic Staff', 'Weapon');
INSERT INTO item (id, name, type) VALUES (13, 'Phoenix Feather', 'Crafting');
INSERT INTO item (id, name, type) VALUES (14, 'Shadow Dagger', 'Weapon');
INSERT INTO item (id, name, type) VALUES (15, 'Orb of Light', 'Magic');


INSERT INTO quest (id, title) VALUES (1, 'Defeat the Goblin King');
INSERT INTO quest (id, title) VALUES (2, 'Rescue the Princess');
INSERT INTO quest (id, title) VALUES (3, 'Explore the Dark Cave');
INSERT INTO quest (id, title) VALUES (4, 'Protect the Village');
INSERT INTO quest (id, title) VALUES (5, 'Retrieve the Lost Relic');
INSERT INTO quest (id, title) VALUES (6, 'Defend the Tower');
INSERT INTO quest (id, title) VALUES (7, 'Hunt the Basilisk');
INSERT INTO quest (id, title) VALUES (8, 'Escort the Merchant');
INSERT INTO quest (id, title) VALUES (9, 'Break the Siege');
INSERT INTO quest (id, title) VALUES (10, 'Cleanse the Haunted Forest');
INSERT INTO quest (id, title) VALUES (11, 'Seal the Demon Gate');
INSERT INTO quest (id, title) VALUES (12, 'Gather Magical Herbs');
INSERT INTO quest (id, title) VALUES (13, 'Investigate the Ruins');
INSERT INTO quest (id, title) VALUES (14, 'Capture the Rogue Mage');
INSERT INTO quest (id, title) VALUES (15, 'Win the Arena Tournament');


INSERT INTO character_item (character_id, item_id) VALUES (1, 1);
INSERT INTO character_item (character_id, item_id) VALUES (2, 2);
INSERT INTO character_item (character_id, item_id) VALUES (3, 3);
INSERT INTO character_item (character_id, item_id) VALUES (4, 4);
INSERT INTO character_item (character_id, item_id) VALUES (5, 5);
INSERT INTO character_item (character_id, item_id) VALUES (6, 6);
INSERT INTO character_item (character_id, item_id) VALUES (7, 7);
INSERT INTO character_item (character_id, item_id) VALUES (8, 8);
INSERT INTO character_item (character_id, item_id) VALUES (9, 9);
INSERT INTO character_item (character_id, item_id) VALUES (10, 10);
INSERT INTO character_item (character_id, item_id) VALUES (11, 11);
INSERT INTO character_item (character_id, item_id) VALUES (12, 12);
INSERT INTO character_item (character_id, item_id) VALUES (13, 13);
INSERT INTO character_item (character_id, item_id) VALUES (14, 14);
INSERT INTO character_item (character_id, item_id) VALUES (15, 15);


INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (1, 1, 8);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (2, 2, 9);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (3, 3, 7);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (4, 4, 6);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (5, 5, 10);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (6, 6, 9);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (7, 7, 5);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (8, 8, 8);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (9, 9, 7);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (10, 10, 6);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (11, 11, 9);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (12, 12, 8);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (13, 13, 7);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (14, 14, 10);
INSERT INTO quest_participation (character_id, quest_id, rating) VALUES (15, 15, 9);


INSERT INTO quest_reward (quest_id, item_id) VALUES (1, 1);
INSERT INTO quest_reward (quest_id, item_id) VALUES (2, 2);
INSERT INTO quest_reward (quest_id, item_id) VALUES (3, 3);
INSERT INTO quest_reward (quest_id, item_id) VALUES (4, 4);
INSERT INTO quest_reward (quest_id, item_id) VALUES (5, 5);
INSERT INTO quest_reward (quest_id, item_id) VALUES (6, 6);
INSERT INTO quest_reward (quest_id, item_id) VALUES (7, 7);
INSERT INTO quest_reward (quest_id, item_id) VALUES (8, 8);
INSERT INTO quest_reward (quest_id, item_id) VALUES (9, 9);
INSERT INTO quest_reward (quest_id, item_id) VALUES (10, 10);
INSERT INTO quest_reward (quest_id, item_id) VALUES (11, 11);
INSERT INTO quest_reward (quest_id, item_id) VALUES (12, 12);
INSERT INTO quest_reward (quest_id, item_id) VALUES (13, 13);
INSERT INTO quest_reward (quest_id, item_id) VALUES (14, 14);
INSERT INTO quest_reward (quest_id, item_id) VALUES (15, 15);


INSERT INTO favorite_item_type (player_id, item_type) VALUES (1, 'Weapon');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (2, 'Armor');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (3, 'Consumable');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (4, 'Crafting');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (5, 'Magic');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (6, 'Weapon');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (7, 'Accessory');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (8, 'Armor');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (9, 'Consumable');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (10, 'Weapon');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (11, 'Crafting');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (12, 'Armor');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (13, 'Magic');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (14, 'Accessory');
INSERT INTO favorite_item_type (player_id, item_type) VALUES (15, 'Weapon');


SELECT tablespace_name , bytes /1024/1024 MB
FROM dba_free_space
WHERE tablespace_name ='GAME_DATA_TBS';


SELECT tablespace_name , bytes /1024/1024 MB
FROM dba_free_space
WHERE tablespace_name ='ANALYTICS_TBS';



ALTER TABLESPACE game_data_tbs
ADD DATAFILE 'game_data_tbs02.dbf' SIZE 100m;



ALTER DATABASE
DATAFILE 'analytics_tbs01.dbf' RESIZE 150m;


SELECT tablespace_name , bytes /1024/1024 MB
FROM dba_free_space
WHERE tablespace_name ='GAME_DATA_TBS';


SELECT tablespace_name , bytes /1024/1024 MB
FROM dba_free_space
WHERE tablespace_name ='ANALYTICS_TBS';


ALTER TABLE quest_participation ADD participation_date DATE;




-- lab 5 ---------------------------------------------------------------------------------------





create table clan(
 clan_id INT PRIMARY KEY,
    clan_name VARCHAR2(100),
    clan_leader_name VARCHAR2(100),
    CONSTRAINT check_max_players CHECK (clan_id <= 10)

);


ALTER TABLE player
ADD (clan_id INT,  CONSTRAINT fk_clan FOREIGN KEY (clan_id) REFERENCES clan(clan_id));

ALTER TABLE quest_participation ADD ( position INT, points INT);




INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (1, 'Dragon Warriors', 'John Doe');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (2, 'Shadow Knights', 'Jane Smith');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (3, 'Silver Guardians', 'Alice Brown');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (4, 'Thunder Strike', 'Bob Johnson');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (5, 'Eternal Flames', 'Charlie Davis');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (6, 'Storm Riders', 'Diana Green');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (7, 'Phoenix Reborn', 'Edward Harris');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (8, 'Iron Fist', 'Grace Lewis');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (9, 'Mystic Shadows', 'Henry Clark');
INSERT INTO clan (clan_id, clan_name, clan_leader_name) VALUES (10, 'Vengeful Lords', 'Isabella Walker');

     
-- tsk1
create or replace function get_total_quest_points (ply_id INT)
return int is
total_points INT;
Begin
select sum(points) into total_points
from quest_participation 
where character_id in (select id from character where player_id = ply_id);
return total_points ;
END;
/




-- Ensure Player 1 exists
INSERT INTO player (id, username, region) 
VALUES (1, 'test_player_1', 'West');

-- Create a character linked to player 1
INSERT INTO character (id, name, player_id) 
VALUES (101, 'hero_char_1', 1);

-- Insert participation for the character with points
INSERT INTO quest_participation (character_id, quest_id, rating, position, points)
VALUES (101, 1, 9, 1, 5);  -- 1st position gives 5 points

INSERT INTO quest_participation (character_id, quest_id, rating, position, points)
VALUES (101, 2, 8, 2, 3);  -- 2nd position gives 3 points

INSERT INTO quest_participation (character_id, quest_id, rating, position, points)
VALUES (101, 3, 7, 4, 1);  -- other position gives 1 point





SELECT get_total_quest_points(1) AS total_points FROM DUAL;



--tsk2

create or replace function get_top_3 (ply_id INT)
return int is
t3 INT;
Begin
select count(*) into t3
from quest_participation 
where character_id in (select id from character where player_id = ply_id)
and position in (1,2,3);
return t3 ;
END;
/

SELECT get_top_3(1) AS top_3 FROM DUAL;

  
     select * from player;




--tsk3-------------------------------------------------------

CREATE OR REPLACE FUNCTION get_favorite_items_by_clan(clan_id IN INT)
RETURN VARCHAR2 IS
  result VARCHAR2(4000);
BEGIN
  SELECT LISTAGG(item_type || ':' || COUNT(*), ', ') 
         WITHIN GROUP (ORDER BY item_type)
  INTO result
  FROM favorite_item_type f
  JOIN player p ON f.player_id = p.id
  WHERE p.clan_id = clan_id
  GROUP BY item_type;

  RETURN result;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'No favorite item data for this clan';
  WHEN OTHERS THEN
    RETURN 'Error: ' || SQLERRM;
END;
/



SELECT get_favorite_items_by_clan(1) FROM DUAL;


--tsk 4 ------------------------------------------------------------------


CREATE OR REPLACE PROCEDURE list_players_without_fav_item IS
BEGIN
  FOR r IN (
    SELECT clan_id, username
    FROM player
    WHERE id NOT IN (
      SELECT player_id FROM favorite_item_type
    )
    ORDER BY clan_id
  )
  LOOP
    DBMS_OUTPUT.PUT_LINE('Clan ID: ' || NVL(r.clan_id, 'None') || ' -> Player: ' || r.username);
  END LOOP;
END;
/



BEGIN
  list_players_without_fav_item;
END;
/


