
use partstable;

drop table sequenceVal;
create table sequenceVal
(
   seqName   varchar(10) not null ,
   seqDesc   varchar(50) not null ,
   seqPrefix varchar(3) not null ,
   totalLen  int  comment "total length of number part ",

   seqValue  int not null
);

truncate table sequenceVal;
insert into sequenceVal( seqName , seqDesc , seqPrefix,totalLen , seqValue) values
('EARNTRAN','Sequence for earn transaction','EAR',9 ,1);

insert into sequenceVal ( seqName , seqDesc , seqPrefix,totalLen , seqValue) values
('REDEEMTRAN','Sequence for earn transaction','RED',9, 1);



commit;