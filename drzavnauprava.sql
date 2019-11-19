drop database if exists drzavnauprava;
create database drzavnauprava;
use drzavnauprava;

create table zupanija (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    zupan varchar (50) not null
);

create table opcina (
    sifra int not null primary key auto_increment ,
    zupanija int not null,
    naziv varchar (50) not null,
    nacelnik varchar (50) not null
);

create table mjesto (
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar (50) not null,
    brojstanovnika int not null
);


alter table opcina add foreign key (zupanija) references zupanija (sifra);

alter table mjesto add foreign key (opcina) references opcina (sifra);


#describe zupanija;
#select * from zupanija;
insert into zupanija (sifra, naziv, zupan) values
(null,'Osječko-baranjska','Ivan Anušić'),
(null,'Vukovarsko-srijemska','Božo Galić'),
(null, 'Zadarska', 'Božidar Longin');

#describe opcina;
#select * from opcina;
insert into opcina (sifra, zupanija, naziv, nacelnik) values
(null,1,'Antunovac','Davor Tubanjski'),
(null,2,'Privlaka', 'Gašpar Begonja'),
(null,3, 'Bibinje', 'Bruno Bugarija');

#describe mjesto;
#select * from mjesto;
insert into mjesto (sifra, opcina, naziv, brojstanovnika) values
(null,3,'Bibinje', '3000'),
(null,3,'Sukošan', '2000'),
(null,1,'Antunovac', '3000');

update mjesto set brojstanovnika=3050 where sifra=1;
update mjesto set brojstanovnika=2020 where sifra=2;
delete from mjesto where brojstanovnika='3000';