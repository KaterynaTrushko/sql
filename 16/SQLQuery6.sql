/*ЗАДАНИЕ 6.
С помощью команды ALTER TABLE в таблицу exchange_rate добавьте (ADD) новые столбцы: date_from date и date_to
date. Заполните столбец date_from значением DATEFROMPARTS(2020,1,1), а столбец date_to значением
DATEFROMPARTS(2100,12,31) . Вставьте в таблицу exchange_rate две новые строкначениями 'USD' ,24,
DATEFROMPARTS(2019,1,1), DATEFROMPARTS(2019,12,31) и 'EUR' ,26, DATEFROMPARTS(2019и со з,1,1) ,
DATEFROMPARTS(2019,12,31) в столбцы cur_name,currency,date_from,date_to*/


ALTER TABLE exchange_rate
ADD date_from date
,date_to date

INSERT INTO exchange_rate (date_from)
VALUES (DATEFROMPARTS(2020,1,1)) 

INSERT INTO exchange_rate (date_to)
VALUES (DATEFROMPARTS(2100,12,31)) 

INSERT INTO exchange_rate (cur_name,rate,date_from,date_to)
VALUES ('USD',24,DATEFROMPARTS(2019,1,1), DATEFROMPARTS(2019,12,31)) 

INSERT INTO exchange_rate (cur_name,rate,date_from,date_to)
VALUES ('EUR' ,26, DATEFROMPARTS(2019,1,1),DATEFROMPARTS(2019,12,31))