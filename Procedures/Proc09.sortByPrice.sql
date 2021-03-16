SET SERVEROUTPUT ON;
create or replace procedure cus5(caddr in varchar,n1 in number,n2 in number)
	is

	
	
product_id int;
	product_name varchar(30); 
	category_id int; 
	price int;
	stock int;
	branch_id int;
 


category_id int;
	category_name varchar(30);


	cursor hello1 is
select p.product_name ,p.price ,p.stock,c.category_name
from products@site_link2 p
join 
category@site_link2 c
on p.category_id=c.category_id;


	BEGIN
	OPEN hello1;
	dbms_output.put_line('Product Name'||'  '||'Price'||'  '||'Stock');
       dbms_output.put_line('--------- ' || ' ----------- ' || '-------- ');
	DBMS_OUTPUT.NEW_LINE;
	DBMS_OUTPUT.PUT_LINE(CHR(10));

	loop

		fetch hello1 into  product_name,price,stock,category_name;
		IF category_name=caddr and (price>n1 and price<n2) then
		dbms_output.put_line(product_name||'    '||price||'    '||stock);
                end if;
                exit when hello1%notfound;
	end loop;
	CLOSE hello1;
	EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
	end cus5;
	/