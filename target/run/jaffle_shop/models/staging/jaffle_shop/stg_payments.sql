
  create or replace   view raw.jaffle_shop.stg_payments
  
   as (
    with source as (
    select * from raw.jaffle_shop.raw_payments

),

staged as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

    from source

)

select * from staged
  );
