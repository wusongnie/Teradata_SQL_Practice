--EDIT THE TABLE (ADDING)
ALTER TABLE EMP_DATA
ADD EDUC_LEVEL CHAR(1),ADD INSURE_TYPE SMALLINT;

--DELETING 
ALTER TABLE EMP_DATA
DROP EDUC_LEVEL,DROP INSURE_TYPE;

--CHANGE THE PROPERTY OF THE EXISTING DATA
ALTER TABLE EMP_DATA
ADD BIRTHDATE FORMAT 'MMMBDD,BYYYY';

--ADDING PROTECTION
ALTER TABLE EMP_DATA,FALLBACK;

--EDITING MORE THAN ONE PROPERTY
ALTER TABLE EMP_DATA
,NO FALLBACK
DROP INSURE_TYPE
,ADD EDUC_LEVEL CHAR(1);

--EDITING CONSTRAINTS(ADDING)
ALTER TABLE EMP_DATA
ADD CONSTRAINT
CHECK(SEX='F' OR SEX='M');

--EDITING CONSTRAINTS(MODIFYING)
ALTER TABLE EMP_DATA
MODIFY CONSTRAINT SAL_RANGE
CHECK (SALARY_AMOUNT>0 AND SALARY_AMOUNT<1000000);

--EDITING CONSTRAINTS(DELETING)
ALTER TABLE EMP_DATA
DROP CONSTRAINT SAL_RANGE;

--CREATE INDEX
CREATE UNIQUE INDEX FULLNAME(LAST_NAME,FIRST_NAME)
ON EMP_DATA;
CREATE INDEX (JOB_CODE) ON EMP_DATA;

--SHOW ALL INDEXES`
HELP INDEX EMP_DATA
 