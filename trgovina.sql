drop database if exists trgovina;
create database trgovina;
use trgovina;

create table racun (
    sifra int not null primary key auto_increment,
    datum datetime not null,
    brojracuna int not null,
    operater int not null
);

create table stavka (
    racun int not null,
    proizvod int not null,
    kolicina decimal (18.2) not null
);

create table proizvod (
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    cijena decimal(18,2) not null
);

create table operater (
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    email varchar(50) not null
);

alter table racun add foreign key (operater) references operater(sifra);

alter table stavka add foreign key (racun) references racun(sifra);
alter table stavka add foreign key (proizvod) references proizvod(sifra);


insert into proizvod (sifra, naziv, cijena) values
(null,'mlijeko','5.55'),
(null, 'kruh','8.49'),
(null, 'sir', '12.99');

insert into operater (sifra, ime,prezime,email) values
(null,'Ivan', 'Ivić','ivan.ivic@gmail.com'),
(null,'Pero','Perić', 'pero.peric@gmail.com'),
(null, 'Mijo', 'Mijić','mijo.mijic@gmail.com');

insert into racun (sifra, datum,brojracuna,operater) values
(null,'2019-11-11 15:20',1,1),
(null, '2019-11-11 15:30',2,3),
(null, '2019-11-11 15:32',3,2);

insert into stavka (racun,proizvod,kolicina) values
(1,1,10),
(2,2,5),
(1,3,1);

update proizvod set naziv='mlijeko Meggle' where sifra=1;
update operater set email='mio.mijic@gmail.com' where sifra=3;
delete from stavka where kolicina=5;