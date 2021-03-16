SET SERVEROUTPUT ON;
DECLARE
	d varchar(30);
 n varchar(30);
    m number;    
	
BEGIN
    d:='&Date';
    n:='&CustomerName';
    m:=totalpur(d,n);
  
   dbms_output.put_line('Customer '|| n || ' total purchased on ' || d || ' : ' || m);      
	
	
END;
/