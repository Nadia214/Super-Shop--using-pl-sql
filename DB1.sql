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
	category varchar(30), 
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

	
CREATE TABLE EMPLOYEE (
	employee_id int, 
	employee_name varchar(30),
        role varchar(20), 
	email varchar(20),
	password varchar(20),	
	contact_no varchar(12),
	branch_id int,
	salary int,
	PRIMARY KEY(employee_id));


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
	






insert into CATEGORY(category_id, category_name) values (5, 'Soft Drinks');
insert into CATEGORY(category_id, category_name) values (6, 'Ice-Cream');
insert into CATEGORY(category_id, category_name) values (7, 'Fish');
insert into CATEGORY(category_id, category_name) values (8, 'Biscuit');

insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (14, 'Mama', 'Noodles', 130, 40, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (15, 'Kitkat', 'Chocolate', 250, 30, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (16, 'Pran Mango Bar', 'Chocolate', 400, 25, '1');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (17, 'Macho', 'Ice-Cream', 50, 400, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (18, 'Igloo', 'Ice-Cream', 30, 200, '1');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (19, 'Telapiya', 'Fish', 190, 30, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (20, 'Drinko', 'Soft Drinks', 100, 45, '1');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (21, 'Energy', 'Biscuit', 100, 45, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (22, 'Lexus', 'Biscuit', 100, 20, '1');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (23, 'Olympic', 'Biscuit', 20, 45, '2');
insert into PRODUCTS(product_id, product_name, category, price, stock, branch_id) values (24, 'Shing', 'Fish', 550, 45, '1');


insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (8, 'Anika', '785',1);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (9, 'Bayezid', '333',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (10, 'Trina', '777',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (11, 'Oishy', '999', 2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (12, 'Mehedi', '000', 2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (13, 'Kanta', '666',2);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (14, 'Alia', '423',1);
insert into CUSTOMER (customer_id, customer_name, contact_no, branch_id) values (15, 'Farhan', '444',1);



insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (14, 'Nowshin','Salesman', 'nowshin12@gmail.com', '486', '5555684', 2, 6000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (15, 'Munia', 'Salesman','munia64@gmail.com', '987', '3277771', 2, 10000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (16, 'Lamia','Salesman', 'lamia4234@gmail.com', '654', '5496296', 2, 5000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (17, 'Shifat', 'Salesman','shifat12@gmail.com', '476', '2130987', 1, 10000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (18, 'Saifuddin', 'Salesman','saif3423@gmail.com', '756','9697643', 1,6000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (19, 'Noumi', 'Salesman','noumi@gmail.com', '951', '1509879', 2,10000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (20, 'Anita','Salesman', 'anita@gmail.com', '353', '3567897', 1,9000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (21, 'Noyon','Salesman', 'noyon@gmail.com', '753', '3709878', 2,8000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (22, 'Shiba','Salesman', 'shiba@gmail.com', '253', '3598767', 1, 8000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (23, 'Nasrin','Salesman', 'nasu@gmail.com', '773', '3634565', 1, 7000);
insert into EMPLOYEE(employee_id, employee_name, role, email, password, contact_no, branch_id, salary) values (24, 'Noor', 'Salesman','noor@gmail.com', '783', '3330987', 1,6000);



insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (8, '22-Sep-19', 3000, 12, 4, 9,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (9, '23-Sep-19', 3100, 3, 1, 1,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (10, '05-Oct-19',3300, 4, 5, 12,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (11, '05-Oct-19',3300, 4, 4, 22,'Cash', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (12, '23-Sep-19',3300, 3, 2, 23,'Credit', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (13, '24-Sep-19',3300, 5, 3, 20,'Cash', 1);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (14, '21-Sep-19',3300, 1, 14, 12,'Credit', 2);
insert into BILLS(bill_id, date_recorded, amount,product_id, customer_id, employee_id, payment_type, branch_id) values (15, '22-Sep-19',3300, 2, 15, 12,'Cash', 2);


commit;
 