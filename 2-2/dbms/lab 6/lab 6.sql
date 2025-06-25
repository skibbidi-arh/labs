--tsk1 



BEGIN


  DECLARE
    CURSOR cur_players IS
      SELECT id, username FROM player;

    v_id player.id%TYPE;
    v_username player.username%TYPE;
    v_char_count INT;
  BEGIN
    OPEN cur_players;
    LOOP
      FETCH cur_players INTO v_id, v_username;
      EXIT WHEN cur_players%NOTFOUND;

      SELECT COUNT(*) INTO v_char_count
      FROM character
      WHERE player_id = v_id;

      DBMS_OUTPUT.PUT_LINE('Player: ' || v_username || ' - Characters: ' || v_char_count);
    END LOOP;
    CLOSE cur_players;
  END;
END;
/


--tsk2----------------------



BEGIN
 

  DECLARE
 
    CURSOR cur_characters IS
      SELECT c.name AS char_name, p.id AS player_id
      FROM character c, player p
      WHERE c.player_id = p.id;

   
    v_char_name VARCHAR2(50);
    v_player_id INT;
  BEGIN
    OPEN cur_characters;
    LOOP
      FETCH cur_characters INTO v_char_name, v_player_id;
      EXIT WHEN cur_characters%NOTFOUND;

      DBMS_OUTPUT.PUT_LINE('Character: ' || v_char_name || '  Favorite Item Types:');

 
      FOR fav IN (
        SELECT item_type FROM favorite_item_type WHERE player_id = v_player_id
      ) LOOP
        DBMS_OUTPUT.PUT_LINE('  - ' || fav.item_type);
      END LOOP;

    END LOOP;
    CLOSE cur_characters;
  END;
END;
/

 select * from character;
 
 
 
 
 
 
 
 --task3----------------------------------------------------
 
 
 BEGIN
 
  DECLARE
    v_ply_id INT := 1; 
    CURSOR cur_quests IS
      SELECT q.title, qp.rating
      FROM character c
      JOIN quest_participation qp ON c.id = qp.character_id
      JOIN quest q ON qp.quest_id = q.id
      WHERE c.player_id = v_ply_id;

    v_title quest.title%TYPE;
    v_rating quest_participation.rating%TYPE;
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Quest ratings of ID ' || v_ply_id || ':');
    OPEN cur_quests;
    LOOP
      FETCH cur_quests INTO v_title, v_rating;
      EXIT WHEN cur_quests%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(' Quest name ' || v_title || '  Rating: ' || v_rating);
    END LOOP;
    CLOSE cur_quests;
  END;
END;
/



 