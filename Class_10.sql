/*select phone_name, review
,PATINDEX('%20__ г%' , review) as c_p
,SUBSTRING(review,PATINDEX('%20__ г%' , review),4) as rev_god
from phones
where review is not null and PATINDEX('%20__ г%' , review)<>0*/



--склеять две строки CANCAT
--обрезать пробелы TRIM
--пустое место SPACE(1)
--функция трансф в верхний регистр UPPER()
--преобразовать в нижний регистр LOWER()

/*select 
b.Brand_name
,f.phone_name
,CONCAT(upper(trim(b.Brand_name)),space(1),f.phone_name)
,lower(b.Brand_name) as l_s
from phones f left join brands b on f.brand_id=b.brand_id */


--Определяем длину строки LEN()

/*select color_name
,SUBSTRING (color_name,2,len(color_name)-1) as s2
,upper(left(color_name,1))
,CONCAT(upper(left(color_name,1)),SUBSTRING (color_name,2,len(color_name)-1)) as upp_s
from colors*/

--REPLACE выполняет замену (где, 'что ищем', 'на что меняем')

/*select resolution
,REPLACE(resolution,'х',' на ') as new_r
from phones
where resolution is not null*/

/*
select
phone_name
,battery_type
,len(battery_type) as l1 
,len(ltrim(battery_type)) as l2 /*удвляем пробелы слева*/
,CONCAT(battery_type,'***') as b_a
,len(CONCAT(battery_type,'***')) as l3
,len(review) as l_rev
from phones
where review is not null--battery_type is not null
order by l_rev desc --обратный порядок */


select phone_name, memory
,CHARINDEX('GB',phone_name/*где ищем*/) as p_gb--может найти строку в другой строке
,SUBSTRING(phone_name,1/*с какого символа*/,CHARINDEX('GB',phone_name)/*сколько симв вырезаембчисло или ф-ция*/-1) as t__ss--вырезает из строки подстроку по заданным параметром
,REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1)) as r_ss--переписывает строку наоборот
,CHARINDEX(' ',REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1))) as p_pb
,left(REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1)),CHARINDEX(' ',REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1))))
,REVERSE(left(REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1)),CHARINDEX(' ',REVERSE(SUBSTRING(phone_name,1,CHARINDEX('GB',phone_name)-1)))))
from phones
where memory is null and CHARINDEX('GB',phone_name)<>0 