SELECT last_name, gender, monthly_income AS income FROM LMS_Customer_M_kushmakar;

SELECT * FROM LMS_Product_M_kushmakar;

SELECT * FROM LMS_Customer_kushmakar;

SELECT customer_id, last_name, monthly_income x 12 ANNUAL INCOME FROM 
LMS_Customer_M_Kushmakar;

select customer_id, designation from LMS_Customer_M_kushmakar where designation = null;
--1) Display the agreement_id, Loan_Amount, Tenure, ROI, Loan_Disbursal_Date from LMS_Agreement_DTL with agreement_id appearing first.

SELECT AGREEMENT_ID, LOAN_AMOUNT, TENURE,ROI,LOAN_DISBURSAL_DATE  FROM LMS_AGREEMENT_DTL_Kushmaka;

--2) Provide an alias for Loan_Disbursal_Date as DISBURSAL DATE in the above query
SELECT AGREEMENT_ID, LOAN_AMOUNT, TENURE,ROI,LOAN_DISBURSAL_DATE "DISBURSAL DATE" FROM LMS_AGREEMENT_DTL_Kushmaka;
--3)
SELECT DISTINCT DESIGNATION FROM LMS_CUSTOMER_kushmakar;
--4) Find loans that have no disbursements recorded. Return Loan Agreement ID.
SELECT AGREEMENT_ID FROM LMS_AGREEMENT_DTL_Kushmakar WHERE LOAN_DISBURSAL_DATE IS NULL;
--5) Find loans that have no disbursements recorded. Return Loan Agreement ID.
SELECT * FROM LMS_AGREEMENT_DTL_Kushmakar WHERE LOAN_DISBURSAL_DATE BETWEEN '01-MAR-2020' AND '31-MAR-2020';
--6) Write a query to display all the loan agreements whose loan amount is greater then 5lac and ROI is less than 10%
SELECT * FROM LMS_AGREEMENT_DTL_Kushmaka WHERE Loan_Amount>500000 AND ROI<10;
--7) Write a query to display all the instalments from LMS_PAYMENT_DTL whose status is ‘Completed’.
SELECT * from LMS_PAYMENT_DTL_kushmakar WHere Status = 'C';
--8) Write a query to display all the records from LMS_CHEQUE_DTL whose Payment mode is either ‘Cheque’ or Draft’.

SELECT * from LMS_CHEQUE_DTL_kushmakar where payment_mode = 'C' or payment_mode = 'D';
--9) Write a query to fetch all the records from LMS_TXN_ADVICE_DTL table whose TxnType is ‘Installment’

SElect * from LMS_TXN_ADVICE_DTL_kushmakar where txntype = 'Installment';

select * from LMS_REPAYSCH_DTL_Kushmakar;

DROP TABLE LMS_REPAYSCH_DTL_Kushmakar;

create table LMS_REPAYSCH_DTL_Kushmakar;
as 
select * from LMS_REPAYSCH_DTL_16899;

insert into LMS_REPAYSCH_DTL_Kushmakar;
select * from LMS_REPAYSCH_DTL_16899;

10. Write a query to fetch all Product Categories from LMS_Product_Category_M table which 
are Secured.

SELECT * FROM LMS_PRODUCT_CATEGORY_Kushmakar where SecuredLoan = 's';




--11. Write a query to display last_name concatenated with the designation (separated by a 
comma and a space) from LMS_Customer_M table. Name the column ‘Customer and Title’

