set serveroutput on;
declare
	X number;
	Y number;
	Z number;
	eeesalary number;
    eeeid number;
    eeename varchar2(16);
    bbid number;
    ddesig varchar2(23);

    total_employees number;
    total_customers number;
    total_transactions number;
begin
	X:= &X;
	if(X=1) then
		--Employee Table
		--Right now work done for employee table.
		dbms_output.put_line('Employee Table Selected');
		Y:= 1;    
			case Y                    
			when 1 then
			dbms_output.put_line('Select operations for Employee Table');
				--select
				Z:= 2;
					case Z
					when 1 then
					--select  all employee
						select_all_employee;
					when 2 then
					--select employee salary
						emp_salary_above(90000);   
					when 3 then
						--select employeeID 
						 emp_id(7);
					when 4 then
						--select employee name
						emp_name('Ta');	 				
					when 5 then
						--select employee branch
						emp_bid(2);	
					when 6 then
						--select employee designation		
						emp_desig('Man');				 
					else
						--should use exception here
						dbms_output.put_line('Invalid input');	
					end case;
			  when 2 then
			  --Y=2 insert into employee
			  insert_employee(12,'John Doe',82000,'Assistant Manager',3);
			  commit;
			  select_all_employee;
			  select_all_employee1;
					
			  when 3 then
			  --Y=3 update employee designation
			  update_employee(10,'Manager');
			  commit;
			  select_all_employee;
			 select_all_employee1;
			
			  when 4 then
			  --Y=4 delete from employee
			  delete_employee(10);
			  commit;
			  select_all_employee;
			  select_all_employee1;
			
		
		end case;
	 end if;	

	
end;
/


else 
			dbms_output.put_line('Invalid operation selected');	

