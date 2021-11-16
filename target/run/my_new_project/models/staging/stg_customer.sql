

  create or replace view `etl-adventureworks`.`dbt_henrique`.`stg_customer`
  OPTIONS()
  as with
    source as (
        select
        customerid	
        , personid	
        , territoryid	
        , storeid	
        
        , modifieddate	
        , rowguid	

        -- stitch tables
        , _sdc_table_version	
        , _sdc_received_at	
        , _sdc_sequence	
        , _sdc_batched_at	
        from `etl-adventureworks`.`adventureworkselt`.`customer`
    )

select * from source;

