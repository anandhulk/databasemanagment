DELIMITER //
create procedure issuebook()
begin
insert into issuedetails 
values(14,3,current_date(),0);
end //
DELIMITER ;

CALL issuebook();
