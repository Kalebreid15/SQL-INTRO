-- find all products
SELECT * FROM bestbuy.products;
-- find all products that cost $1400

SELECT * FROM bestbuy.products
WHERE products.Price = 1400;

-- find all products that cost $11.99 or $13.99

SELECT * FROM bestbuy.products as p
WHERE p.price = 11.99 OR p.price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT

SELECT * FROM bestbuy.products as p
WHERE NOT p.price = 11.99;

-- find all products and sort them by price from greatest to least

select * FROM bestbuy.products as p

ORDER BY p.price DESC;

-- find all employees who don't have a middle initial

select * from bestbuy.employees
where middleinitial is null;

-- find distinct product prices

select distinct bestbuy.products.price
FROM bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
select * from bestbuy.employees
where FirstName like 'j%';

-- find all Macbooks
select * from bestbuy.products
where name = 'Macbook';

-- find all products that are on sale
select * from bestbuy.products
where onSale = 1;

-- find the average price of all products
select AVG(products.price) FROM bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
select * from bestbuy.employees AS e
where e.MiddleInitial is null and e.title = 'Geek Squad';

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest
select * from bestbuy.products
where StockLevel BETWEEN 500 and 1200
order by Price;