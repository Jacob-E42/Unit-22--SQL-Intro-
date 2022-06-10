-- Display all of the rows and columns in the table.
select *
from products_db;

-- Display all of the names of the products.
select name 
from products;

-- Display all of the names and prices of the products.
select name, price
from products;

-- Display only the products that can_be_returned.
select *
from products
where can_be_returned = true

-- Display only the products that have a price less than 44.00.

select *
from products
where price < 44;

-- Display only the products that have a price in between 22.50 and 99.99.
select *
from products
where price between 22.50 and 99.99;
