select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select credit_card_amount
from raw.jaffle_shop.orders
where credit_card_amount is null



      
    ) dbt_internal_test