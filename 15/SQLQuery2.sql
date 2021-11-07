/*ЗАДАНИЕ 2.
Напишите SQL запрос, выбирающий из таблицы phones связанной с таблицей phone_price по столбцу phone_id строки, у которых
столбец phone_id из таблицы phone_price является пустым. Оставьте в выборке только те строки, у которых brand_id=6.
Используйте данные, возвращаемые этим запросом для вставки в таблицу new_phone_price. Задайте значение столбца merchant_id
равным 55, столбца color_id равным 19, столбца price на своё усмотрение.
Напишите SQL запрос, выбирающий вставленные строки*/

insert into new_phone_price (phone_id,color_id,merchant_id,price)
select ISNULL(p.phone_id, 0),19,55,555
from phones f left join phone_price p on f.phone_id=p.phone_id
where p.phone_id is null and brand_id=6


select * from new_phone_price 
where phone_id=0

select f.phone_id,19,55,555
from phones f left join phone_price p on f.phone_id=p.phone_id
where p.phone_id is null and brand_id=6

