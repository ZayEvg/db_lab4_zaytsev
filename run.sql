-- Тест функции
-- Выводит количество персонажей с заданной стихией
SELECT pers_feature_count('Geo');
SELECT pers_feature_count('Anemo');
SELECT pers_feature_count('Hydro');

-- Тест процедуры
-- Показывает информацию о персонаже с заданным именем
CALL pers_info('Hu Tao');
CALL pers_info('Albedo');
CALL pers_info('Mona');
CALL pers_info('Keqing');

-- Тест тригера
-- При добавлении строки в Personagecopy, добавляет "_element" 
-- ко всем значениям столбца pers_feature
INSERT INTO Personagecopy(pers_name, pers_weapon, pers_feature, pers_main_role)
VALUES ('Diluc', 'Claymore', 'Pyro', 'DPS');
DELETE FROM Personage WHERE pers_name = 'Diluc';
SELECT * FROM Personagecopy;