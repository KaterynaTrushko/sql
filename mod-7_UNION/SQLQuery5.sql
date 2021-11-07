/*ЗАДАНИЕ 5.
Напишите три SQL-запроса:
1. Выбирает brand_name из таблицы brands для brand_id=1
2. Выбирает merchant_name из таблицы merchants для merchant_id=1
3. Выбирает color_name из таблицы colors для color_id=1
Объедините результаты всех трёх запросов в один с помощью оператора UNION*/

select brand_name
from brands
where brand_id=1
UNION
select merchant_name
from merchants
where merchant_id=1
UNION
select color_name
from colors
where color_id=1
