

insert into sakila.students(roll_no,first_name,second_name)  values( 1 , 'Agneya' ,'iyer'); 

commit ;

insert into sakila.students(roll_no,first_name,second_name)  values( 2 , 'Aditi' ,'Chawala');
insert into sakila.students(roll_no,first_name,second_name)  values( 3 , 'Aditi' ,'Patil');

select * from sakila.students where first_name ='Aditi';
