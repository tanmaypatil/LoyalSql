use partstable;

drop table states;
CREATE TABLE states (
    state_code VARCHAR(2) ,
    lang_code VARCHAR(3) ,
    state_name VARCHAR(100),
    primary key ( state_code,lang_code)
);

insert into states values( 'MH','ENG','Maharashtra');
insert into states values( 'KA','ENG','Karnataka');


commit ;