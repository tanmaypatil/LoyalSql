
use  partstable ;
use partstable;

drop table beneficiary ;

CREATE TABLE beneficiary  (
    id INT AUTO_INCREMENT PRIMARY KEY,
    beneficiaryId VARCHAR(20),
    sex          CHAR,
    firstName   VARCHAR(80),
    middleName  varchar(80),
    surName  VARCHAR(80),
    mobileNum   varchar(15),
    altMobileNum varchar(15),
    dateOfBirth  date,
    email varchar(100) , 
    uniqueId    varchar(10),
    langCode    varchar(2)  comment "preferred language , en -english , mr - Marathi ,telgu -te",
       
    constraint beneficiary_pk UNIQUE(beneficiaryId),
    constraint beneficiary_mb_uk UNIQUE(mobileNum)
);

truncate table beneficiary ;
/* Sample data for testing purpose */
insert into beneficiary ( beneficiaryId ,sex,firstName , surName ,mobileNum ,altMobileNum ,dateOfBirth )
values('TAT00000001','M','Ram' ,'Lingappa' ,'8390907571','9890820267',STR_TO_DATE('01-05-1986', '%d-%m-%Y'));

insert into beneficiary ( beneficiaryId ,sex,firstName , surName , mobileNum ,altMobileNum ,dateOfBirth)
values('TAT00000002','M','Veerapa' ,'Patil' ,'8390907572','9890820267',STR_TO_DATE('01-01-1985', '%d-%m-%Y'));

commit;

use partstable;
select * from beneficiary ;

select * from beneficiaryaddr;



drop table secretQuestions ; 

create table secretQuestions( 
   srlId    INT AUTO_INCREMENT PRIMARY KEY,
   qId       varchar(5) ,
   qLitId     varchar(9),
   question  varchar(100),
   delFlg    varchar(1),
   creUserId varchar(15),
   creTime   datetime ,
   modUserId varchar(15),
   modTime   datetime
);
  use partstable;
  select * from beneficiary ;
  
  select current_timestamp();
  
  select count(1) from beneficiary where   beneficiaryId ='TAT00000100';
  
  insert into secretQuestions( qId , question , delFlg , creUserId , creTime , modUserId , modTime )
  values ( 'Q01','What is your first bike','N','SYSTEM', current_time(), 'SYSTEM',current_time());
  
    insert into secretQuestions( qId , question , delFlg , creUserId , creTime , modUserId , modTime )
  values ( 'Q02','What is name mainden name of your mother','N','SYSTEM', current_time(), 'SYSTEM',current_time());
  
  commit ;
  
  truncate table beneficiary;
  truncate table beneficiaryAddr;
  
  create tablespace beneficiaryMaster add datafile 'beneficiaryMaster.ibd';

 drop table secretAnswer; 
  create table secretAnswer
  (
	  beneficiaryId VARCHAR(20),
      qId           varchar(5),
      answer        varchar(100)  comment "secret question to recover account",
      creTime       datetime,
      modTime		datetime,
      constraint secrets_pk primary key  ( beneficiaryId ,qId )
    
  )TABLESPACE = beneficiaryMaster engine=InnoDB;

insert into secretAnswer( beneficiaryId,qId , answer ,creTime , modTime) 
values ('TAT00000001','Q01','Mahindra XUV',current_time(),current_time());

insert into secretAnswer( beneficiaryId,qId , answer ,creTime , modTime) 
values ('TAT00000002','Q02','Vijaya',current_time(),current_time());




commit;

desc beneficiary;
drop table  beneficiaryAddr;

create table beneficiaryAddr(
  beneficiaryId varchar(20) primary key,
  localArea     varchar(20) ,
  landmark      varchar(20),
  city          varchar(20) ,
  district      varchar(20) ,
  state         varchar(5)   comment " only code e.g. Maharashtra - MH",
  country       varchar(3)   comment " only code e.g. India - IN ", 
  pinCode       varchar(6) 
);

select * from beneficiaryaddr;
truncate table  beneficiaryaddr;;

drop table beneficiaryGarage;
/*
   created a seperate table for garage as it is industry specific .
*/
create table beneficiaryGarage
(
     beneficiaryId varchar(20) primary key,
     garageName    varchar(20) ,
     garageAddress varchar(50) 
);


create table beneficiaryProf
(
    beneficiaryId   varchar(20) primary key,
    industry        varchar(5)  comment " Value from informationCodes table ",
    segment         varchar(5)  comment " value from informationCodes table ",
    
);

)
drop table beneficiaryPoints;
/* points for storing points for mechanics */
create table beneficiaryPoints (
    beneficiaryId varchar(50) primary key,
    earnedPoints double ,
    redeemedPoints double,
    totalPoints double,
    lastEarnedDate datetime,
    lastRedeemedDate datetime
);	

select * from beneficiaryPoints;

insert into beneficiaryPoints ( beneficiaryId,earnedPoints,redeemedPoints,totalPoints
             ) values 
             ('TAT00000001', 0 , 0 , 0 ) ;
             

insert into beneficiaryPoints ( beneficiaryId,earnedPoints,redeemedPoints,totalPoints
             ) values 
             ('TAT00000002', 0 , 0 , 0 ) ;
commit;

select * from beneficiaryPoints;