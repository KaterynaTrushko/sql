/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который выбирает все строки из таблицы phones. Используя функцию ISNULL() создайте вычисляемый
столбец, который будет показывать значение столбца battery_capacity если он не пуст и 0 если он равен NULL. Используя функцию
ISNULL() создайте второй вычисляемый столбец вычисляемый столбец, который будет показывать значение столбца battery_type
если он не пуст и текст «Нет данных» если он равен NULL. Дайте новым столбцам имена battery_capacity и battery_type*/

select
ISNULL(battery_capacity,0) as battery_capacity
,ISNULL(battery_type,'Нет данных') as battery_type
from phones