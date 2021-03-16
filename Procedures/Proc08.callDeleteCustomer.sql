SET SERVEROUTPUT ON;
DECLARE
	c_id number;
       
        
	
BEGIN
        c_id:=&CustomerId;
      
         
	
	delete_customer(c_id);
END;
/