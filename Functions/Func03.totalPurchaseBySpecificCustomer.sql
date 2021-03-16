SET SERVEROUTPUT ON;
create or replace function totalpur(d in varchar,n in varchar)
Return number
	is

 total number;
BEGIN
  SELECT SUM(b.amount) into total
FROM BILLS b join
CUSTOMER c 
on c.customer_id=b.customer_id
where date_recorded =d and c.customer_name=n;

EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
   return total;

	end totalpur;
/