
  create or replace   view raw.jaffle_shop.stg_customers
  
   as (
    with source as (
    select * from raw.jaffle_shop.raw_customers

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
  );

