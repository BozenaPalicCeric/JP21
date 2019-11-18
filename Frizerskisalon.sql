drop database if exists frizerskisalon;
create database frizerskisalon;
use frizerskisalon;

create table djelatnica (
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char (11) null
);

create table korisnik (
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    kontakt varchar(50) not null,
    djelatnica int not null
);

create table posjeta (
    sifra int not null primary key auto_increment,
    usluga int not null,
    korisnik int not null,
    djelatnica int not null
);

create table usluga (
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal (18,2) not null,
    trajanje datetime
);

alter table korisnik add foreign key (djelatnica) references djelatnica (sifra);

alter table posjeta add foreign key (djelatnica) references djelatnica (sifra);
alter table posjeta add foreign key (korisnik) references korisnik (sifra);
alter table posjeta add foreign key (usluga) references usluga (sifra);

insert into djelatnica (sifra,ime,prezime) values
(null,'Mara', 'Marić'),
(null, 'Petra', 'Petrić'),
(null,'Maja','Majić');

insert into korisnik (sifra,ime, prezime, kontakt,djelatnica) values
(null, 'Nina', 'Petrović','nina@gmail.com',1),
(null, 'Karin', 'Mijić', 'karin@gmail.com',2),
(null, 'Ivka', 'Ivić', 'ivka@gmail.com',3);

insert into usluga (sifra, naziv, cijena) values
(null,'šišanje duge kose','50.00'),
(null, 'bojanje kratke kose', '100.00'),
(null, 'pramenovi', '120.00');

insert into posjeta (sifra, usluga, korisnik, djelatnica) values
(null,1,2,3),
(null,2,3,1),
(null,3,1,2);