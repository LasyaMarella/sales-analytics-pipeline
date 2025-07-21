select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select region
from SALES_DB.PUBLIC.fct_sales
where region is null



      
    ) dbt_internal_test