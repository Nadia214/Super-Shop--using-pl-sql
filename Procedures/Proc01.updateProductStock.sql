--CLEAR SCREEN;

set serveroutput on;
create or replace procedure updateStock(pid in products.product_id%type,
 stk in products.stock%type)
is
begin
	update products@site_link2
	set products.stock = stk where products.product_id = pid;


EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
end updateStock;
/