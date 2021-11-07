/*ЗАДАНИЕ 2.
Напишите SQL-запрос, который соединяет таблицы phone_price и exchange_rate неявным соединением. Запрос должен возвращать
все столбцы из таблицы phone_price, кроме столбца price. Создайте вычисляемый столбец с выражением round(price/rate,0) as price.
Создайте представление (VIEW) с именем phone_price_usd на основе написанного запроса*/create view phone_price_usdasselect p.color_id,p.merchant_id,p.phone_id,round(p.price/c.rate,0) as pricefrom phone_price pCROSS JOIN exchange_rate c