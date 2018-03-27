use cargo;

create view status_times_pivot as (
	select
		OrderID, location_id, 
        min(Submitted) as Submitted, /*min can be used since there is only 1 value and 6 nulls*/
        min(Processing) as Processing,
        min(Requesting) as Requesting,
        min(Accepted) as Accepted,
        min(Arrived) as Arrived,
        min(Delivering) as Delivering,
        min(Delivered) as Delivered
	from status_times_extended
    group by OrderID
);

select * from status_times_pivot;