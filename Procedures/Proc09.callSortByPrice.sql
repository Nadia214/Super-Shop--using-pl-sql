SET SERVEROUTPUT ON;
DECLARE
	caddr varchar(30);
	n1 number;
        n2 number;
BEGIN
       
	caddr:='&CategoryName';
        n1:=&LowerRange;
        n2:=&UpperRange;
	cus5(caddr,n1,n2);
END;
/