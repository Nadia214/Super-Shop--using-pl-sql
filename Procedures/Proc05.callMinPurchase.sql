SET SERVEROUTPUT ON;
DECLARE
	 pdate bills.date_recorded%type;	
	
BEGIN
          pdate := '&Date';
           minPurchase(pdate);
END;
/