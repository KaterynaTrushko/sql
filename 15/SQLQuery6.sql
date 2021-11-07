/*ЗАДАНИЕ 6.
Напишите SQL запрос, выбирающий из таблицы new_phone_price строки по условию merchant_id=2 and color_id=20. На
основе этого запроса напишите DELETE SQL запрос, удаляющий строки по заданному условию. Проверьте результат
удаления*/

select *
from new_phone_price 
where merchant_id=2 and color_id=20


delete  from new_phone_price 
 where exists (select *
from new_phone_price 
where merchant_id=2 and color_id=20)

select *
from new_phone_price 
where merchant_id=2 and color_id=20


select * from new_phone_price
where exists (select *
from new_phone_price
where merchant_id=2 and color_id=20)