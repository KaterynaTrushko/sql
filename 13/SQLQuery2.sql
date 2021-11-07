/*ЗАДАНИЕ 2.
Напишите SQL-запрос без оператора FROM, который вернет одну строку 
cо следующими результатами в столбцах: 
ceiling(-12.35),ceiling(12.35),floor(-12.35),floor(12.35)*/

select 
ceiling(-12.35) as col1
,ceiling(12.35) as col2
,floor(-12.35) as col3
,floor(12.35) as col4