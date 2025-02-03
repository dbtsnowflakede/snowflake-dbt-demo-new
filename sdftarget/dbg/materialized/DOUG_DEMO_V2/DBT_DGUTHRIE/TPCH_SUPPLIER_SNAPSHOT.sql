

use DOUG_DEMO_V2.DBT_DGUTHRIE;
CREATE TABLE DOUG_DEMO_V2.DBT_DGUTHRIE.TPCH_SUPPLIER_SNAPSHOT AS
                SELECT *, 
                  '' AS DBT_SCD_ID, 
                  CAST(NULL AS TIMESTAMP) AS DBT_UPDATED_AT,
                  CAST(NULL AS TIMESTAMP) AS DBT_VALID_FROM,
                  CAST(NULL AS TIMESTAMP) AS DBT_VALID_TO
                FROM (



select * from DOUG_DEMO_V2.TPCH.SUPPLIER
);