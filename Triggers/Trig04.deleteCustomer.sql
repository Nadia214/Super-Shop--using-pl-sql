SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER deleteCustomer
AFTER delete
ON Customer@site_link2
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'The entered customer is deleted.'; 
BEGIN 
	
    dbms_output.put_line(msg);
	
	--dbms_output.put_line('Product ID: ' || :OLD.product_id); 
	--dbms_output.put_line('Product Name: ' || :OLD.product_name); 
	--dbms_output.put_line('Updated Price: ' || :NEW.price);
	
END; 
/ 