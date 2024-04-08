{{
    config(
        materialized = 'table',
        transient=false
    )
}}

with customer as (

    select * from {{ ref('stg_tpch_customers') }}

),
nation as (

    select * from {{ ref('stg_tpch_nations') }}
),
region as (

    select * from {{ ref('stg_tpch_regions') }}

),
final as (
    select 
        customer.customer_key,
        customer.name,
        customer.address,
        nation.nation_key,
        nation.name as nation,
        region.region_key,
        region.name as region,
        customer.phone_number,
        customer.account_balance,
        customer.market_segment
    from
        customer
        cross join nation
        inner join region
            on nation.region_key = region.region_key
)
select 
    *
from
    final
order by
    customer_key
