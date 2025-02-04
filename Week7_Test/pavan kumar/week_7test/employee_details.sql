CREATE DATABASE employee_details;

CREATE TABLE users(
    id bigserial primary key,
    username varchar(50) not null,
    password varchar(50) not null,
    confirmpassword varchar(50) not null,
    email varchar(50) not null,
    phonenumber varchar(20) not null
);

CREATE TABLE employees(
    id bigserial primary key,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    Aadharnumber varchar(50) not null,
    mobilenumber varchar(50) not null,
    designation int references department(id),
    department int references designation(id)
);

CREATE TABLE department(
    id bigserial primary key,
    Name varchar(50) not null
);

INSERT INTO
    department(id, Name)
VALUES
    (1, 'Development');

INSERT INTO
    department(id, Name)
VALUES
    (2,'Testing');

INSERT INTO
    department(id, Name)
VALUES
    (3,'Operations');

INSERT INTO
    department(id, Name)
VALUES
    (4,'HR');         



CREATE TABLE designation(
    id bigserial primary key,
    Name varchar(50) not null
);

INSERT INTO
    designation(id, Name)
VALUES
    (1,'Developer');

INSERT INTO
    designation(id, Name)
VALUES
    (2,'Tester');

INSERT INTO
    designation(id, Name)
VALUES
    (3,'Junior Developer');


 INSERT INTO
    designation(id, Name)
VALUES
    (4,'Operations Manager');

INSERT INTO
    designation(id, Name)
VALUES
    (5,'HR');

