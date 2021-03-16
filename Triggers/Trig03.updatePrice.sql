SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER updatePrice
AFTER UPDATE 
of price
ON PRODUCTS 
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'Product price have been updated.'; 
BEGIN 
	
    dbms_output.put_line(msg);
	
	dbms_output.put_line('Product ID: ' || :OLD.product_id); 
	dbms_output.put_line('Product Name: ' || :OLD.product_name); 
	dbms_output.put_line('Updated Price: ' || :NEW.price);
	
END; 
/ 