SELECT concat(last_name,concat(',',Designation ) "Customer and Title *from LMS_CUSTOMER_Kushmakar;

--12. Write a query to display all the records from LMS_CHEQUE_DTL table sorted descending by Deposit_Date.
SELECT * from LMS_CHEQUE_DTL_kushmakar order by Deposit_date DESC;

--13. Write a query to display current date. Label the column DATE.
SELECT CURRENT_DATE AS ‘’DATE” FROM DUAL;

--14. Write a query to display all the records from LMS_CHEQUE_DTL table whose cheque_date and deposit_Date are same.
SELECT * from LMS_CHEQUE_DTL_kushmakar where Cheque_date = Deposit_date;

--15. Write a query to calculate the Penalty charges from LMS_REPAYSCH_DTL table where 
--Installment_Due_Date is less than current_date. Consider putting a penalty of Rs. 100/- per 
--day from Installment_Due_Date.


SELECT sum(penalty_charges) from LMS_REPAYSCH_DTL_kushmakar where Installement_Date >(select sysdate as "date" from dual);

--16. Write a query to calculate the DBR percentage for each customer. The formula to calculate the DBR is DBR = totalmonthlyexpense/totalmonthlyincome.Name the column DBR. 

   SELECT(TOTAL_MONTHLY_EXPENSE/MONTHLY_INCOME) AS "DBR" FROM LMS_CUSTOMER_kushmakar;
 
--17. Write a query that displays the last name (with the first letter uppercase and all other letters 
--lowercase) and the length of the last name for all customers whose name starts with the 
--letters J, A, or M. Give each column an appropriate label.
   SELECT last_name "Name",LENGTH(last_name)"Length" FROM LMS_CUSTOMER_kushmakar where last_name LIKE 'J%' OR last_name LIKE 'A%';


--18. For each customer, display the first name, last name, and email address. The 
--email address will be composed from the first letter of first name, concatenated with the 
--three last letters of last name, concatenated with @nucleussoftware.com.


--19. Write a query to display the date of instalment_amount and date of first instalment 


--20. Write a query to display all the loan agreements with loan disbursal date in the format 
--January 22, 2001


DROP TABLE LMS_AGREEMENT_DTL_Kushmakar;






select * from  LMS_AGREEMENT_DTL_Kushmakar;
create table  LMS_AGREEMENT_Kushmakar;

as 
select * from LMS_AGREEMENT_DTL_16899;

insert into LMS_AGREEMENT_DTL_Kushmakar;
select * from LMS_AGREEMENT_DTL_16899;

COMMIT;
--1. Find out what is the total LPP(Late Penalty Charges) amount charged for a given period (from to date).
   SELECT  * from LMS_REPAYSCH_DTL_Kushmakar;
  SELECT SUM(PENALTY_CHARGES) as TOTAL_LPP FROM LMS_REPAYSCH_DTL_Kushmakar where installment_due_date between '10-MAR-2022' and '10-NOV-23';

--2. For a given loan agreement, fetch the count of EMIs billed, total EMI amount billed, total Principal billed, Total Interest billed, total Principal paid, total interest paid
     SELECT count(AGREEMENT_ID) "EMIs billed ",sum(INSTALLMENT_AMOUNT)"EMI amount billed",
     sum(PRINCIPAL_COMPONENT ) "total principal billed",sum(INTEREST_COMPONENT) "total interest billed",
     sum(INSTALLMENT_AMOUNT ) "total principal paid",sum(INTEREST_COMPONENT) "total interest paid" from LMS_REPAYSCH_DTL_Kushmakar;
       

--3. Find the count of all payments which has been made through Cash.
     SELECT  * from LMS_CHEQUE_DTL_Kushmakar;
     SELECT count(*) from LMS_CHEQUE_DTL_Kushmakar where PAYMENT_MODE = 'C';
       
--4. Find the count of All Pending instalments for a particular LoanAgreement.
    SELECT count(AGREEMENT_ID) from LMS_REPAYSCH_DTL_Kushmakar where installment_due_date>(select sysdate  from dual);
    
    

--5. Find the count of all Active Loans.
      
      SELECT  * from LMS_AGRE_DTL_Kushmakar;
       
      SELECT count(Lessee_ID) from LMS_AGREEMENT_DTL_Kushmakar where loan_disbursal_date>(select sysdate  from dual);
    
    
       
       
--6. Find the sum of all the amounts of the loans being taken by a particular Customer given the customer_id.
   
     
     SELECT sum(A.loan_Amount) from LMS_CUSTOMER_kushmakar C join LMS_AGREEMENT_DTL_Kushmakar A on C.CUSTOMER_ID = A.Lessee_Id group by A.Lessee_Id;
      
    
--7. Find the sum of all the amounts of the loans being taken by every Customer
     SELECT sum(Loan_Amount) from LMS_AGREEMENT_DTL_Kushmakar group by Lessee_Id;
    
--8. Display the minimum and maximum ROI from the LMS_Agreement_DTL table
     SELECT min(ROI), max(ROI) from LMS_AGREEMENT_DTL_Kushmakar;
    
    
--9. Find the sum of advice amount being generated in a particular month
    SELECT * FROM LMS_TXN_ADVICE_DTL_Kushmakar;
    SELECT sum(ADVICEAMT) FROM LMS_TXN_ADVICE_DTL_Kushmakar group by to_char(ADVICEDATE), ('month');
--10. Find the avg of total interest billed in a particular month.
   SELECT AVG(Interest_component) as Total_Monthly_Interest from LMS_REPAYSCH_DTL_Kushmakar GROUP BY EXTRACT(MONTH from installement_Due_Date);
  
  
 --  1. For a given Customer, fetch all the loans being taken by that Customer. Return Customer Name, Product Name, Product Category, Loan Amount, Loan Disbursal Date and Repayment Frequency.
select C.First_Name,P.Product_Name,P.Product_Category,A.Loan_Amount,A.Loan_Disbursal_Date,
A.Repayment_Frequency from LMS_CUSTOMER_Kushmakar C
join LMS_AGREEMENT_Kushmakar A on C.Customer_Id=A.Lessee_ID join 
LMS_Product_Kushmakar P on A.Product_Code=P.Product_Code;


--2. For a given Loan agreement, fetch all the advices generated to date. Return Agreement ID,Customer Name, Advice ID, Advice date, Payment or Receipt, Advice Amount, Paid to date.
SELECT 
A.Agreement_ID,C.First_Name,T.Txn_Advice_ID,T.ADVICEDATE,P.Payment_ID,T.ADVIC
EAMT,P.Payment_Date FROM
LMS_AGREEMENT_Kushmakar A 
JOIN LMS_CUSTOMER_Kushmakar C ON A.lessee_id=C.Customer_Id
JOIN LMS_TXN_ADVICE_Kushmakar T ON T.CASE_ID=A.Agreement_ID 
JOIN LMS_PAYMENT_Kushmakar P ON P.Txn_Advice_ID=T.Txn_Advice_ID 
WHERE Agreement_ID='&AGR_ID';


--3. For a given receipt cheque Number, please find out the advices which have been settled with it.

SELECT * FROM LMS_TXN_ADVICE_Kushmakar T 
JOIN 
LMS_PAYMENT_Kushmakar P ON P.Txn_Advice_id=T.TxnAdviceid
JOIN 
LMS_CHEQUE_Kushmakar C ON P.Cheque_Id=C.Cheque_Id
WHERE Cheque_Num='&Cheque_Num';

--4. Find out how many payments have been made by a customer against a given Agreement ID
   SELECT COUNT(*) FROM 
LMS_AGREEMENT_Kushmakar A 
JOIN LMS_TXN_ADVICE_Kushmakar T ON a.agreement_id =T.caseid 
JOIN LMS_PAYMENT_Kushmakar P ON t.TxnAdviceid=p.txn_advice_id
WHERE A.Agreement_ID='&AGR_ID';

--5. For a given loan agreement, get the count and total payments amount received by payment mode (Cheque, Cash…).

 SELECT COUNT(*),SUM(C.Cheque_Amount) FROM
LMS_AGREEMENT_Kushmakar A 
JOIN LMS_TXN_ADVICE_Kushmakar T ON a.agreement_id =t.caseid
JOIN Lms_payment_Kushmakar P ON t.txnadviceid=p.txn_advice_id
JOIN LMS_CHEQUE_Kushmakar C ON p.cheque_id=c.cheque_id
WHERE A.Agreement_ID='&AGR_ID'
AND c.Payment_Mode='C' OR c.Payment_Mode='Q';


--6. For a given loan, get the total count and amount of payments received from the customer that have bounced.
  SELECT COUNT(*),SUM(C.Cheque_Amount) FROM
LMS_AGREEMENT_Kushmakar A 
JOIN LMS_TXN_ADVICE_Kushmakar T ON a.agreement_id =t.caseid
JOIN lms_payment_Kushmakar P ON t.txnadviceid=p.txn_advice_id
JOIN LMS_CHEQUE_Kushmakar C ON p.cheque_id=c.cheque_id
WHERE A.Agreement_ID='&AGR_ID'
AND c.status='B';


--7. Get the count and total payments amount received by payment mode (Cheque, Cash…) for all the Loan Agreements.

 SELECT COUNT(*),SUM(C.Cheque_Amount) FROM
LMS_AGREEMENT_Kushmakar A 
JOIN LMS_TXN_ADVICE_Kushmakar T ON a.agreement_id =t.caseid
JOIN lms_payment_Kushmakar P ON t.txnadviceid=p.txn_advice_id
JOIN LMS_CHEQUE_Kushmakar C ON p.cheque_id=c.cheque_id
WHERE c.Payment_Mode='C' OR c.Payment_Mode='Q';

--8. For a given Customer find out the total number of installments which had not been paid for all the loans being taken by that Customer.


--9. For a given Customer, find out how many loans the Customer has taken are Asset based. Return the Customer Name, Product Name and Loan Amount.


--10. Get the total Installment amount billed to date.

Select SUM(installment_amount) from lms_repaysch_Kushmakar r
where r.installment_due_date <= '&date';

--11. Write a query to find out those customers who have paid all the instalments on time.

SELECT c.customer_id,
 c.first_name, 
 c.last_name,
 a.lessee_id
 FROM LMS_CUSTOMER_Kushmakar c
JOIN LMS_AGREEMENT_Kushmakar a ON C.Customer_Id=a.lessee_id 
JOIN LMS_REPAYSCH_Kushmakar R ON R.Agreement_ID=A.Agreement_ID 
JOIN LMS_TXN_ADVICE_Kushmakar T ON A.Agreement_ID=T.CaseId
JOIN LMS_PAYMENT_Kushmakar P ON T.TxnAdviceid=P.Txn_Advice_id
WHERE P.Payment_Date <=R.Installment_Due_Date;

--12. For a given loan agreement id, find out the details of the product. Return Product name, max_tenure, min_tenure, asset based, secured/Unsecured loan.

SELECT p.Product_Name,p.Max_Tenure,p.Min_Tenure,pc.Asset_Based,pc.secured_loan 
from LMS_PRODUCT_Kushmakar p 
join LMS_AGREEMENT_Kushmakar a on p.product_code = a.product_code
join LMS_PRODUCT_CATEGORY_Kushmakar pc on p.Product_Category=pc.Category_ID
where a.agreement_id= '&agreement_id';

--13. Given a PropInstID, find out the loan agreement details of that PropInstID.

select * from LMS_AGREEMENT_Kushmakar ag join LMS_REPAYSCH_Kushmakar r on ag.Agreement_ID 
=r.Agreement_ID where r.PropInstID='&PropInstID';
--14. Display a report of all the installments of a particular loan agreement id. Return loan amount, installment amount, principal component, interest component.
select Loan_Amount,Installment_Amount,Prinicipal_Component,Interest_Component from 
LMS_AGREEMENT_Kushmakar ag join LMS_REPAYSCH_Kushmakar r on 
ag.Agreement_ID=r.Agreement_ID where
ag.Agreement_ID= '&Agreement_ID';


--15. Write a query to find out who all customers have taken the home loan.

   Select * from LMS_CUSTOMER_Kushmakar c
join  LMS_AGREEMENT_DTL_Kushmakar a
on c.customer_id=a.lessee_id
where a.agreement_id like '%Home%';
   
   
Select * from LMS_AGREEMENT_DTL_Kushmakar   
   
DROP TABLE LMS_AGREEMENT_DTL_Kushmakar   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   --SQL_DAY_4.
   
--1. Create a query to display the Customer Name and Date of Birth of all the Customers who are younger than Customer ‘David’.
   SELECT FIRST_NAME, DATE_OF_BIRTH From LMS_CUSTOMER_Kushmakar where
   DATE_OF_BIRTH > (select DATE_OF_BIRTH FROM LMS_CUSTOMER_Kushmakar where FIRST_NAME = 'Divya');
    
--2. Find out all the Customers who have more than 1 loan. Return Customer name and number of loans.
      SELECT FIRST_NAME from LMS_CUSTOMER_Kushmakar
      WHERE CUstomer_ID = (Select Lessee_ID from LMS_AGREEMENT_DTL_Kushmakar group by Lessee_ID having count(*)>1);
--3. Find out all the customers who have more than 1 loan of tenure greater than 5 years and repayment frequency is Quarterly. Return Customer Name, Product Name, Loan Disbursal Date and Loan Amount.
    
 --4. Write a query to display the customer id, customer first name of all customers whose designation is same as any customer whose last name contains a ‘U’
    
    SELECT CUstomer_id,First_Name from LMS_CUSTOMER_Kushmakar
    where Designation = any(Select designation From LMS_CUSTOMER_Kushmakar where last_name like '%u%'); 
    
--5. Write a query to fetch all the loan details whose disbursal date is greater than the disbursal date of the loans being taken by a Customer ‘David’
  SELECT * FROM LMS_AGREEMENT_DTL_Kushmakar WHERE LOAN_Disbursal_Date>(select Loan_Disbursal_Date from LMS_AGREEMENT_DTL_Kushmakar
  where Lessee_ID = (Select Customer_Id from LMS_CUSTOMER_kushmakar where First_NAME='puneet'));
--6. Write a query to fetch all the loan details whose loan amount is greater than the average of loan amounts being disbursed till date sorted descending
   SELECT * FROM LMS_AGREEMENT_DTL_Kushmakar
   WHERE Loan_Amount >(select avg (Loan_Amount) from LMS_AGREEMENT_DTL_Kushmakar) order by loan_Disbursal_Date desc;
   
--7. Write a query to find all the customers who took all products (all loan types available)
 
   
 
--8. Write a query to fetch those loans where loan amount exceeds everyone’s credit limit.
    SELECT Lessee_ID, AGREEMENT_ID FROM LMS_AGREEMENT_DTL_Kushmakar
    WHERE Loan_Amount>ALL (select Monthly_Income from LMS_CUSTOMER_Kushmakar);
  
--9. Write a query to fetch those customers whose monthly expenses are greater than average monthly expenses of all customers.
   SELECT FIRST_NAME from LMS_CUSTOMER_kushmakar
   Where Total_Monthly_Expense> (select avg(Total_Monthly_Expense) from LMS_CUSTOMER_Kushmakar);
--10. Write a query to find out those customers who have paid the least penalty charges on the installments.
  SELECT FIRST_NAME from LMS_CUSTOMER_kushmakar where Customer_Id in (select Lessee_ID from LMS_AGREEMENT_DTL_Kushmakar
  where AGREEMENT_ID in(select AGREEMENT_ID from LMS_REPAYSCH_DTL_Kushmakar
  where Penalty_Charges in (select least (penalty_Charges) from LMS_REPAYSCH_DTL_Kushmakar)));
 

 --1. Create a view on LMS_CHEQUE_DTL table based on Cheque_num, deposit_date, cheque_amount, payment_mode and status. Change the column names to ‘Cheque Number’, ‘Date’, ‘Amount’, and ‘Mode’ respectively. Name the view as ChequeDetails_VU. 
   
   create view Cheque_view_Kushmakar as
   select Cheque_num "Cheque_number" , deposit_date "Date" , cheque_amount "Amount", payment_mode "Mode" ,status
   from LMS_CHEQUE_DTL_Kushmakar;

--2. Confirm that the view works. Display only the Cheque number and Date from the above view
   
   Select "Cheque_number", "Date" from Cheque_View_kushmakar;
   
--3. Create a view which take care of all the Loan Agreements of HOME LOAN Type only. Name the view as HOME_LOAN_VU. Confirm that the view works. 
   Create view HOME_LOAN_Vu_Kushmakar as
   select * from LMS_AGREEMENT_DTL_Kushmakar where Agreement_Id like '%Home';
   select * from HOME_LOAN_VU_Kushmakar;
--4. Create a view which displays all the Loans being taken by the Customers. The view contains Customer 
   
   create view Custom_loan_Kushmakar as select concat (C.First_Name, C.Last_Name) as "Customer_Name",
   P.product_Name , A.Loan_Amount, A.Loan_Disbursal_Date,
   R.Installment_Amount from LMS_CUSTOMER_Kushmakar C joins LMS_AGREEMENT_DTL_Kushmakar A
   on C.Customer_Id = A.Lessee_Id join LMS_PRODUCT_Kushmakar P on
   P.Product_Code = A.Product_Code join LMS_REPAYSCH_DTL_Kushmakar R on
   R.Agreement_Id = A.Agreement_Id;
   
--5. Confirm that the view works 
   SELECT * from CUSTOM_Loan_kushmakar;
--6. Create a view based on Customer name and count of all the loans being taken by the Customer whose repayment frequency is Monthly. 
     create view CUSTOM_LOAN_VU_KUshmakar as select C.First_Name, A.Agreement_Id as "COUNT"
     from LMS_AGREEMENT_DTL_Kushmakar A join LMS_CUSTOMER_Kushmakar C on C.Customer_Id = 
     A.Lessee_Id where Repayment_Frequency = 'M';
     
--7. Confirm that the view works. 
   Select * from CUSTOM_LOAN_VU_Kushmakar;
--8. Create a view based on Product Name, sum of total pending instalments sorted descending. 
    
    
    
--9. Create a view based on Customer Name, Gender, Contact number, Profession, Monthly income and monthly expense. 
    create view CUSTOM_view_Kushmakar as select First_Name , Gender, Contact_Number, profession,
    Monthly_Income,Total_Monthly_expense from LMS_CUSTOMER_Kushmakar;
    
    
--10. Check whether the above view is updatable or not. If not, why?

    Select * from CUSTOM_View_Kushmakar;
    insert into CUSTOM_View_Kushmakar values ('ABCDEF' , 'M',1234567890, 'ASE',45000,20000);
    
    
    --PLSQL:
    set serveroutput on; 
    
   DECLARE
v_data NUMBER(7);
BEGIN
DBMS_OUTPUT.PUT_LINE(v_data);
END;

--1)
--a)
set serveroutput on
DECLARE 
    v_id NUMBER(4);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Statement is true' || v_id);
