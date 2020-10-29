use docker_sample;

create table users (
    id int not null auto_increment primary key,
    name varchar(100) not null,
    last_name varchar(250) not null
);

insert into users (name, last_name) VALUES
    ("Jose", "Vue"),
    ("Victor", "Aparejador"),
    ("Soraya", "Angular"),
    ("Luis", "Docker");