use lab10;

DROP PROCEDURE get_trainer_pokemon;

DELIMITER //
CREATE PROCEDURE get_trainer_pokemon(Trainer_ID INT)
BEGIN
SELECT t.name AS Trainer , p.name AS pokemon, gettype(p.name) as type
from trainers t
JOIN trainer_pokemon tp ON t.trainer_id= tp.trainer_id
JOIN pokemon p ON tp.pokemon_id=p.pokemon_id
where t.trainer_id = trainer_id;
END //
DELIMITER ;

CALL get_trainer_pokemon(1);

