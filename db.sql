create database db;
use db;

create table user(
user_id int primary key auto_increment,
user_name varchar(20) not null,
user_dob date,
address varchar(30),
user_qualifications varchar(50)
);


create table organisation(
org_id int primary key,
org_name varchar(30),
address varchar(50)
);
create table or_staff_rel(
staff_id int,
org_id int,
user_id
);

create table staff(
staff_id int primary key,
staff_name varchar(20),
staff_address varchar(50),
user_id int,
org_id int,
constraint us11 foreign key(user_id) references user(user_id),
constraint org11 foreign key(org_id) references organisation(org_id)
);