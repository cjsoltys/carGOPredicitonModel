use cargo;

create table Time as(
select location_id, 
	AVG(TIME_TO_SEC(TIMEDIFF(Processing, Submitted))) as 'Submitted_Time',
    AVG(TIME_TO_SEC(TIMEDIFF(Requesting, Processing))) as 'Processing_Time',
    AVG(TIME_TO_SEC(TIMEDIFF(Accepted, Requesting))) as 'Requesting_Time',
    AVG(TIME_TO_SEC(TIMEDIFF(Arrived, Accepted))) as 'Accepted_Time',
    AVG(TIME_TO_SEC(TIMEDIFF(Delivering, Arrived))) as 'Arrived_Time',
    AVG(TIME_TO_SEC(TIMEDIFF(Delivered, Delivering))) as 'Delivery_Time'
    from status_times_pivot group by location_id);