DELIMITER //
create procedure orderofbooktitle()
begin
select * 
from bookdetails 
order by bookname asc;
end //
DELIMITER ;

CALL orderofbooktitle();