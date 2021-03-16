SET SERVEROUTPUT ON;
DECLARE
	  pm  products.product_name%type;	
	
BEGIN
          pm:= '&productName';
           searchProduct(pm);
END;
/