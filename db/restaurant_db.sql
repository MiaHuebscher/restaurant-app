# Create and use the database
create database Restaurants;
use Restaurants;

# Construct the michelin star table
create table michelin (
    restaurant_id integer primary key,
    owner_id integer not null,
    restaurant_name varchar(50) unique not null,
    price_type varchar(5) not null,
    cuisine_type varchar(30) not null,
    city varchar(20) not null,
    country varchar(20) text not null,
    latitude decimal(d=2),
    longitude decimal(d=2)
)

create table restaurant (
    restaurant_id integer primary key,
    restaurant_name varchar(50) unique not null,
    price_type varchar(5) not null,
    cuisine_type varchar(30) not null,
    city varchar(20) not null,
    country varchar(20) text not null,
    latitude decimal(d=2),
    longitude decimal(d=2),
    owner_id integer not null,
    constaint owner_fk
        foreign key owner_id references owners (owner_id)
)

create table owners (
    owner_id integer auto_increment not null,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    country varchar(25),
    primary key (owner_id),
    constraint own_rest_fk
        foreign key owner_id references restaurant (owner_id),
    constraint own_mich_fk
        foreign key owner_id references michelin (owner_id)
)
