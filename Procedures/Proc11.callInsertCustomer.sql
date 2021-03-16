SET SERVEROUTPUT ON;
DECLARE
	c_name varchar(30);
        c_no varchar(30);
        c_id number;
        brn_id number;
        
	
BEGIN
         c_id := '&CustomerId';
        c_name:='&CustomerName';
        c_no:='&ContactNo';
        brn_id:=&BranchID;
         
	
	insert_customer(c_id,c_name ,c_no ,brn_id) ;
END;
/