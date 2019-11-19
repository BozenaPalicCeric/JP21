drop database if exists djecjivrtic;
create database djecjivrtic;
use djecjivrtic;

create table odgojnaskupina (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
brojdjece int,
odgajateljica int not null
);

create table dijete (
    sifra int not null primary key auto_increment,
    odgojnaskupina int not null,
    odgajateljica int not null,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table odgajateljica (
    sifra int not null primary key auto_increment,
    strucnasprema varchar(50) not null,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

alter table dijete add foreign key (odgojnaskupina) references odgojnaskupina(sifra);
alter table dijete add foreign key (odgajateljica) references odgajateljica(sifra);

alter table odgojnaskupina add foreign key (odgajateljica) references odgajateljica(sifra);

insert into odgajateljica(sifra,strucnasprema,ime, prezime) values
(null,'VSS','Ivka','Ivkić'),
(null, 'SSS','Marijana', 'Marić'),
(null, 'VSS', 'Dora', 'Dorić');

insert into odgojnaskupina (sifra,naziv,odgajateljica) values
(null,'Tratinčica',1),
(null, 'Maslačak',2),
(null, 'Bubamara',3);

insert into dijete (sifra, odgojnaskupina,odgajateljica, ime, prezime) values
(null,1,1,'Luka', 'Lukić'),
(null, 2,2,'Pero', 'Perić'),
(null, 3,3,'Ivo', 'Ivić');