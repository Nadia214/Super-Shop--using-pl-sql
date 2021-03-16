SET SERVEROUTPUT ON;
DECLARE
	pid int;
	pname varchar(30);
	ct number;
	pprice int;
	stk int;
        brloc number;
	
BEGIN
          pid:= '&ProductID';
	  pname:= '&ProductName';
          ct:= '&CategoryId';
          pprice:= '&productPrice';
          stk:= '&stock';
          brloc := '&branchId';
	
	insertProduct/*@site_link1*/(pid,pname,ct,pprice,stk,brloc);
END;
/