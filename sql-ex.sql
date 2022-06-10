1.Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

SELECT model, speed, hd FROM pc
WHERE price < 500
-------------------------------
2.Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker FROM product
WHERE type = 'Printer'
----------------------------------
3.Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

SELECT model, ram, screen FROM laptop
WHERE price > 1000
-------------------------------------
4.Найдите все записи таблицы Printer для цветных принтеров.

SELECT * FROM printer
WHERE color = 'y'
---------------------
5.Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

SELECT model, speed, hd FROM pc 
WHERE (cd = '12x' OR cd = '24x')
AND (price < 600)
--------------------------------------------------
6.Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT product.maker, laptop.speed FROM product 
INNER JOIN laptop
ON product.model = laptop.model 
AND laptop.hd >= 10
--------------------------------------------------------
7.Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT DISTINCT pc.model, price FROM pc 
INNER JOIN product
ON pc.model = product.model
WHERE maker = 'B'
UNION
SELECT DISTINCT laptop.model, price FROM laptop 
INNER JOIN product
ON laptop.model = product.model
WHERE maker = 'B'
UNION
SELECT  DISTINCT printer.model, price FROM printer 
INNER JOIN product
ON printer.model = product.model
WHERE maker = 'B'
---------------------------------------------------
8.Найдите производителя, выпускающего ПК, но не ПК-блокноты.

SELECT DISTINCT maker FROM product
WHERE type = 'pc' 
AND maker NOT IN (SELECT maker FROM product WHERE type = 'laptop')
------------------------------------------------------------------
9.Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT maker FROM product 
INNER JOIN pc
ON product.model = pc.model 
WHERE speed >= 450
-----------------------------------
10.Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT model, price FROM printer 
WHERE price = (SELECT MAX(price) FROM printer)
----------------------------------------------
11.Найдите среднюю скорость ПК.

SELECT AVG(speed) FROM pc
-------------------------
12.Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT AVG(speed) FROM laptop
WHERE price > 1000
-----------------------------
13.Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT DISTINCT AVG(speed) FROM pc 
JOIN product
ON maker = 'A'
WHERE product.model = pc.model
----------------------------------
14.Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT ships.class, ships.name, country FROM ships 
INNER JOIN classes
ON classes.class = ships.class
WHERE numguns >= 10
---------------------------------------------------
15.Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

SELECT hd FROM pc
GROUP BY hd
HAVING COUNT(*) >= 2
--------------------
16.Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

SELECT DISTINCT pc1.model, pc2.model, pc1.speed, pc1.ram FROM pc pc1, pc pc2 
WHERE pc1.speed = pc2.speed 
AND pc1.ram = pc2.ram 
AND pc1.model > pc2.model
------------------------------------------------------------------------------
17.Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed

SELECT DISTINCT product.type, laptop.model, laptop.speed FROM laptop 
INNER JOIN product
ON speed < ALL (SELECT speed FROM pc)
WHERE product.type = 'laptop'
---------------------------------------------------------------------

18.Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT DISTINCT maker, price FROM product 
INNER JOIN printer
ON product.model = printer.model
WHERE price = (SELECT MIN(price) FROM printer 
WHERE color = 'y') AND color = 'y'
---------------------------------------------
19.Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.

SELECT maker, AVG(screen) FROM laptop 
INNER JOIN product 
ON laptop.model = product.model 
GROUP BY maker
--------------------------------------
20.Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

SELECT DISTINCT maker, COUNT(model) FROM product
WHERE type = 'pc' 
GROUP BY maker
HAVING COUNT(model) >= 3
-------------------------------------------------
21.Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.

SELECT maker, MAX(price) FROM pc 
JOIN product
ON product.model = pc.model 
GROUP BY maker
--------------------------------
22.Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.

SELECT speed, AVG(price) FROM pc 
WHERE speed > 600 
GROUP BY speed
---------------------------------














































