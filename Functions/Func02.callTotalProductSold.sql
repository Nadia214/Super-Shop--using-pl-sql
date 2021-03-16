--CLEAR SCREEN;

SET SERVEROUTPUT ON;
DECLARE
	--pid int;
	totalcount int;
        pdate bills.date_recorded%type;
	
BEGIN
	pdate := '&Date';
	totalcount := maxProductSold(pdate);
	DBMS_OUTPUT.NEW_LINE;
       dbms_output.put_line('Total Product Sold on ' || pdate ||' : '|| totalcount||' ');	

END;
/

--21-Sep-2019
