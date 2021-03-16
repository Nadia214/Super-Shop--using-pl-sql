
create or replace procedure delete_customer(Cid in number)
	is

	BEGIN

	delete from customer@site_link2 where customer_id=cid;
        delete from bills@site_link2 where customer_id=cid;
	
	end delete_customer;
/