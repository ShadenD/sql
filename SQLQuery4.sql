SELECT customer_id, first_name, last_name FROM sales.customers;
insert into sales.customers values('laila','yaseen','98','shaden@outlook.com','2781','ramallah','dsds','218');
SELECT customer_id, first_name, last_name FROM sales.customers;
SELECT DISTINCT  first_name, last_name,email FROM sales.customers;

SELECT * FROM sales.customers
ORDER BY zip_code DESC;


SELECT *
FROM sales.customers
WHERE first_name = 'laila' AND zip_code LIKE '%3';

SELECT TOP 3 * FROM sales.customers;

SELECT MIN(zip_code)
FROM sales.customers;

SELECT MAX(zip_code)
FROM sales.customers;

SELECT *
FROM sales.customers
WHERE first_name = 'shaden' OR zip_code = '214';

SELECT * FROM sales.customers
WHERE NOT first_name = 'laila';

UPDATE sales.customers
SET first_name = 'sally', phone= '0599845768'
WHERE city = 'jenin';

DELETE FROM sales.customers WHERE customer_id='4';


insert into sales.stores values('yahia','82932782','sgkjsbj@wksos','2dessd','ramalla','1','14');

insert into production.categories values('lemon');
insert into production.brands values('modko');
insert into production.products values('ldsil','3','2',100,110.5);

insert into sales.order_items values(1,2,1,5,10144444.00,11.50);

