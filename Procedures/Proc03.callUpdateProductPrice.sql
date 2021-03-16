SET SERVEROUTPUT ON;
DECLARE
	pid int;
	prc int;
	
BEGIN
          pid:='&productId';
          prc:='&price';
	
	updateProductPrice(pid,prc);
END;
/