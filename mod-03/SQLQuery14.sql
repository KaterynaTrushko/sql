 select * from m_phones
where body_type='раскладной'
order by battery_capacity desc
offset 3 rows fetch next 4 rows only;
