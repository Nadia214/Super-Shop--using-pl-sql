CREATE OR REPLACE procedure minPurchase(pdate in bills.date_recorded%type)
IS

CustomerID number;

cid customer.customer_id%type;
cname customer.customer_name%type;
mp number;
dr bills.date_recorded%type;

Min number:=0;
	CURSOR mpcur is
        select c.customer_id, c.customer_name,min(b.amount),b.date_recorded
FROM BILLS@site_link2 b join CUSTOMER@site_link2 c 
on c.customer_id=b.customer_id /*where b.date_recorded = pdate*/
GROUP BY c.customer_id,c.customer_name,b.date_recorded
order by  min(b.amount) ;
/*@site_link2*/ 

BEGIN	
open mpcur;
   dbms_output.put_line('CustomerID ' || ' CustomerName ' || 'Purchases' || 'Date');
       dbms_output.put_line('--------- ' || ' ----------- ' || '-------- ' || '----- ' );
      
       DBMS_OUTPUT.NEW_LINE;
	
       loop
		
       FETCH mpcur INTO cid,cname,mp,dr;	
       if dr = pdate then
       dbms_output.put_line('     '|| cid || '                ' || cname || '             ' || mp||'               ' || dr);		 
      
       end if;
       exit when mpcur%notfound;
       end loop;

       close mpcur; 

END minPurchase;
/

