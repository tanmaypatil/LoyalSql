

drop table owners ;
/* Represent owners such as TataMotors 
  Greaves etc 
  Would be represented by 3-char codes 
  TAT - Tata motors  
  GRE - Grevaes
*/
create table owners 
(
   id        int auto_increment primary key ,
   ownerId    varchar(3) not null comment " 3-char codes ,TAT - TATA motors",
   ownerName   varchar(20) not null comment " complete name TATA motors",
   industry   varchar(4) not null comment "industry segement AUTO , BANKS",
   industrySubSgement varchar(10)  comment "4 wheeler ", 
   fullName  varchar(100) comment "complete name ",
   active     char         comment "active - Y/N " 
);

insert into owners values ( null,'TAT','AUTO','','Tata Motors','Y');

use partstable;
/* Table to create next number for a beneficiary
   For every owner type , we will have one table, having only 1 row 
   Also the next value has to be update */
drop table TAT_id;
drop table TAT_nextId;

create table TAT_nextId
(
   srlNum int auto_increment primary key,
   nextNum int unsigned
);

insert into TAT_nextId(nextNum) values (1) ;

update TAT_nextId set nextNum = 2 where srlNum =1 ;

commit ;

select * from TAT_nextId;

select * from beneficiary;