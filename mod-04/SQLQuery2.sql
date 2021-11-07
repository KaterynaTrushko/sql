/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который находит максимальную и минимальную цену телефона по каждой операционной
системе (столбец os) у каждого бренда из таблицы M_PHONES. Используйте оператор HAVING для исключения
значений NULL. Дайте название столбцам образуемым агрегатными функциями*/
select os
,brand_name
,max(price) as max_price
,min(price) as min_price
from m_phones
group by brand_name,os
having max(price) is not null and min(price) is not null
