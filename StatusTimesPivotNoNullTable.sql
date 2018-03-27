create table Status_Times_Pivot_NoNull as
	select * from status_times_pivot
    
    where Processing is not null and Requesting is not null and Accepted is not null and Arrived is not null and Delivering is not null and Delivered is not null
    and Requesting < Accepted and Accepted < Arrived and Arrived < Delivering and Delivering < Delivered /*necessary because some data is messed up EX order#27818*/