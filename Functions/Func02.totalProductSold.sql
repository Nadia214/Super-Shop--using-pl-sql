CREATE OR REPLACE FUNCTION maxProductSold(pdate in bills.date_recorded%type)
RETURN int
IS
pcon number:=0;

BEGIN	
SELECT count(p.product_id) into pcon from
products p, BILLS b  
where p.product_id = b.product_id
and b.date_recorded = pdate;
RETURN pcon;
EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
END maxProductSold;
/

/*@site_link2*/
