/*ЗАДАНИЕ 1.
Вставьте в таблицу new_phone_price новую строку со значениями столбца price равным 2222 , столбца merchant_id равным 55,
столбца color_id равным 19, столбца phone_id равным 10002. Напишите SQL запрос, выводящий вставленную строку*/

insert into new_phone_price
(phone_id,color_id,merchant_id,price)
values(10002,19,55,2222)

select *
from new_phone_price
where phone_id=10002 