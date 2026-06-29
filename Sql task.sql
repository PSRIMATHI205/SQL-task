create database task;
use task;
-- 1)creating table 
create table book(
book_id int auto_increment,
title varchar(100) not null,
isbn varchar(20) unique,
price decimal(10,2) not null,
published_date date not null,
in_stock int default 1,
constraint primary key(book_id));
desc book;
select * from book;

-- 2) inserting the values in the book table
insert into book(title,isbn,price,published_date,in_stock)
values('C programming',1234,500,'1997-06-27',23),
('Python programming',4567,288.67,'2007-09-29',10),
('Java programming',3452,800.89,'2010-09-20',5);
insert into book(title,isbn,price,published_date)
value('SQL Database',7896,677.45,'2001-07-30');

-- 3) change the column name title as book_title from book table
alter table book
change column title book_title varchar(100);

-- 4)change the price data type to decimal(8,2)
alter table book
modify column price float;

-- 5) adding a new column
alter table book
add author_name varchar(50) not null;

-- 6) updating existing data
update book
set price = price*0.09
where year(published_date) > 2005;

-- 7) delete
delete from book where in_stock=10;

-- 8) auto increment
alter table book auto_increment=101;

-- 9)
SELECT book_title, price, published_date
FROM book
WHERE book_title LIKE 'C programming'
  AND price > 300
ORDER BY price DESC;

-- 10) 
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL
);
insert into Members(member_name,join_date)
values('srimathi','2026-09-20'),
('akshaya','2027-07-12'),
('aaliya','2026-08-30'),
('sasirekha','2028-05-23'),
('thaslim','2012-02-29');
select * from Members;
SELECT member_id, member_name, join_date
FROM Members
WHERE YEAR(join_date) = 2026
ORDER BY member_name ASC;


