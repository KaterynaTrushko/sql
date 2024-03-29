﻿/*ЗАДАНИЕ 4.
Напишите SQL-запрос, который будет при каждом выполнении случайным образом возвращать число 0 или 100 или 200.
Вероятность выпадения каждого числа должна быть 30%. Сначала создайте запрос, возвращающий результат функции RAND(),
дайте столбцу имя и используйте получившийся запрос в операторе FROM как источник строк нового запроса. В новом запросе с
помощью конструкции CASE WHEN выведите 0, если случайное число оказалось в промежутке от 0 до 0,33333; 100, если случайное
число оказалось в промежутке от 0,33333 до 0,66666 и 200, если случайное число оказалось в промежутке от 0,66666 до 1*/


select a.ran
,CASE 
WHEN a.ran > 0 and  a.ran < 0.33333 then 0
WHEN a.ran > 0.33333 and  a.ran < 0.66666 then 100
WHEN a.ran > 0.66666 and  a.ran < 1 then 200
end as result
from
(select RAND() as ran) a