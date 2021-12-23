-- При добавлении строки в Personagecopy, добавляет "_element" ко всем значениям столбца pers_feature

CREATE OR REPLACE FUNCTION pers_feature_change() RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
	UPDATE Personagecopy
	SET pers_feature = pers_feature || '_element';
	RETURN NULL;
END;
$$;

CREATE TRIGGER trig_pers_feature_change
AFTER INSERT ON Personagecopy
FOR EACH ROW
EXECUTE FUNCTION pers_feature_change();