{{ config(materialized='table') }}

SELECT
    o.o_custkey,
    o.o_orderdate,
    o.o_totalprice,
    SUM(o.o_totalprice) OVER (ORDER BY o.o_orderdate ) AS cumulative_sales
FROM 
    snowflake_sample_data.tpch_sf1.orders o
ORDER BY 
    o.o_orderdate