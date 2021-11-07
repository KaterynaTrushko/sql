/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который выводит столбец с кварталом даты из столбца birth_date (дата рождения) таблицы clients. Задайте
условие отбора строк , которое выведет только те строки, у которых год в столбце birth_date находится в промежутке между 1990 и
1995. Сгруппируйте выборку по кварталу даты из столбца birth_date. Подсчитайте количество клиентов с датой рождения в каждом
квартале. Использовать функцию DATEPART()*/

select 
datepart(qq,birth_date) as qq
,count(*) as sum_c
from clients
where YEAR(birth_date)>1990 and YEAR(birth_date)>1995
group by datepart(qq,birth_date)


