
with join_data as (
select 
c.customer_name,
c.customer_AC_Balance,
n.N_NAME,
o.O_TOTALPRICE,
o.O_ORDERDATE,
o.O_ORDERPRIORITY from 
PB_BASE.PB_SCHEMA.ORDER_01 o
join
 {{ ref("customer_model")}} c on c.customer_key = o.O_CUSTKEY
join
PB_BASE.PB_SCHEMA.NATION_01 n on c.Nation_name = n.N_NATIONKEY
)

select * from join_data