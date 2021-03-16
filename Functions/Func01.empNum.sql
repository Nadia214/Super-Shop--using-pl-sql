CREATE OR REPLACE FUNCTION employee_number(brid IN employee.branch_id%TYPE)
RETURN number
IS

ecount number :=0;

BEGIN

  select count(employee_id) into  ecount 
  from EMPLOYEE/*@site_link2*/ 
  group by branch_id 
  having branch_id = brid;

END employee_number;
/
