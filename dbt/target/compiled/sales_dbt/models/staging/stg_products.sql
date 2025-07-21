

select
    cast(product_id as int) as product_id,
    trim(lower(category)) as category,
    cast(price as float) as price
from SALES_DB.PUBLIC.products
where product_id is not null