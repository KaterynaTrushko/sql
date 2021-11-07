/*ЗАДАНИЕ 5.
Напишите SQL-запрос, который выбирает столбцы phone_name,main_camera из таблицы phones. Используя функцию
NULLIF() в условии WHERE выберите только те строки, где значение столбца main_camera не равно нулю и не пусто
*/

select phone_name,main_camera
from phones
where NULLIF(main_camera,0)<>0