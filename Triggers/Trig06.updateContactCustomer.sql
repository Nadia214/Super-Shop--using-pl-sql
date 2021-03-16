SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER updateContactCustomer
AFTER UPDATE 
of contact_no
ON customer
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'Customer contact has been updated.'; 
BEGIN 
	
    dbms_output.put_line(msg);
	
	dbms_output.put_line('Customer ID: ' || :OLD.customer_id); 
	dbms_output.put_line('Customer Name: ' || :OLD.customer_name); 
	dbms_output.put_line('Updated Contact: ' || :NEW.contact_no);
	
END; 
/ 