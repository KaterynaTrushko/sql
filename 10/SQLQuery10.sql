﻿/*ЗАДАНИЕ 10.
Используя функцию replace() добавьте в запрос из задачи 1 новый столбец, который представляет собой столбец os с
буквой «v» заменённой на «версия»*/select os
,REPLACE (os,'v','версия')
from phones 
where os LIKE ('android v%');