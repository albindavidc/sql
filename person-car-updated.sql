create table car (
car_uid UUID NOT NULL PRIMARY KEY, 
make VARCHAR(100) NOT NULL, 
model VARCHAR(100) NOT NULL, 
price NUMERIC(19, 2) NOT NULL
);

create table person ( 
    person_uid UUID NOT NULL PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    gender VARCHAR(7) NOT NULL, 
    email VARCHAR(100), 
    date_of_birth DATE NOT NULL, 
    country_of_birth VARCHAR(50) NOT NULL, 
    car_uid UUID REFERENCES car(car_uid),
    UNIQUE(car_uid)
    UNIQUE(email)
);
insert into person (person_uid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', '1921-12-03', 'Finland');
insert into person (person_uid, first_name, last_nane, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Omar', 'Colmore', 'Male', null, '1945-09-27', 'India');
insert into person (person_uid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Adriana', 'Matuschek', 'Female', 'anatuschek2@feedburner.com', '1945-10-03', 'USA');

insert into car (car_uid, make, model, price) values (uuid_generate_v4(),"Land Rover', 'Sterling', '87665.38");
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'GMC', 'Acadia', '17662.69');