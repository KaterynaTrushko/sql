--МАТЕМАТИЧЕСКИЕ ФИНКЦИИ, ПРИОБРАЗОВАНИЕ ТИПОВ
--проверяет значение аргумента, число это или нет

--select isnumeric('2ee')

/*select phone_name, review
,patindex('%20__ г%',review) as c_p
,patindex('%20___%',review) as c_p
--,SUBSTRING(review,patindex('%20__ г%',review),4) as 
,SUBSTRING(review,patindex('%20___%',review),4) as str1
from phones
where review is not null 
and patindex('%20__ г%',review)=0
and patindex('%20___%',review)<>0
and isnumeric(SUBSTRING(review,patindex('%20___%',review),4))=1*/

/*select phone_id,price
,abs(price-3000) as abs_diff  --АБСОЛЮТНАЯ РАЗНИЦАБ УБИРАЕТ МИНУС ЧТО ПОСТУПАЕТ НА ВХОД ФУНКЦИИ
,RAND() AS RAN --СЛУЧАЙНОЕ ЧИСЛО
,(price-2900)/200 as n_p
/*,price/25 AS m_p
,CEILING(price/25) as ce --БЛИЖАЙШЕЕ ЦЕЛОЕ ЧИСЛО СВЕРХУ
,FLOOR(price/25) AS fl --БЛИЖАЙШЕЕ МЕНЬШОЕ*/
from phone_price
where price<=3100 and price>=2900
AND CEILING(price/25)=FLOOR(price/25) --ДЕЛЕНИЕ БЕЗ ОСТАТКА*/

--ПРЕОБРАЗОВАНИЯ ТИПОВ ДАННЫХ
--ЧИСЛА, СТРОКИ, ДАТЫ

/*SELECT /*DATEADD(mm,2,'01.02.2018')
,CONCAT(DATEADD(mm,2,'01.02.2018'),' text') as date_txt
,CONCAT(DATEADD(mm,2,'01.02.2018'),2) as date_date_n
,*/2+2 as four1
,'2'+2 as four2
,CONCAT('2',2) as four3
,'22'/4 as four4
,22/4 as four5
,22.0/4 as four6
--,'22.0'/4 as four7*/

/*select CAST('123' as numeric(7,4)) as cs1
,cast('123.4588'as numeric(7,4)) as cs2
,cast('123.4588'as numeric(7,2)) as cs3
,cast('123' as int) as cs6
,cast(123.588 as int) as cs7
,cast('123.4588' as float(1)) as cs8
,cast('15523.4588' as float(1)) as cs9
,CONVERT(numeric(7,4)),'123.4588')*/

--select [*]+str(123.4588)+'*' as str1
--select str(123.4588,8,4)as str1
--cast()
--convert()/*

/*select GETDATE()
,cast(GETDATE() as nvarchar) as cs1
,CONVERT(nvarchar,GETDATE()) as co2
,CONVERT(nvarchar,GETDATE(),1) as co3
,CONVERT(nvarchar,GETDATE(),101) as co3
,CONVERT(nvarchar,GETDATE(),2) as co4
,CONVERT(nvarchar,GETDATE(),103) as co5
,CONVERT(nvarchar,GETDATE(),4) as co4  --немецкий формат, привічній нам
,CONVERT(nvarchar,GETDATE(),104) as co5*/

/*select cast('01.02.2020' as date) as cs1
,cast('01.02.2020' as datetime) as cs2
,CONVERT(date,'01.02.2020') as co1
--,CONVERT(date,'01.02.2020',1) as co2
,CONVERT(date,'01.02.2020',101) as co4
,CONVERT(date,'01.02.2020',104) as co5*/

/*select FORMAT(GETDATE(),'d','en-US') as 'US_'
,FORMAT(GETDATE(),'d','de-de') as 'GET_RUS'
,FORMAT(GETDATE(),'D','de-de') as 'GET_RUS'
,FORMAT(GETDATE(),'D','ru-ru') as 'GET_RUS'*/
select
format(112263.225,'N','en-US') as N_EN
,format(112263.225,'C','en-US') as N_EN
,format(112263.225,'C','ua-ua') as N_EN
