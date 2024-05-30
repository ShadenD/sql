create table users(
user_id INT IDENTITY (1, 1) PRIMARY KEY,
user_name  VARCHAR (50) NOT NULL,
pass VARCHAR (50) NOT NULL,
full_name VARCHAR (50) NOT NULL,
);

create table orders(
order_id INT IDENTITY (1, 1) PRIMARY KEY,
date  DATE NOT NULL,
user_id INT FOREIGN KEY REFERENCES users(user_id),
);

insert into users values('suha', '123', 'suha shehadeh');

insert into users values('sally', '288', 'sally mahdi');

insert into orders values('2023/11/13', 1);
insert into orders values('2022/04/10', 3);

SELECT users.user_name, orders.date
FROM users
LEFT JOIN orders ON users.user_id = orders.user_id;



SELECT users.user_name, COUNT(order_id) as orderNum
FROM users
RIGHT JOIN orders ON users.user_id = orders.user_id
GROUP BY user_name
;

SELECT users.user_name, COUNT(order_id) as orderNum
FROM users
RIGHT JOIN orders ON users.user_id = orders.user_id
GROUP BY user_name
HAVING COUNT(order_id) = 1;


SELECT * FROM users
ORDER BY user_id
OFFSET 2 ROWS
FETCH NEXT 2 ROWS ONLY;