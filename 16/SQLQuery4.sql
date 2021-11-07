/*ЗАДАНИЕ 4.
Добавьте в запрос из задания 2 условие WHERE cur_name=’USD’. С помощью команды ALTER VIEW измените представление
phone_price_usd на основе запроса с фильтром cur_name=’USD’*/

ALTER VIEW phone_price_usd
AS
select p.color_id,p.merchant_id,p.phone_id,round(p.price/c.rate,0) as pricefrom phone_price pCROSS JOIN exchange_rate cwhere cur_name='USD'