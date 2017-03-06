use partstable;

drop table registration;

create table registration (
    srlNo        integer primary key,
    regSrlNo     varchar(20),
	mobileNo     varchar(15) ,
    otpGenerated  varchar(8),
    otpValidFrom datetime ,
    otpValidTo    datetime,
    otpValidatedAt datetime , 
    regStatus    char(1) comment "S - Success , E - Expired , I - Invalidated due to resend"
    
);

select TIMESTAMPADD(MINUTE,15, current_timestamp()) ;

create table otpTran ( 
   srlNo int auto_increment ,
   regSrlNo     varchar(20) primary key ,
   otpInput      varchar(8)  ,
   otpInputTime  datetime ,
   otpValStatus  char(1)  comment "S- Success , M - Mismatch "
);