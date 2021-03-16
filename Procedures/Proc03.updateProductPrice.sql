set serveroutput on;
create or replace procedure updateProductPrice(pid in products.product_id%type, prc in products.price%type)
is
begin
	update products@site_link2
	set products.price = prc where products.product_id = pid;
/*EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
*/
end updateProductPrice;
/