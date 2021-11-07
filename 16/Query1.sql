/*ЗАДАНИЕ 1.
C помощью меню SSMS создайте таблицу exchange_rate со столбцами cur_name nchar(3) и rate numeric(4,2). Вставте в неё строку со
значениями 'USD' и 25*/

select *
from exchange_rate

insert into exchange_rate (cur_name, rate)
values ('USD', 25)
