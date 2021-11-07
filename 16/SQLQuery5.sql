/*ЗАДАНИЕ 5.
Создайте представление с именем phone_price_eur, которое будет возвращать прайс-лист с ценами пересчитанными в
евро*/CREATE VIEW phone_price_eur
AS
SELECT f.phone_id,f.phone_name,b.Brand_name,p.price*33.5 as price_eurFROM phones f left join phone_price pon p.phone_id=f.phone_idleft join brands b onb.brand_id=f.brand_idleft join colors con c.color_id=p.color_idwhere p.price is not null