use cargo;

/*Test Function to get differene between two dates*/
select t1.status, t2.status, t1.created_at, t2.created_at, TIMEDIFF(t2.created_at, t1.created_at) as DIFF from 
(select OrderID, created_at, status from status_times t where OrderID = 24181) t1,
(select OrderID, created_at, status from status_times t where OrderID = 24181) t2 
where t2.status = 'processing' and t1.status='submitted';



/*Initial attempt at timetable. Need to use pivot instead because this statement can take upwards to a minute to execute*/

/*select t.OrderID, t.created_at as 'Submitted', t2.created_at as 'Processing', t3.created_at as 'Requesting', t4.created_at as 'Accepted'

from status_times t, status_times t2, status_times t3, status_times t4

where t.status='submitted' and t2.status='processing' and t3.status='requesting' and t4.status='accepted' and
t.OrderID = t2.OrderID and t.OrderID = t3.OrderID and t.OrderID = t4.OrderID;*/
