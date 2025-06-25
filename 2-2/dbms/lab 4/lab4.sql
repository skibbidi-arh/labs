CREATE OR REPLACE FUNCTION get_quest_duration(quest_id IN NUMBER)
RETURN VARCHAR2
IS
    total_minutes NUMBER;
    adjusted_minutes NUMBER;
    breaks NUMBER;
    result VARCHAR2(100);
BEGIN
    SELECT duration INTO total_minutes
    FROM quest
    WHERE id = quest_id;

    IF total_minutes > 70 THEN
        breaks := FLOOR(total_minutes / 70);
        IF MOD(total_minutes, 70) <= 30 THEN
            breaks := breaks - 1;
        END IF;
        adjusted_minutes := total_minutes + (breaks * 15);
    ELSE
        adjusted_minutes := total_minutes;
    END IF;

    result := FLOOR(adjusted_minutes / 60) || ' hours and ' || MOD(adjusted_minutes, 60) || ' minutes';
    RETURN result;
END;
/







CREATE OR REPLACE FUNCTION get_player_activity(player_id IN NUMBER)
RETURN VARCHAR2
IS
    quest_count NUMBER := 0;
    status VARCHAR2(20);
BEGIN
    SELECT COUNT(*) INTO quest_count
    FROM quest_participation qp
    JOIN character c ON qp.character_id = c.id
    WHERE c.player_id = player_id;

    IF quest_count = 0 THEN
        status := 'Inactive';
    ELSIF quest_count <= 5 THEN
        status := 'Casual';
    ELSIF quest_count < 15 THEN
        status := 'Regular';
    ELSE
        status := 'Hardcore';
    END IF;

    RETURN status;
END;
/







ALTER TABLE quest_participation ADD participation_date DATE;
CREATE OR REPLACE FUNCTION get_most_frequent_quest(start_date IN DATE, end_date IN DATE)
RETURN VARCHAR2
IS
    quest_title VARCHAR2(100);
    participation_count NUMBER;
BEGIN
    SELECT q.title, COUNT(*) INTO quest_title, participation_count
    FROM quest_participation qp
    JOIN quest q ON q.id = qp.quest_id
    WHERE qp.participation_date BETWEEN start_date AND end_date
    GROUP BY q.title
    ORDER BY COUNT(*) DESC
    FETCH FIRST 1 ROWS ONLY;

    RETURN 'Most frequent quest: ' || quest_title || ' with ' || participation_count || ' participations';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No participations in the given date range.';
END;
/




CREATE OR REPLACE PROCEDURE get_character_item_summary(character_id IN NUMBER)
IS
    potion_count NUMBER;
    weapon_count NUMBER;
    ring_count NUMBER;
    armor_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO potion_count
    FROM character_item ci
    JOIN item i ON ci.item_id = i.id
    WHERE ci.character_id = character_id AND i.type = 'Potion';

    SELECT COUNT(*) INTO weapon_count
    FROM character_item ci
    JOIN item i ON ci.item_id = i.id
    WHERE ci.character_id = character_id AND i.type = 'Weapon';

    SELECT COUNT(*) INTO ring_count
    FROM character_item ci
    JOIN item i ON ci.item_id = i.id
    WHERE ci.character_id = character_id AND i.type = 'Ring';

    SELECT COUNT(*) INTO armor_count
    FROM character_item ci
    JOIN item i ON ci.item_id = i.id
    WHERE ci.character_id = character_id AND i.type = 'Armor';

    DBMS_OUTPUT.PUT_LINE('Potions: ' || potion_count);
    DBMS_OUTPUT.PUT_LINE('Weapons: ' || weapon_count);
    DBMS_OUTPUT.PUT_LINE('Rings: ' || ring_count);
    DBMS_OUTPUT.PUT_LINE('Armors: ' || armor_count);
END;
/
