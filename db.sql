CREATE DATABASE quanlythuvien;
USE quanlythuvien;

CREATE TABLE BookType(
	TypeId int auto_increment primary key,
    TypeName varchar(50) NOT NULL UNIQUE,
    Description text,
    IsDeleted bit default 0
);

CREATE TABLE Book(
	BookId int auto_increment primary key,
    BookName varchar(100) NOT NULL UNIQUE,
    Title varchar(200) NOT NULL,
    Author varchar(200) NOT NULL,
    TotalPages int NOT NULL , check(TotalPages > 0),
    Content text NOT NULL,
    Publisher varchar(100) NOT NULL,
    Price decimal(10,2) NOT NULL , check(Price > 0),
    TypeId int NOT NULL,
    IsDeleted bit default 0,
    FOREIGN KEY (TypeId) REFERENCES BookType(TypeId)
);










