use partstable;

drop table giftMaster;
create table giftMaster 
(
    id           int primary key auto_increment,
    giftCategory varchar(10),
    giftCode     varchar(20),
    giftDesc     varchar(50) ,
    giftPoints   int not null,
    giftImage     varchar(50),
    delFlg       char ,
    constraint giftMaster_gitcode_uk UNIQUE(giftCategory,giftCode)
);

truncate table giftMaster ;
insert into giftMaster ( giftCategory , giftCode ,giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'VEH' ,'VEH00001', 'Maruti Car',20000,'marutiCar.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'VEH', 'VEH00002','Bajaj Pulsar',10000,'pulsar.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'GRO', 'GRO00001', 'Big bazzar coupons',5000,'bigBazzar.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'ACC' , 'ACC00001','watch',2500,'watch.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'HOM', 'HOM00001','Samsung TV',7000,'samsung.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'HOM', 'HOM00002', 'Air conditioner ',15000,'aircondition.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values (  'KIT' ,'KIT00001','Pressure Cooker',500,'pressureCooker.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'TRA','TRA00001','Samsonite Bag',300,'samsoniteBag.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'KIT','KIT00002','Coffee Maker',750,'coffeeMaker.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'KIT', 'KIT00003','Blender and Soup Maker',600,'blenderMaker.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'KIT', 'KIT00004','Glass set',100,'glasses.png','N');

insert into giftMaster ( giftCategory , giftCode , giftDesc , giftPoints , giftImage , delFlg ) 
values ( 'KIT', 'KIT00005','Cup set',50,'cups.png','N');

commit;

use partstable;
select sum(giftPoints)  from giftmaster where giftCode in ('KIT00001','KIT00002'); 



select * from giftMaster;