END;


--b)
set serveroutput on 
DECLARE v_x , v_y, v_z VARCHAR2(10); 
begin
    DBMS_output.put_line(v_x);
    DBMS_output.put_line(v_y);
    DBMS_output.put_line(v_z);
end;



--c)


--d)
set serveroutput on 
DECLARE v_in_stock BOOLEAN :=1; 
begin
  DBMS_output.put_line(v_in_stock);
end;

--2)
DECLARE 
    v_data NUMBER(7); 
BEGIN 
    DBMS_OUTPUT.PUT_LINE(v_data); 
END;

--3)
set serveroutput on 
DECLARE
    v_weight NUMBER (3):=600;
    v_message VARCHAR2(255):='Product 10012';
BEGIN
    DECLARE
        v_weight NUMBER(3) :=1;
        v_message VARCHAR2 (25):='Product 11001';
        v_new_locn VARCHAR2(25):='Europe';
    BEGIN
        v_weight := v_weight +1;
        v_new_locn:='Western '||v_new_locn;
        -- Point 1
--        DBMS_OUTPUT.PUT_LINE( v_weight|| v_message|| v_new_locn) ;
    END;
    v_weight:=v_weight + 1;
    v_message:=v_message|| 'is in stock';
    -- Point 2
    DBMS_OUTPUT.PUT_LINE( v_weight|| v_message|| v_new_locn) ;
