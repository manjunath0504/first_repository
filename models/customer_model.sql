with customer_model as (
    select
    C_CUSTKEY as customer_key,
	C_NAME as customer_name ,
	C_ADDRESS as customer_address,
	C_NATIONKEY as Nation_name ,
	C_PHONE as customer_ph_NO,
	C_ACCTBAL as customer_AC_Balance,
	C_MKTSEGMENT as MKTSEGMENT
    from PB_BASE.PB_SCHEMA.CUST_01
)

select * from  customer_model