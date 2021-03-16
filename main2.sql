set serveroutput on;
declare
	X number;
	Y number;
	Z number;
 totalcount1 number;
 totalcount2 number;
empnum number :=1;

date varchar(30) := '22-Sep-2019';
begin
	X:= &X;
	if(X=1) then
		--products Table
		--Right now work done for products table.
		dbms_output.put_line('Products Table is selected');
		Y:= 1;    
			case Y                    
			when 1 then
			dbms_output.put_line('Select operations for Products Table');
				--select
	                	Z:= 3;
					case Z
					when 1 then
					--select  all Products 
						--select * from products;
					when 2 then
					--show total employee on a branch
                                         totalcount1 := employee_number(empnum);
		     dbms_output.put_line('Total Employee: '|| totalcount1||' ');
					when 3 then
				--show total product on a specific date
                  totalcount2 := maxProductSold(date);
	          DBMS_OUTPUT.NEW_LINE;
                 dbms_output.put_line('Total Product Sold ' ||' : '|| totalcount2||' ');
				/*	when 4 then
						--insert products
				insertProduct(30,'FuWan','Noodles',14,20,1);	 				
					when 5 then
						--update product price
						updateProductPrice(3,20);
					when 6 then
						--select serach product		
					 searchProduct('CocaCola');	*/			 
					else
						--use exception
				         dbms_output.put_line('Invalid input');	
					end case;
end case;
end if;
end;
/			
			
