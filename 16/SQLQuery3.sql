/*ЗАДАНИЕ 3.
Вставьте в таблицу exchange_rate новую строку со значениями 'EUR' и 27. Проверьте что возвращает запрос выбирающий все строки
и столбцы из представления phone_price_usd*/insert into exchange_rate (cur_name, rate)
values ('EUR', 27)

select *
from phone_price_usd