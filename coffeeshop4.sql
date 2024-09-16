## Mohammad Abu Shams 1200549
## Abdalkarim eiss 1200015
## Abdelkareem injas 1200507

drop database hot_coffee;
create database hot_coffee;
use hot_coffee;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    customer_name CHAR(255),
    customer_phone CHAR(255),
    table_number INTEGER
);

CREATE TABLE manager(
    manager_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    manager_name CHAR(40),
    manager_phone CHAR(40),
    manager_address CHAR(40)
);


CREATE TABLE employee_manage (
    emp_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    emp_name CHAR(60),
    emp_birthdate DATE,
    emp_phone CHAR(255), 
    emp_address CHAR (100),
    emp_gender CHAR(10),
    emp_salary REAL,
	emp_password CHAR(30),
    manager_id INTEGER NOT NULL,
    FOREIGN KEY (manager_id) REFERENCES manager (manager_id) ON DELETE NO ACTION 
);


CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_date Date,
	customer_id INTEGER,
    emp_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)  ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (emp_id) REFERENCES employee_manage (emp_id) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE items (
    item_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    item_name CHAR(30),
	item_price REAL,
    quantity INTEGER
    );
    

CREATE TABLE prepares (
    emp_id INTEGER,
    item_id INTEGER,
    PRIMARY KEY (emp_id, item_id),
    FOREIGN KEY (emp_id) REFERENCES employee_manage(emp_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

CREATE TABLE feedback_give (
    customer_id INTEGER,
    feedback_id INTEGER auto_increment,
    feedback_rating INTEGER,
	cleaness CHAR(40),
    suggestion CHAR(40),   
    service CHAR(40),
    quality CHAR(40),
    PRIMARY KEY (feedback_id,customer_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

CREATE TABLE service (
    emp_id INTEGER NOT NULL,
    customer_id INTEGER,
    PRIMARY KEY (emp_id, customer_id),
    FOREIGN KEY (emp_id) REFERENCES employee_manage(emp_id) ON DELETE NO ACTION,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE invoice (
    order_id INT, 
	order_date Date,
    item_id INT NOT NULL,
    quantity INT,
    price REAL,
   
    PRIMARY KEY (item_id , order_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (item_id) REFERENCES items (item_id) ON DELETE NO ACTION ON UPDATE CASCADE
);

ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;


insert into manager (manager_name ,manager_phone ,manager_address) values ('mohammad','0592821765','tulkarem');


insert into employee_manage (emp_name,emp_birthdate,emp_phone, emp_address,emp_gender,emp_salary,manager_id, emp_password)
 values('mohammad','2000-08-2','0592821765','tulkarem','male',900 ,1,'mo1');
 
insert into employee_manage (emp_name,emp_birthdate,emp_phone, emp_address,emp_gender,emp_salary,manager_id, emp_password)
 values ('husam','1997-05-9','059751463','nablus','male',900 ,1,'hus1');
 
insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('sara', '1990-12-15', '056822334', 'ramallah', 'female', 1200, 1, 'sara123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('ali', '1985-08-21', '059865421', 'jericho', 'male', 1100, 1, 'ali456');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('lina', '1993-04-03', '056954278', 'bethlehem', 'female', 1000, 1, 'lina789');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('hazem', '1988-11-27', '059712345', 'hebron', 'male', 950, 1, 'haz2');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('dana', '1995-03-14', '056887766', 'ramallah', 'female', 1100, 1, 'dana123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('ahmad', '1992-09-18', '059834567', 'nablus', 'male', 1050, 1, 'ahmad456');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('samar', '1987-05-26', '056912378', 'jericho', 'female', 1000, 1, 'samar789');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('yousef', '1990-12-01', '059876543', 'bethlehem', 'male', 950, 1, 'yousef123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('nadia', '1984-07-09', '056987654', 'hebron', 'female', 900, 1, 'nadia456');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('adam', '1993-08-11', '056765432', 'ramallah', 'male', 980, 1, 'adam123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('lara', '1989-04-25', '059876543', 'nablus', 'female', 920, 1, 'lara456');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('khaled', '1996-11-03', '056654321', 'jericho', 'male', 890, 1, 'khaled789');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('nour', '1986-07-17', '059789012', 'bethlehem', 'female', 850, 1, 'nour123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('omar', '1991-02-28', '056543210', 'hebron', 'male', 800, 1, 'omar456');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('faten', '1998-11-14', '0567459832', 'ramallah', 'female', 1100, 1, 'faten234');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('abdullah', '1994-03-27', '0598765430', 'nablus', 'male', 950, 1, 'abd123');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('layan', '1996-09-18', '0569123456', 'jericho', 'female', 1000, 1, 'layan567');

insert into employee_manage (emp_name, emp_birthdate, emp_phone, emp_address, emp_gender, emp_salary, manager_id, emp_password) 
values ('tariq', '1989-05-03', '0598345678', 'bethlehem', 'male', 1010, 1, 'tariq789');



 
insert into customers (customer_name,customer_phone,table_number) values('adam','0592826765',1);
insert into customers(customer_name ,customer_phone ,table_number ) values ('abd','09548799879',4);
insert into customers (customer_name, customer_phone, table_number) values ('nadia', '05987654321', 6);
insert into customers (customer_name, customer_phone, table_number) values ('sami', '05671234567', 2);
insert into customers (customer_name, customer_phone, table_number) values ('lina', '05983456789', 8);
insert into customers (customer_name, customer_phone, table_number) values ('omar', '05698987654', 3);
insert into customers (customer_name, customer_phone, table_number) values ('sara', '05971234567', 5);
insert into customers (customer_name, customer_phone, table_number) values ('ali', '05676543210', 1);
insert into customers (customer_name, customer_phone, table_number) values ('layla', '05982345678', 7);
insert into customers (customer_name, customer_phone, table_number) values ('tarek', '05687654321', 20);
insert into customers (customer_name, customer_phone, table_number) values ('susan', '05994567812', 19);
insert into customers (customer_name, customer_phone, table_number) values ('youssef', '05676548901', 22);
insert into customers (customer_name, customer_phone, table_number) values ('dina', '05982349087', 21);
insert into customers (customer_name, customer_phone, table_number) values ('waleed', '05691234567', 24);
insert into customers (customer_name, customer_phone, table_number) values ('noura', '05983456789', 23);
insert into customers (customer_name, customer_phone, table_number) values ('hamza', '05698987654', 26);
insert into customers (customer_name, customer_phone, table_number) values ('reem', '05971234567', 25);
insert into customers (customer_name, customer_phone, table_number) values ('raed', '05676543210', 28);
insert into customers (customer_name, customer_phone, table_number) values ('farida', '05982345678', 27);
insert into customers (customer_name, customer_phone, table_number) values ('hala', '05687654322', 30);




insert into items (item_name,item_price,quantity) values('coffee',5,10);
insert into items (item_name,item_price,quantity) values('krep',11,20);
insert into items (item_name,item_price,quantity) values('fashafesh',12,30);
insert into items (item_name,item_price,quantity) values('milksheck',13,5);
insert into items (item_name,item_price,quantity) values('tea',3,7);
insert into items (item_name, item_price, quantity) values ('espresso', 2.5, 20);
insert into items (item_name, item_price, quantity) values ('latte', 3.5, 15);
insert into items (item_name, item_price, quantity) values ('cappuccino', 4, 18);
insert into items (item_name, item_price, quantity) values ('mocha', 4.2, 12);
insert into items (item_name, item_price, quantity) values ('americano', 3, 25);
insert into items (item_name, item_price, quantity) values ('croissant', 2.5, 30);
insert into items (item_name, item_price, quantity) values ('blueberry muffin', 3, 15);
insert into items (item_name, item_price, quantity) values ('bagel with cream cheese', 4, 10);
insert into items (item_name, item_price, quantity) values ('cinnamon roll', 3.5, 12);
insert into items (item_name, item_price, quantity) values ('iced coffee', 4, 20);
insert into items (item_name, item_price, quantity) values ('caramel macchiato', 4.5, 15);
insert into items (item_name, item_price, quantity) values ('chocolate croissant', 3.8, 12);
insert into items (item_name, item_price, quantity) values ('vanilla latte', 4, 18);
insert into items (item_name, item_price, quantity) values ('berry scone', 3.2, 10);
insert into items (item_name, item_price, quantity) values ('iced mocha', 4.5, 20);




#select * from manager;
select * from employee_manage;
select * from customers;
select * from items;
#select * from invoice;
#show tables;



##delete from employee_manage where emp_id=5;

#select * from employee_manage where emp_name = 'mohammad' AND emp_password = 'mo1';
#select avg(feedback_rating) from feedback_give;