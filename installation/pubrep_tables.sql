SPOOL pubrep_tables.sql
SELECT USER, global_name FROM global_name;
/******************************************************************************
   NAME:       pubrep_tables.sql
   PURPOSE: Creation script for the tables in the pubrep schema

   NOTES: The script can be run from any DBA account


   HISTORY:
   Revision   Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1          06/02/2014  Tim House        Created

*/

CREATE TABLE pubrep.test_table (
  test_id NUMBER NOT NULL,
  test_name VARCHAR2 ( 20 char ) NOT NULL,
  CONSTRAINT test_table_pk PRIMARY KEY (test_id)
  USING INDEX TABLESPACE pubrep_ind ENABLE )
TABLESPACE pubrep_dat ENABLE;

SPOOL OFF