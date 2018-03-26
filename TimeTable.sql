use cargo;

select o.id as OrderID, location_id, os.created_at, os.status from orders o join order_statuses os on o.id = os.order_id;