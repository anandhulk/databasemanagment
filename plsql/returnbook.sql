use library;
DELIMITER //
create procedure returnbook()
begin
insert into returndetails
values(24,14,3,current_date());
update issuedetails
set returnstatus=1 
where issue_id=14;
end //
DELIMITER ;

CALL returnbook();