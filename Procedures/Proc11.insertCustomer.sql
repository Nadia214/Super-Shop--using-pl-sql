create or replace procedure insert_customer(c_id in number,c_name in varchar,c_no in varchar,brn_id in number)
	is

       
	bill_id int;
	date_recorded date:='17-nov-2018';
        amount int:=5000;
	product_id int:=3;
        customer_id int;
        employee_id int:=6;
	payment_type varchar(30):='cash';
	branch_id int;


       cid number;
        cursor hello1 is
	select customer_id from customer;
        cursor hello2 is
	select bill_id from bills;

	BEGIN

        OPEN hello1;
	
	loop

		fetch hello1 into  cid ;
                exit when hello1%notfound;
	end loop;
        cid:=cid+1;
        insert into customer values(cid,c_name,c_no,brn_id);
	CLOSE hello1;
        OPEN hello2;
	
	loop

		fetch hello2 into  bill_id ;
                exit when hello2%notfound;
	end loop;
        bill_id:=bill_id+1;
        insert into Bills values(bill_id,date_recorded,amount,product_id,cid,employee_id,payment_type,brn_id);
     CLOSE hello2;
         
 
	EXCEPTION
	WHEN DUP_VAL_ON_INDEX THEN 
      dbms_output.put_line('Please enter another Customer Id!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
end insert_customer;

/ 