END; 

--4)
declare 
    n1 number(2);
    n2  number(2);
    res number(2);
begin
    n1:=&n1;
    n2:=&n2;
    res :=(n1/n2)+n2;
    DBMS_OUTPUT.PUT_LINE(res);
end;

select * from employee_Kushmakar;

--5)
set serveroutput on
declare
    max_sal number;
    min_sal number;
begin
    select max(salary) into max_sal from employee_Kushmakar where depid=4;
    select min(salary) into min_sal from employee_Kushmakar where depid=4;
    DBMS_OUTPUT.Put_line(max_sal || ' '|| min_sal);
end;

--6)
set serveroutput on
declare
    emp_no employee_Kushmakar.id%type;
    esal employee_Kushmakar.salary%type;
begin
    emp_no:=&emp_no;
    select salary into esal from employee_Kushmakar where id=emp_no;
    if(esal<2500) then
        dbms_output.put_line('LOW');
    elsif(esal >= 2500 and esal <5000) then
        dbms_output.put_line('MEDIUM');
    elsif(esal >=5000) then
        dbms_output.put_line('HIGH');
    end if;
end;
    
--7)
SET SERVEROUTPUT ON
DECLARE
VAL NUMBER := '&V';
BEGIN
    IF (VAL = 1) THEN
        DBMS_OUTPUT.PUT_LINE('JANUARY');
    ELSIF(VAL = 2) THEN
        DBMS_OUTPUT.PUT_LINE('FEB');
    ELSIF(VAL = 3) THEN
        DBMS_OUTPUT.PUT_LINE('MARCH');
    ELSIF(VAL = 4) THEN
        DBMS_OUTPUT.PUT_LINE('APRIL');
    ELSIF(VAL = 5) THEN
        DBMS_OUTPUT.PUT_LINE('MAY');
    ELSIF(VAL = 6) THEN
        DBMS_OUTPUT.PUT_LINE('JUNE');
    ELSIF(VAL = 7) THEN
        DBMS_OUTPUT.PUT_LINE('JULY');
    ELSIF(VAL = 8) THEN
        DBMS_OUTPUT.PUT_LINE('AUGUST');
    ELSIF(VAL = 9) THEN
        DBMS_OUTPUT.PUT_LINE('SEPTEMBER');
    ELSIF(VAL = 10) THEN
        DBMS_OUTPUT.PUT_LINE('OCTOBER');
    ELSIF(VAL = 11) THEN
        DBMS_OUTPUT.PUT_LINE('NOV');
    ELSIF(VAL = 12) THEN
        DBMS_OUTPUT.PUT_LINE('DEC');
    ELSE
        DBMS_OUTPUT.PUT_LINE('INVALID_MONTH');
    END IF;
