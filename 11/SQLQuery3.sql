/*ЗАДАНИЕ 3.
Используйте запрос из задачи 2 в операторе FROM для нового нового запроса . Сгруппируйте строки по столбцу battery_capacity .
Добавьте столбец с количеством строк в каждой группе. Добавьте новый столбец используя агрегатную функцию SUM(). Вместо
аргумента функции напишите функцию IIF (), которая сравнивает значение столбца battery_type со строкой «Li-Ion». Если равенство
выполняется IIF() должен вернуть 1 , если нет, то 0. Добавьте новый столбец используя агрегатную функцию SUM(). Вместо
аргумента функции напишите функцию IIF (), которая сравнивает значение столбца battery_type со строкой «Li-Pol». Если равенство
выполняется IIF() должен вернуть 1 , если нет, то 0*/selectb.battery_capacity,count(*) as count_st,sum(iif(b.battery_type='Li-Ion',1,0)) as Li_Ion,sum(iif(b.battery_type='c',1,0)) as Li_Ionfrom(select
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
from phones) a) b
group by b.battery_capacity
