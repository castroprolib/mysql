-- Mostrar base de datos
show databases;

/*
Comando para crear base de datos
con SQL en MySQL
*/
create database users;

use users;

create table users(
userId int,
name char
);

describe users;

desc users;

/*
enteros int,float,double
texto char,varchar
boleanos t,f
enum
fecha
json
array
*/

drop table users;

drop database users;



create database if not exists users;

create database users;

use users;

create table if not exists users(
userId int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
pasword varchar(100),
is_admin enum('admin','user'),
is_man boolean,
creaded_at date
);

describe users;

desc users;

select * from users;

select * from users.users;

insert into users (first_name,last_name,email,pasword,is_admin,is_man,creaded_at)
values ('jonathan','castro','admin@hotmail.com',md5('123'),1,'1',now());

insert into users (first_name,last_name,email,pasword,is_admin,is_man,creaded_at)
values ('karla','castroni','carla@hotmail.com',md5('1234'),2,'0',now()),
('maria','pacheco','maria@hotmail.com',md5('12345'),2,'0',now());

select userId,first_name,email
from users
where userId = 1;


select userId,first_name,email
from users
where userId = 2;


select * from users;

select userId,first_name,email
from users
where userId = 1 and email = 'admin@hotmail.com';

select userId,first_name,email
from users
where userId = 1 and email = 'admin@gmail.com';

select userId,first_name,email
from users
where userId = 1 or email = 'admin@gmail.com';

select userId,first_name,email
from users
where userId = 10 or email = 'admin@gmail.com';


select * from users;

select userId,last_name,is_admin
from users
where userId
between 1 and 2;

select userId,last_name,is_admin
from users
where userId
between 3 and 7;

select userId as id,last_name as nombre,is_admin as administrador
from users
where userId
between 3 and 7;



select userId as id,last_name as nombre,is_admin as administrador
from users
where userId
between 1 and 3
order by userId desc;

select userId as id,last_name as nombre,is_admin as administrador
from users
where userId
between 1 and 3
order by userId asc;

select userId as id,last_name as nombre,is_admin as administrador
from users
where userId
between 1 and 3
order by userId asc
limit 2;

select * from users;


select userId as id,first_name,last_name as nombre,is_admin as administrador
from users
where first_name
like 'karla'
order by userId asc
limit 2;

select userId as id,first_name,last_name as nombre,is_admin as administrador
from users
where first_name
like '%j%'
order by userId asc
limit 2;


select userId as id,first_name,last_name as nombre,is_admin as administrador
from users
where first_name
not like 'karla'
order by userId asc
limit 2;

select * from users;

truncate users;

desc users;

alter table users
drop column is_man;

alter table users
add column updadet_at datetime;


alter table users
change updadet_at fecha datetime;

alter table users
rename usuarios;

alter table usuarios
rename users;

desc users;

desc usuarios;

select * from users;

drop table if exists users;


create table if not exists users(
userId int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50),
email varchar(50) unique,
pasword varchar(100),
is_admin enum('admin','user') default 'admin',
creaded_at timestamp default now()
);

desc users;

select * from users;

insert into users (userId,first_name,last_name,email,pasword,is_admin,creaded_at)
values (2,'jonathan','castro','test@hotmail.com',md5('123'),1,now());


insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values ('jonathan','castro','admin@hotmail.com',md5('123'),1,now());

insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values (0,'castro','as@hotmail.com',md5('123'),1,now());


insert into users (first_name,last_name,email,pasword)
values (0,'castro','ass@hotmail.com',md5('123'));

insert into users (last_name,email,pasword)
values ('castro','assssshotmail.com',md5('123'));


insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values (0,'castro','asdsdds@hotmail.com',md5('123'),2,now());

insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values (0,'castro','asdsdds@hotmail.com',md5('123'),2,now());


insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values ('not null',null,'asdsddsdsds@hotmail.com',md5('123'),2,now());

insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values ('not null2',null,'asdsddsdsdsdsds@hotmail.com',null,2,now());


select * from users;


select * from users
where last_name is null;


select * from users
where last_name is not null;


delete from users
where userId = 1;

truncate users;


insert into users (first_name,last_name,email,pasword,is_admin,creaded_at)
values ('jonathan','castro','admin@hotmail.com',md5('123'),1,now());


update users set first_name = 'carlos'
where userId = 2;