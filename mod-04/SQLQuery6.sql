/*ЗАДАНИЕ 6.
Напишите SQL-запрос, который группирует строки таблицы M_PHONES по столбцам brand_name, battery_type, ram и
подсчитывает количество строк в каждой группе. Отобрать только строки в которых столбец brand_name может быть
равен только 'huawei' или 'xiaomi', а столбец ram может быть равен только 4 или 8. Выборка должна быть
отсортирована по столбцам brand_name, battery_type, ram. Дайте название столбцу образуемому агрегатной
функцией. Примените с оператором группировки grouping sets*/

select brand_name,battery_type,ram,count(*) as 'count_rows'
from m_phones
where brand_name in('huawei','xiaomi') and 
ram in (4,8)
group by grouping sets (brand_name, battery_type, ram)
order by brand_name, battery_type, ram