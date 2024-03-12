-- 1. Вывести данные о товарах не из категорий 2 и 4 и не от поставщиков 2 и 3 с ценой от 20 до 90 EUR (проекция: название, ценаснаценкой_6%)

SELECT
    ProductName, Price * 1.06 
FROM
    Products
WHERE
NOT  CategoryID=2
AND
NOT CategoryID=4
AND NOT SupplierID IN (2, 3)
AND Price BETWEEN 20 AND 90;

-- 2. Вывести клиентов не из Germany, имена которых не заканчиваются на букву t

SELECT *
FROM Customers
WHERE
NOT Country = 'Germany'
AND
CustomerName  NOT LIKE '%t';

-- 3. Вывести два самых дешевых товара с ценой от 10 EUR и более (проекция: название, ценасоскидкой_20%)

SELECT 
ProductName, Price * .08 
FROM Products
WHERE
    Price >= 10
ORDER BY Price
LIMIT 2;