END;
/

--8a)
DECLARE
    FACT NUMBER := 1;
    N NUMBER := &n;

BEGIN
    WHILE N>0 LOOP
        FACT := N*FACT;
        N := N-1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(FACT);
END;



--8b)
declare
    first number := 0;
    second number := 1;
    temp number;
    n number := &n;
    i number;
begin
    dbms_output.put_line('Series:');
    dbms_output.put_line(first);
    dbms_output.put_line(second);
    for i in 2..n loop
        temp:=first+second;
        first := second;
        second := temp;
        dbms_output.put_line(temp);
    end loop;
end;

--8c)
DECLARE
    I NUMBER;
    LAST NUMBER := '&LAST';
    I1 NUMBER := 0;
    I2 NUMBER := 1;
    FIB NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE(I1);
    DBMS_OUTPUT.PUT_LINE(I2);
    FOR I IN 2..LAST LOOP
        FIB := I1 + I2;
        IF FIB > LAST THEN
            EXIT;
        END IF;
    DBMS_OUTPUT.PUT_LINE(FIB);
    I1 := I2;
    I2 := FIB;
    END LOOP;
END;
/

--8d)
set serveroutput on
declare
    count_factor number := 0;
    enter_num number;
begin
    enter_num := &enter_num;
    for i in 1..enter_num loop
    if(mod(enter_num,i)=0)
        then count_factor:=count_factor+1;
    end if;
    end loop;
    if(count_factor=2) then dbms_output.put_line('Is Prime');
    else dbms_output.put_line('Is Not Prime');
    end if;
