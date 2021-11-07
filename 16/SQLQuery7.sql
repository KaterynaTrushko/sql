/*ALTER VIEW phone_price_usd
AS
SELECT *
FROM phone_price_usd d left join phone_price g
on d.phone_id=g.phone_id
where d.price_usd/g.price=27.46*/
--редставление или функция "phone_price_usd" содержит ссылку на себя. 
--Представления или функции не могут прямо или косвенно ссылаться на себя.


ALTER VIEW phone_price_usd
AS
SELECT phone_id,color_id,merchant_id,
price/27.46 as today_cur_usd
FROM phone_price 

ALTER VIEW phone_price_eur
AS
SELECT phone_id,color_id,merchant_id,
price/33.5 as today_cur_eur
FROM phone_price


