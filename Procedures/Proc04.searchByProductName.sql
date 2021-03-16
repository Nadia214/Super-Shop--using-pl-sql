create or replace procedure searchProduct(pm in products.product_name%type)
 is
  





	p_id products.product_id%type;
	p_name products.product_name%type; 
	cat products.category_id%type;
	pr products.price%type;
	st products.stock%type;
	br products.branch_id%type;

	CURSOR PShow is
        select product_id, product_name, category_id, price, stock,branch_id from products@site_link2 ;
						
 
 
begin	

       dbms_output.put_line('ProductID ' || ' ProductName ' || 'CategoryID ' || 'Price ' || 'Stock ');
       dbms_output.put_line('--------- ' || ' ----------- ' || '-------- ' || '----- ' || '----- ');
      
       open PShow;
	
       loop
		
       FETCH PShow INTO p_id, p_name, cat, pr, st, br;	
       IF p_name=pm then 
       dbms_output.put_line('     '|| p_id || '                ' || p_name || '             ' || cat||'               ' || pr ||'              ' || st);	
       END IF;	 
       exit when PShow%notfound;
       end loop;
       close PShow;
    EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
END searchProduct;
/