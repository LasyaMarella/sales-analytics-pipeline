
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select category
from SALES_DB.PUBLIC.fct_orders
where category is null



  
  
      
    ) dbt_internal_test