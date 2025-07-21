

select
    customer_id,
    customer_name,
    region
from SALES_DB.PUBLIC.stg_customers
where customer_id is not null