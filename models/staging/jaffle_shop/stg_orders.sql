with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ source('jaffle_shop','raw_orders') }}

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