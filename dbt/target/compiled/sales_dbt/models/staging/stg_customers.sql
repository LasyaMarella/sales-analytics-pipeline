

select
    cast(customer_id as int) as customer_id,
    trim(lower(name)) as customer_name,
    trim(lower(region)) as region
from SALES_DB.PUBLIC.customers
where customer_id is not null