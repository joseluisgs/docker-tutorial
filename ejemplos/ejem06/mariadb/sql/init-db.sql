USE testdb;

CREATE TABLE test (
        nombre varchar(30),
        email varchar(50)
);

INSERT INTO test (nombre, email)
VALUES
        ('Jose Luis', 'joseluis@docker.com'),
        ('Soraya', 'soraya@docker.com'),
        ('Victor', 'victor@docker.com');