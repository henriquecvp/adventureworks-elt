with
    source as (
        select
        productid	
        , productmodelid	
        , productsubcategoryid	
        , name	

        , sellenddate	
        , safetystocklevel	
        , finishedgoodsflag	
        , class	
        , makeflag	
        , productnumber	
        , reorderpoint	
        , modifieddate	
        , rowguid	
        , weightunitmeasurecode	
        , standardcost	
        , style	
        , sizeunitmeasurecode	
        , listprice	
        , daystomanufacture	
        , productline	
        , size	
        , color	
        , sellstartdate	
        , weight	

        -- stich tables
        , _sdc_sequence	
        , _sdc_received_at	
        , _sdc_batched_at	
        , _sdc_table_version	
        from {{ source('adventureworkselt','product')}}
    )

select * from source