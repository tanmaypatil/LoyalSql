select first_name from sakila.students;

create database RESEARCH 

use mysql77;


SELECT SHA2('abc', 224);

select des_encrypt('tanmay','h@@') ;

use partstable;
create table temp1 ( secret blob );

insert into temp1 values ( aes_encrypt('tanmay','h@@'));

commit ;

select * from temp1 ;

truncate table temp1;

select convert (aes_decrypt(secret,'h@@') using utf8) from temp1 ; 

select * from temp1 ; 

drop table temp2;
create table temp2 ( bigdata blob);

insert into temp2 values ( aes_encrypt('tanmay','h@@'));

