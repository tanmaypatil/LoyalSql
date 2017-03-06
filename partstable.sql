select version(),user(),database();


use partstable;

drop table partsInfo ;
CREATE TABLE partsInfo (
    ownerId VARCHAR(20) NOT NULL,
    partNum VARCHAR(20) NOT NULL,
    partDesc VARCHAR(100) NOT NULL,
    manufDate DATE,
    PRIMARY KEY (ownerId , partNum)
);


drop table couponInfo;
CREATE TABLE couponInfo (
    ownerId VARCHAR(20) NOT NULL,
    partNum VARCHAR(50) NOT NULL,
    couponNum VARCHAR(50) NOT NULL,
    earned VARCHAR(1) NOT NULL,
    points INT NOT NULL,
    earnedDate DATE,
    earnedBenId varchar(50) comment "Id of the loyalty customer , beneficiary->beneficiary_id" ,
    PRIMARY KEY (ownerId , partNum , couponNum)
);

truncate table couponInfo;

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1234','N', 100,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1235','N', 200,null );

insert into  couponInfo (ownerid , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1236','N', 50,null );

commit ;

/*USE innodb_memcache;*/

select current_timestamp();

SET SQL_SAFE_UPDATES=0;
select * from couponInfo;

update couponinfo set earned ='N' where part_num ='ABCD1235';

SELECT earned ,points from partstable.couponInfo where part_num ='ABCD1235';


insert into  partsInfo (oem_id , part_num , earned , earned_date )
values ( 'TAMO', 'ABCD1234','N', STR_TO_DATE('01-01-2012', '%d-%m-%Y') );
 
commit; 

select * from partsInfo ;

update partsInfo set earned_date =NULL ;

SET SQL_SAFE_UPDATES=0;

drop table partsInfo;

truncate table partsinfo;

insert into  partsInfo (ownerId , partNum , partDesc)
values ( 'TAT', '435-222-38', 'CYLINDER AND PISTON ASSY KIT');

insert into  partsInfo (ownerId , partNum , partDesc)
values ( 'TAT', '435-222-39', 'VALVE SET');


commit ;

use partstable;

select * from beneficiaryTransaction; 
drop table beneficiaryTransaction ;
create table beneficiaryTransaction (
 tranId varchar(50) not null,
 tranDate date,
 tranTime timestamp,
 tranType char not null  comment " E-earn , R-Redeem",
 partTranSrlNum int not null comment "this will allow single transaction to have multiple earn/redeem",
 beneficiaryId varchar(20) not null ,
 partNum  varchar(50),
 couponNum varchar(50),
 pointsEarned double,
 giftCode varchar(50),
 pointsRedeemed double ,
 balance double not null ,
 PRIMARY KEY(tranId , tranDate,tranType,partTranSrlNum )
);

truncate table beneficiaryTransaction;




insert into beneficiaryTransaction  ( 
  tranId,tranDate , partTranSrlNum, tranTime , beneficiaryId , couponNum ,partNum ,pointsEarned ,tranType,balance ) 
values ( 'EAR000000000001',curdate(),1, current_timestamp(),'TAT0000001', 'ABC12349','435-222-38',50,'E',50);

insert into beneficiaryTransaction  ( 
  tranId ,tranDate , partTranSrlNum ,tranTime , beneficiaryId , couponNum ,partNum ,pointsEarned , tranType,balance) 
values ( 'EAR000000000001',curdate(),2, current_timestamp(),'TAT0000001', 'ABC12350','435-222-40',100 ,'E',150);

insert into beneficiaryTransaction  ( 
  tranId ,tranDate , partTranSrlNum ,tranTime , beneficiaryId , couponNum ,partNum,pointsEarned ,tranType, balance ) 
values ( 'EAR000000000001',curdate(),3, current_timestamp(),'TAT0000001', 'ABC12351','435-222-40',200,'E',350);


commit;



use partstable;
select * from beneficiaryTransaction;

select DATE_FORMAT(tranDate,'%d-%m-%Y') ,DATE_FORMAT(tranTime,'%r'),couponNum , pointsEarned 
from beneficiaryTransaction;

select date_format(tranTime,'%r') from beneficiaryTransaction;

select * from partsInfo;


select * from couponinfo;

SET SQL_SAFE_UPDATES=0;
update couponInfo set earned ='N' ;
commit ;

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1236','N', 50,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1237','N', 60,null );

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1236','N', 50,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1237','N', 60,null );

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1238','N', 50,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1239','N', 60,null );

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1240','N', 50,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1241','N', 60,null );

insert into  couponInfo (ownerId , partNum ,couponNum, earned , points , earnedDate )
values ( 'TAT', '435-222-38', 'ABCD1242','N', 50,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1243','N', 60,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1244','N', 60,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1245','N', 60,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1246','N', 60,null );

insert into  couponInfo (ownerId , partNum , couponNum ,earned , points , earnedDate )
values ( 'TAT', '435-222-38','ABCD1247','N', 60,null );





commit ;

select * from couponInfo;


