with source as (

    select * from raw.jaffle_shop.raw_orders

),

staged as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from staged