create database library;

use library;

create table bookdetails(
	bookno int primary key ,
    bookname varchar(20) ,
    bookauthor varchar(20) 
    );
 create table issuedetails(
	issue_id int primary key,
    bookno int,
    foreign key (bookno) references bookdetails(bookno),
    issue_date date,
    returnstatus bool
    );
create table returndetails(
	return_id int primary key,
    issue_id int,
    foreign key (issue_id) references issuedetails(issue_id),
    bookno int,
    foreign key (bookno) references bookdetails(bookno),
    return_date date
    );

insert into bookdetails
values(1,'game of thrones','rr martin');
insert into bookdetails
values(2,'seven stones','ruhi');
insert into bookdetails
values(3,'passion and life','rzack');
insert into bookdetails
values(4,'world with arms','zack snyder');

insert into issuedetails
values(10,1,'2020-06-22',0);
insert into issuedetails
values(11,3,'2020-06-24',0);
insert into issuedetails
values(12,2,'2020-06-28',0);
insert into issuedetails
values(13,4,'2020-07-02',1);

insert into returndetails
values(20,10,1,'2020-07-22');
insert into returndetails
values(21,12,2,'2020-07-28');
insert into returndetails
values(22,11,3,'2020-07-24');
insert into returndetails
values(23,13,4,'2020-08-02');

    