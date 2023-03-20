
# Report 1: top 20 customer
# select top 20 customer select by total price

 select customer.C_NAME, orders.O_ORDERDATE, orders.O_TOTALPRICE
 from orders

 inner join customer on orders.O_CUSTKEY = customer.C_CUSTKEY
 group by orders.O_TOTALPRICE,orders.O_ORDERDATE,customer.C_NAME
 order by  O_TOTALPRICE desc
 limit 20;

#Report 2:Top Products by Sales

select part.P_NAME, part.P_BRAND, lineitem.L_QUANTITY, part.P_RETAILPRICE,  sum(lineitem.L_QUANTITY*part.P_RETAILPRICE) as Total_Price
from part
inner join lineitem on lineitem.L_PARTKEY = part.P_PARTKEY
group by part.P_NAME, part.P_BRAND, lineitem.L_QUANTITY, part.P_RETAILPRICE
order by Total_Price desc
limit 2;

# Report 3:Top Ordered Supplier
    select supplier.S_NAME, supplier.S_NATIONKEY, lineitem.L_QUANTITY, part.P_RETAILPRICE , sum(lineitem.L_QUANTITY * part.P_RETAILPRICE) as TotalPrice
    from supplier
    inner join lineitem on lineitem.L_SUPPKEY=supplier.S_SUPPKEY
    inner join part on lineitem.L_PARTKEY = part.P_PARTKEY

    group by supplier.S_NAME, supplier.S_NATIONKEY, lineitem.L_QUANTITY, part.P_RETAILPRICE
    order by TotalPrice desc
    limit 2;


# Report- 4: Top Sales by Brand

select part.P_NAME, part.P_BRAND, lineitem.L_QUANTITY
from part
inner join lineitem on lineitem.L_PARTKEY=P_PARTKEY
group by part.P_NAME, part.P_BRAND, lineitem.L_QUANTITY
order by lineitem.L_QUANTITY desc
limit 20;

# Report-5 :