{{ config(materialized='view') }}

select
    customer_id,
    customer_name,
    region
from {{ ref('stg_customers') }}
where customer_id is not null
