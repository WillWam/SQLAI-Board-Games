create table game_cart (
    game_cart_id int primary key,
    game_category varchar(30) not null
);

create table game (
    game_id int primary key,
    game_cart_id int not null,
    name varchar(30) not null,
    price decimal(8,2) not null,
    foreign key (game_cart_id) references game_cart(game_cart_id)
);

create table snack_cart (
    snack_cart_id int primary key,
    snack_category varchar(30) not null
);

create table snack (
    snack_id int primary key,
    snack_cart_id int not null,
    name varchar(30) not null,
    price decimal(8,2) not null,
    foreign key (snack_cart_id) references snack_cart(snack_cart_id)
);

create table person (
    person_id int primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null
);

create table rental (
    rental_id int primary key,
    person_id int not null,
    game_id int not null,
    rental_price decimal(8,2) not null,
    rent_time datetime not null,
    return_time datetime,
    foreign key (person_id) references person(person_id),
    foreign key (game_id) references game(game_id)
);

create table snack_purchase (
    snack_purchase_id int primary key,
    person_id int,
    snack_id int,
    price decimal(8,2),
    purchase_time datetime,
    foreign key (person_id) references person(person_id),
    foreign key (snack_id) references snack(snack_id)
);
