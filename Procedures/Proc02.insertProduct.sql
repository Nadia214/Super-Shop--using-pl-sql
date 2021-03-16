set serveroutput on;
create or replace procedure insertProduct(pid in products.product_id%type, pname in products.product_name%type, ct in products.category_id%type, 
pprice in products.price%type, stk in products.stock%type,brloc in products.branch_id%type)
is
begin
	insert into PRODUCTS@site_link2(product_id, product_name, category_id, price, stock,branch_id) values (pid, pname, ct, pprice, stk,brloc);

end insertProduct;
/