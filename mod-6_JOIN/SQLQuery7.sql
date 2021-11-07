/*ЗАДАНИЕ 7.
Напишите SQL-запрос, который находит максимальную цену телефона у merchant_id=1 в таблице phone_price.
Используйте этот запрос в операторе WHERE другого запроса, который выбирает все строки из таблицы phone_price у
которых цена телефона больше чем эта максимальная цена*/select * from phone_pricewhere price>(select max(price) from phone_price where merchant_id=1)