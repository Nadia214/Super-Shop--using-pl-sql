
create or replace procedure update_customer(cid in number,cnt in varchar2,br_id in number)
	is

	BEGIN

	update customer set contact_no=cnt,branch_id=br_id where customer_id=cid;
        update bills set branch_id=br_id where customer_id=cid;
	
	end update_customer;
/ 