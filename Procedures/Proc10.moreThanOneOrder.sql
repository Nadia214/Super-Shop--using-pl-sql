SET SERVEROUTPUT ON;
create or replace procedure cus4(am in number)
	is

	


 c_id   customer.customer_id%Type ; 
c_name  customer.customer_name%Type;
c_no    customer.contact_no%Type ;	
brn_id	   customer.branch_id%Type;



	bill_id int;
	date_recorded date;
        amount int;
	product_id int;
        customer_id int;
        employee_id int;
	payment_type varchar(30);
	branch_id int;


    
   



	cursor hello1 is
    SELECT c.customer_id,c.customer_name FROM customer c   
    WHERE  1<             
	     (SELECT COUNT (*)              
		  FROM Bills b             
		  WHERE b.customer_id =            
		  c.customer_id);
   
      

	BEGIN
	OPEN hello1;
	
        dbms_output.put_line('CustomerID '||'     '||'CustomerName ');
	
	

	loop

		fetch hello1 into  c_id ,c_name;
		dbms_output.put_line(c_id||'                '||c_name);
                exit when hello1%notfound;

	end loop;
	CLOSE hello1;
	EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
	end cus4;
	/