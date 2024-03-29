﻿/*ЗАДАНИЕ 1.
Напишите SQL-запрос, который выбирает из таблицы clients все столбцы. Задайте условие отбора строк, которое выведет только те
строки, у которых год в столбце birth_date равен 2000 или 2001.
Отсортируйте выборку по месяцу даты birth_date, по возрастанию. Внутри каждого месяца отсортируйте выборку по дню даты
birth_date по убыванию. Использовать функции YEAR(), MONTH(),DAY()*/

select *
from clients
where year(birth_date)=2000 or year(birth_date)=2001
order by MONTH(birth_date),DAY(birth_date)
