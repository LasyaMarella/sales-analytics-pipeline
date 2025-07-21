{{ config(materialized='view') }}

select
    product_id,
    category,
    price
from {{ ref('stg_products') }}
where product_id is not null
