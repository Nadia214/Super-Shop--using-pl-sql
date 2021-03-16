SET SERVEROUTPUT ON;
DECLARE
	pid int;
	stk int;
	
BEGIN
          pid:='&productid';
          stk:='&stock';
	
	updateStock(pid,stk);
END;
/