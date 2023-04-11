create database EduHome
go
use EduHome
create table Events
(Id int primary key identity,
Name nvarchar(50),
StartDate datetime2,
EndDate datetime2
CityId int foreign key references City(Id)
)
go
create table Cities
(
Id int primary key identity,
Name nvarchar(20)
)
go 
create table Speakers
(
Id int primary key identity,
FullName nvarchar(30)
)
go
create table EventsSpeakers
(
SpeakerId int foreign key references Speakers(Id),
EventId int foreign key references Events(Id) 
)


create procedure Usp_InsertCities
@Name nvarchar(30)
as
insert into Cities
values
(@Name)
Exec Usp_InsertCities 'Istanbul'
Exec Usp_InsertCities 'Baku'
Exec Usp_InsertCities 'Ankara'
Exec Usp_InsertCities 'Sivas'


insert into Events
values

('Color Fest','2023-06-12 18:00','2023-06-18 23:00',1),
('Semi Finals ','2023-05-10 08:00','2023-05-14 16:00',4),
('Chess Tournament','2023-03-11 16:00','2023-03-06 13:00',3),
('Tekno Fest','2023-04-28 12:00','2023-04-30 23:00',2),
('Formula 1','2023-04-28 08:00','2023-05-03 23:00',1)

insert into Speakers
values
('Rashad Abbasov'),
('Nicat Abbasov'),
('Amin ISrafil'),
('Elvin Bilal'),
('Tural Isbatov')





