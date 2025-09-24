-- Lowest and Highest price
SELECT MIN(price) AS Lowest price,MAX(price) AS Highest price FROM `mobile store`;
-- Total Stock
SELECT SUM(stock) AS Total stock FROM `mobile stores`;
-- Top 2 most expensive mobiles
SELECT * fROM `mobile store` ORDER BY price DESC LIMIT 2;