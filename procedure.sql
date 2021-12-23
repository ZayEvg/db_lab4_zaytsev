-- Показывает информацию о персонаже с заданным именем

CREATE OR REPLACE PROCEDURE pers_info(p_name varchar(20))
LANGUAGE plpgsql
AS
$$
DECLARE p_weapon	Personage.pers_weapon%TYPE;
DECLARE p_feature	Personage.pers_feature%TYPE;
DECLARE p_main_role	Personage.pers_main_role%TYPE;

BEGIN
	SELECT pers_weapon INTO p_weapon
	FROM Personage
	WHERE pers_name = p_name;
	SELECT pers_feature INTO p_feature
	FROM Personage
	WHERE pers_name = p_name;
	SELECT pers_main_role INTO p_main_role
	FROM Personage
	WHERE pers_name = p_name;
	RAISE INFO 'Pers_name: %, Pers_weapon: %, Pers_feature: %, Pers_main_role: %', 
	p_name, p_weapon, p_feature, p_main_role;
END;
$$;