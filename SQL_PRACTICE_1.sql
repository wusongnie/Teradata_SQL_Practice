DATABASE CUSTOMER_SERVICE;
GRANT SELECT ON CUSTOMER_SERVICE TO DBC;

 
SELECT FIRST_NAME ,
LAST_NAME,
EMPLOYEE_NUMBER 
FROM EMPLOYEE
WHERE SALARY_AMOUNT < 35000.00
AND DEPARTMENT_NUMBER = 403;

SELECT LAST_NAME
,DEPARTMENT_NUMBER
,JOB_CODE
FROM EMPLOYEE
WHERE (DEPARTMENT_NUMBER = 401 OR DEPARTMENT_NUMBER = 403) AND (JOB_CODE=412101 OR JOB_CODE=432101);

SELECT FIRST_NAME ,
LAST_NAME,
EMPLOYEE_NUMBER 
FROM EMPLOYEE
WHERE NOT(DEPARTMENT_NUMBER = 301);

SELECT FIRST_NAME ,
LAST_NAME,
EMPLOYEE_NUMBER 
FROM EMPLOYEE
WHERE DEPARTMENT_NUMBER NOT=301;

 SELECT LAST_NAME,
 FIRST_NAME,
 SALARY_AMOUNT/12
 FROM EMPLOYEE
 WHERE DEPARTMENT_NUMBER=401
 ORDER BY LAST_NAME;
 
 SELECT DATE;
 SELECT TIME;
 SELECT USER;
 SELECT DATABASE;
 
 SELECT 'EMPLOYEE'
 ,LAST_NAME
 ,FIRST_NAME
 FROM EMPLOYEE;
 
 SELECT LAST_NAME
 FROM EMPLOYEE
 WHERE EMPLOYEE_NUMBER IN 
 (SELECT MANAGER_EMPLOYEE_NUMBER FROM DEPARTMENT);
 
 SELECT LAST_NAME,
 FIRST_NAME
 FROM
 EMPLOYEE
 WHERE EMPLOYEE_NUMBER IN 
 (SELECT MANAGER_EMPLOYEE_NUMBER 
 FROM DEPARTMENT WHERE BUDGET_AMOUNT>900000);
 
 
 SELECT LAST_NAME,
 FIRST_NAME,
 DEPARTMENT_NUMBER
 FROM EMPLOYEE
 WHERE DEPARTMENT_NUMBER = ANY 
 (SELECT DEPARTMENT_NUMBER FROM DEPARTMENT 
 WHERE
 DEPARTMENT_NAME LIKE '%SUPPORT%');
 
 
 SELECT LAST_NAME,
 FIRST_NAME,
 SALARY_AMOUNT/12 AS MONTHLY_SALARY 
 FROM EMPLOYEE
 WHERE DEPARTMENT_NUMBER =401
 ORDER BY MONTHLY_SALARY;
 
 SELECT FIRST_NAME
 FROM EMPLOYEE
 WHERE CHARACTERS (FIRST_NAME)>5;
 


SELECT (1000/SALARY_AMOUNT)*100
(FORMAT 'ZZ9%')
(TITLE 'INCREASE PERCENTAGE')
FROM EMPLOYEE
WHERE EMPLOYEE_NUMBER = 1004;

SELECT EMPLOYEE.EMPLOYEE_NUMBER,
EMPLOYEE.LAST_NAME,
DEPARTMENT.DEPARTMENT_NAME
FROM EMPLOYEE,DEPARTMENT
WHERE EMPLOYEE.DEPARTMENT_NUMBER=DEPARTMENT.DEPARTMENT_NUMBER;

SELECT EMPLOYEE.EMPLOYEE_NUMBER,EMPLOYEE.LAST_NAME,
DEPARTMENT.DEPARTMENT_NAME
FROM
EMPLOYEE
INNER JOIN DEPARTMENT
ON EMPLOYEE.DEPARTMENT_NUMBER=DEPARTMENT.DEPARTMENT_NUMBER;