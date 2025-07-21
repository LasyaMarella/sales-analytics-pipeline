select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select price
from SALES_DB.PUBLIC.fct_sales
where price is null



      
    ) dbt_internal_test