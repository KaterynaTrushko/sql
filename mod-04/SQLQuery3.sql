/*ЗАДАНИЕ 3.
Напишите SQL-запрос, который находит среднюю цену телефона по каждому типу батареи (столбец battery_type) у
каждого бренда из таблицы M_PHONES. Учитывать только телефоны с емкостью батареи (столбец battery_capacity)
больше чем 3000. Показывать среднюю цену, только если количество телефонов с данным типом батареи у данного
бренда два и больше. Дайте название столбцам, образуемым агрегатными функциями*/
select brand_name,battery_type,round(avg(price),2) as avg_price
from m_phones
where battery_capacity>3000
group by brand_name,battery_type
having count(*)>=2 

