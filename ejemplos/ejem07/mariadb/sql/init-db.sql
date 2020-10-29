use docker_sample;

create table usuarios (
    id int not null auto_increment primary key,
    nombre varchar(100) not null,
    email varchar(250) not null
);

insert into usuarios (nombre, email) VALUES
    ("Jose", "Vue"),
    ("Victor", "Aparejador"),
    ("Soraya", "Angular"),
    ("Luis", "Docker");