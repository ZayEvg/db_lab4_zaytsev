-- Выводит количество персонажей с заданной стихией

CREATE OR REPLACE FUNCTION pers_feature_count(p_feature TEXT) RETURNS int
LANGUAGE plpgsql
AS
$$
DECLARE
	count_of_features INT;
BEGIN
	SELECT COUNT(pers_feature) 
	INTO count_of_features
	FROM Personage
	WHERE pers_feature = p_feature;
	RETURN count_of_features;
END;
$$;