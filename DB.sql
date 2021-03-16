clear screen;

DROP TABLE PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE BRANCHES CASCADE CONSTRAINTS;
DROP TABLE BILLS CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;

CREATE TABLE BRANCHES (
	branch_id int, 
	branch_location varchar(30), 
    PRIMARY KEY(branch_id));
	
	
CREATE TABLE PRODUCTS (
	product_id int, 
	product_name varchar(30), 
	category_id int, 
	price int,
	stock int,
	branch_id int,
    PRIMARY KEY(product_id)); 

	
CREATE TABLE CATEGORY (
	category_id int,
	category_name varchar(30),
    PRIMARY KEY(category_id)); 	


CREATE TABLE CUSTOMER(
	customer_id int, 
	customer_name varchar(30),
	contact_no varchar(30),	
	branch_id int,
	PRIMARY KEY(customer_id));

	
create table employee(
	EID number,
	Ename varchar2(16),
	salary number,
	designation varchar2(23),
	branch_id number,
	primary key(EID),
	
);

CREATE TABLE BILLS(
	bill_id int, 
	date_recorded date,
        amount int,
	product_id int,
        customer_id int,
        employee_id int,
	payment_type varchar(30),
	branch_id int, 
	PRIMARY KEY(bill_id));
	


insert into BRANCHES(branch_id, branch_location) values (1, 'Uttara');
insert into BRANCHES(branch_id, branch_location) values (2, 'Gulshan');


insert into CATEGORY(category_id, category_name) values (1, 'Vegetables');
insert into CATEGORY(category_id, category_name) values (2, 'Noodles');
insert into CATEGORY(category_id, category_name) values (3, 'Toothpaste');
insert into CATEGORY(category_id, category_name) values (4, 'Chocolate');


insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (1, 'Eggplant(Begun)', 1, 110, 20, '1');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (2, 'Maggi', 2, 120, 40, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (3, 'Closeup', 3, 110, 10, '1');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (4, 'Dairy Milk', 4, 500, 30, '1');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (5, 'CocaCola', 5, 100, 10, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (6, 'Pepsodent', 3, 70, 40, '1');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (7, 'Rupchanda', 7, 850, 20, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (8, 'Capsicum(Green)', 1, 350, 10, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (9, '7UP', 5, 120, 40, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (10, 'Doodles', 9, 150, 30, '2');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (11, 'Coriander Leaf (Dhone Pata)', 1, 180, 15, '1');
insert into PRODUCTS(product_id, product_name, category_id, price, stock, branch_id) values (13, 'Lady Finger (Dherosh)', 1, 60, 30, '2');


insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (1, 'Saima', '123',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (2, 'Broti', '123', 1);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (3, 'Sakib', '456', 2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (4, 'Tamim', '789', 1);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (5, 'Nowrin', '369',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (6, 'Tajbia', '135',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (7, 'Pranti', '100',1);


insert into employee (EID,Ename,salary,designation,branch_id) values (9, 'T', 80000, 'Card Operations Manager',2);
insert into employee (EID,Ename,salary,designation,branch_id) values (10, 'A', 85000, 'branch Manager',1); 
insert into employee (EID,Ename,salary,designation,branch_id) values (11, 'S', 200000, 'branch-head',3);
insert into employee (EID,Ename,salary,designation,branch_id) values (12, 'TB', 95000, 'Managing Director',1);
insert into employee (EID,Ename,salary,designation,branch_id) values (13, 'If', 88000, 'salesmnan', 2);
insert into employee (EID,Ename,salary,designation,branch_id) values (14, 'Sa', 75000, 'salesman',3);
insert into employee (EID,Ename,salary,designation,branch_id) values	(16, 'An', 100000, salesman', 2);
insert into employee (EID,Ename,salary,designation,branch_id) values  (17, 'M', 50000,'salesman', 1);


insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (1, '05-Oct-19', 2000, 1, 2, 1, 'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (2, '06-Oct-19', 1500, 2, 4, 2, 'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (3, '07-Oct-19', 2200, 1, 5, 3, 'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (4, '08-Oct-19', 2500, 1, 4, 3,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (5, '09-Oct-19', 3000, 3, 1, 6,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (6, '20-Sep-19', 3500, 2, 2, 7,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (7, '21-Sep-19', 2100, 1, 3, 8,'Cash', 2);

insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (23, '21-Sep-19', 400, 1, 1, 12,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (24, '21-Sep-19', 4080, 2, 3, 1,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (25, '21-Sep-19', 4090, 3, 4, 12,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (26, '21-Sep-19', 4080, 1, 1, 4,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (27, '21-Sep-19', 9080, 3, 4, 12,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (28, '21-Sep-19', 1000, 2, 3, 1,'Credit', 1);
commit;
 
