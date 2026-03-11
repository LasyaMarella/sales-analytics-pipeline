{{ config(materialized='view') }}

select
    cast(order_id as int) as order_id,
    cast(customer_id as int) as customer_id,
    cast(product_id as int) as product_id,
    cast(order_date as date) as order_date,
    cast(quantity as int) as quantity
from {{ ref('orders') }}
where order_id is not null