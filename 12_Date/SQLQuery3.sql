/*ЗАДАНИЕ 3.
Напишите SQL-запрос, который выводит все столбцы из таблицы purchases. Задайте условие отбора строк, которое выведет только
те строки, у которых дата в столбце date_purch будет в промежутке с 15:00 20 августа 2019 г. по 09:00 21 августа 2019 г. Отсортируйте
выборку по столбцу date_purch*/select *from purchaseswhere date_purch>=DATETIMEFROMPARTS(2019,8,20,15,00,0,000)and date_purch<=DATETIMEFROMPARTS(2019,8,21,9,00,0,000)order by date_purch