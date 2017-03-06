
use partstable;

drop table dispute ;
create table dispute ( 
   srlNo int auto_increment primary key ,
   disputeId varchar(20),
   beneficiaryId VARCHAR(20),
   couponNum VARCHAR(50) NOT NULL,
   raisedAt datetime not null ,
   retailerInfo varchar(20) ,
  constraint dispute_uk unique( beneficiaryId,couponNum) 
);

select current_timestamp();

select current_date()

select * from dispute ;

truncate table dispute;