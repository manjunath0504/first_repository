
with sample_data_view as( 
select c.C_NAME,c.C_ACCTBAL,n.N_NAME,o.O_TOTALPRICE,o.O_ORDERDATE,o.O_ORDERPRIORITY from 
PB_BASE.PB_SCHEMA.CUST_01 c
join
PB_BASE.PB_SCHEMA.NATION_01 n on c.C_NATIONKEY = n.N_NATIONKEY
join
PB_BASE.PB_SCHEMA.ORDER_01 o on c.C_CUSTKEY = o.O_CUSTKEY
)

select * from sample_data_view 