end;

--8e)
set serveroutput on
declare
    enter_num number;
    count_num number;
    j number;
begin
    enter_num := &enter_num;
    for i in 2..enter_num-1 loop
        count_num := 0;
        for j in 1..i loop
            if mod(i,j)=0 then count_num:=count_num+1;
            end if;
            end loop;
            if count_num<=2 then 
                dbms_output.put_line(i);
                end if;
    end loop;
end;    

--9)
declare
    empno emp_plsql_assign1_Kushmakar.emp_no%type;
    empname emp_plsql_assign1_Kushmakar.emp_name%type;
    deptno dept_plsql_assign1_Kushmakar.dept_no%type;
    deptname dept_plsql_assign1_Kushmakar.dept_name%type;
    empnodept dept_plsql_assign1_Kushmakar.emp_no%type;
    ret_emp emp_plsql_assign1_Kushmakar.emp_name%type;
    ret_dept dept_plsql_assign1_Kushmakar.dept_name%type;
begin
    insert into emp_plsql_assign1_Kushmakar values (&empno, '&empname');
    insert into dept_plsql_assign1_Kushmakar values (&deptno, '&deptname', &empnodept);
    select e.emp_name, d.dept_name into ret_emp, ret_dept from emp_plsql_assign1_Kushmakar e
    inner join dept_plsql_assign1_Kushmakar d on e.emp_no = d.emp_no;
    dbms_output.put_line(ret_emp || ' ' || ret_dept);
end;

--10)
set serveroutput on
declare
    deptno dept_plsql_assign1_Kushmakar.dept_no%type;
    deptname dept_plsql_assign1_Kushmakar.dept_name%type;
    empnodept dept_plsql_assign1_Kushmakar.emp_no%type;
begin
    select max(dept_no) + 1 into deptno from dept_plsql_assign1_Kushmakar;
    insert into dept_plsql_assign1_Kushmakar values(deptno, 'education', 102);
end;

