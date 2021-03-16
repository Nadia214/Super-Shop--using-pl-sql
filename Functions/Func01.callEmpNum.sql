CLEAR SCREEN;

SET SERVEROUTPUT ON;


DECLARE
	branchid int;
	totalcount int;
	
BEGIN
          branchid:='&branchid';
	
	totalcount := employee_number(branchid);
	
        dbms_output.put_line('Total Employee: '|| totalcount||' ');
	
END;
/