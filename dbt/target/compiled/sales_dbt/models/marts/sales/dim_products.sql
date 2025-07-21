

select
    product_id,
    category,
    price
from SALES_DB.PUBLIC.stg_products
where product_id is not null