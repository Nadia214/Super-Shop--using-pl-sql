SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER insertCustomer 
AFTER INSERT ON customer
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'New customers have been added.'; 
BEGIN 

    dbms_output.put_line(msg);
	
	dbms_output.put_line('CustomerId: ' || :NEW.customer_id); 
	dbms_output.put_line('Customer Name: ' || :NEW.customer_name); 
	--dbms_output.put_line('Category: ' || :NEW.category);
	--dbms_output.put_line('Price: ' || :NEW.price);
	--dbms_output.put_line('Stock: ' || :NEW.stock);
        dbms_output.put_line('Branch Id: ' || :NEW.branch_id);
	
END; 
/ 