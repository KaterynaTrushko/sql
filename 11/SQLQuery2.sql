/*ЗАДАНИЕ 2.
Используйте запрос из задачи 1 в операторе FROM для нового нового запроса. Создайте вычисляемый столбец используя
выражение CASE WHEN. Если battery_capacity=0 значение столбца должно быть «Нет данных» , если battery_capacity<1000 0
значение столбца должно быть «0-1000» , если battery_capacity<5000 0 значение столбца должно быть «1000-5000» , если
battery_capacity<10000 0 значение столбца должно быть «5000-10000» и если battery_capacity>=10000 значение столбца должно
быть «>10000». Дайте новому столбцу имя battery_capacity. Второй столбец запроса - battery_type – оставьте без изменений */

select
CASE 
WHEN a.battery_capacity=0 then 'Нет данных'
WHEN battery_capacity<1000  then '0 - 1000'
WHEN battery_capacity<5000 then '1000 - 5000'
WHEN battery_capacity<10000 then '5000 - 10000'
WHEN battery_capacity>=10000 then '>10000'
else '***'
end as battery_capacity
,battery_type
from
(select
ISNULL(battery_capacity,0) as battery_capacity
,ISNULL(battery_type,'Нет данных') as battery_type
from phones) a