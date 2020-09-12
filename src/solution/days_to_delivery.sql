
---Displays the days to delivery and model_name and cell_id
---Dosent display the cells we have not yet received.
---left join and coalease function to get those as well
select DATE_PART('day', AGE(min_epoch,received_date)) AS days_to_delivery,A.cell_id,A.model_name
from shipments as A
inner join
(select min(to_timestamp(cast(`epoch` as bigint))::date) as min_epoch,cell_id,model_name
from plans group by cell_id,model_name) as B
on A.cell_id=B.cell_id
AND A.model_name=B.model_name;
