SET SERVEROUTPUT ON;
DECLARE
	c_id number;
        
        c_no  varchar(30);
        
        brn_id number;
        

BEGIN
      c_id:='&CustomerId';
        c_no:='&ContactNo';
        brn_id:=&BranchId;
         
	
	update_customer(c_id,c_no ,brn_id) ;
END;
/