/*ЗАДАНИЕ 5.
Напишите SQL-запрос, который выбирает все строки и все столбцы из таблицы colors. Добавьте столбец, который
содержит максимальную цену телефона каждого цвета. Цены телефонов соответствующего цвета выбирать из таблицы
phone_price. Отсортируйте выборку по этому столбцу
*/

select *,(select max(price) from phone_price b where a.color_id=b.color_id) as max_price
from colors a
order by max_price
