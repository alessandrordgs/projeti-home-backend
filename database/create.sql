-- yarn add express mysql dotenv cors body-parser
-- create database dbprojetiv2;
-- use dbprojetiv2;


CREATE TABLE `files` (
  `id` int auto_increment not null,
  `imobbile_id` int,
  `hash` varchar(150),
  `updated_at` timestamp,
  `created_at` timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (imobbile_id) REFERENCES imobbiles(id)
);

CREATE TABLE `imobbiles` (
  `id` int auto_increment not NULL,
  `imobbile_type_id` int,
  `user_id` int,
  `room_quantity` float,
  `bathroom_quantity` float,
  `imobbile_adress` varchar(150),
  `imobbile_country` varchar(150),
  `imobbile_city` varchar(150),
  `imobbile_state` varchar(150),
  `ad_description` varchar(150),
  `ad_value` float,
  `ad_title` varchar(150),
  `acept_pets` boolean,
  `with_furniture` boolean,
 `updated_at` timestamp,
  `created_at` timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (imobbile_type_id) REFERENCES imobbiles_types(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE `imobbiles_types` (
  `id` int primary key auto_increment not null,
  `name`  varchar(80),
  `updated_at` timestamp,
  `created_at` timestamp
);

CREATE TABLE `amenities` (
  `id` int auto_increment not null,
  `imobbile_id` int,
  `name` varchar(80),
  `description` varchar(80),
  `active` boolean,
  `updated_at` timestamp,
  `created_at` timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (imobbile_id) REFERENCES imobbiles(id)
);

CREATE TABLE `users` (
  `id` int primary key auto_increment not null,
  `name` varchar(80),
  `email` varchar(80),
  `telephone` varchar(80),
  `realtor_user` boolean,
  `advertiser_user` boolean,
  `birth_date` date,
  `national_register` float(14),
  `city` varchar(80),
  `state` varchar(80),
  `profile_picture` varchar(80),
  `password` varchar(150),
  `updated_at` timestamp,
  `created_at` timestamp
);


create table usuarios(id int primary key auto_increment, nome varchar(80),
 data_nascimento date, cadastro_nacional float, email varchar(30) ,  cidade varchar(30), 
estado varchar(50),
 created_at timestamp, 
 updtated_at timestamp); 


