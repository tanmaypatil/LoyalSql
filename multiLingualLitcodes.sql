

/*
   Table for messages , descriptions as per user's  language code.
 */
 
 
drop table literals ;
create table literals
(
   literalId    varchar(10),
   literalLang  varchar(2),
   literalDesc  varchar(80)

);

drop table informationCodes;

create table informationCodes 
(
   infoSrlNo int auto_increment primary key,
   infoCode varchar(10)  ,
   infoType varchar(5) comment "infoType - 01 ( industry type ) ,02 ( segement type) " ,
   infoLang varchar(2),
   infoDesc varchar(50) ,
   constraint info_pk unique (infoCode,infoType,infoLang)
   );


truncate table informationCodes;

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('02','01','en','Industry Type') ; 

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('03','01','en','Segment Type') ; 

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('04','01','en','Vehicle Manu Type') ; 

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('05','01','en','Vehicle Model') ; 


insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I001','02','en','Auto industry') ;   

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I002','02','en','Software industry') ;   

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I003','03','en','2 wheelers') ;   

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I004','03','en','3 wheelers') ;  

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I005','03','en','4 wheelers') ; 

/** infoType - 04 is for vehicle manufacture type */

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I006','04','en','Tata motors') ;   

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I007','04','en','Toyota') ;  

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I008','04','en','Maruti') ; 


/** infoType - 05 is for vehicle model type */

insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I009','04','en','Activa') ;   


insert into informationCodes(infoCode, infoType , infoLang , infoDesc )
values('I010','04','en','Pleasure') ; 

commit ;  

select * from informationCodes;
 



commit ;