use cargo;

create view status_times_extended as (
  select
    status_times.*,
    case when status = "submitted" then created_at end as Submitted,
    case when status = "processing" then created_at end as Processing,
    case when status = "requesting" then created_at end as Requesting,
    case when status = "accepted" then created_at end as Accepted,
    case when status = "arrived" then created_at end as Arrived,
    case when status = "delivering" then created_at end as Delivering,
    case when status = "delivered" then created_at end as Delivered
  from status_times
);

select * from status_times_extended;
