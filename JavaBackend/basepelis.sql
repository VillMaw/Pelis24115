DROP DATABASE PELICULAS_WEB;

CREATE DATABASE PELICULAS_WEB;

use peliculas_web;

CREATE TABLE USUARIO(
	ID INT NOT NULL AUTO_INCREMENT,
    NOMBRE VARCHAR(255),
    APELLIDO varchar(255),
    EMAIL VARCHAR(255),
    CLAVE VARCHAR(255),
    FECHA_NAC DATE,
    NACIONALIDAD VARCHAR(255),
    PRIMARY KEY(ID)
);

CREATE TABLE DIRECTOR(
	ID INT NOT NULL AUTO_INCREMENT,
    NOMBRE varchar(255),
    APELLIDO varchar(255),
    EDAD INT,
    NACIONALIDAD varchar(255),
    PRIMARY KEY(ID)
);

CREATE TABLE movie(
	id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255),
    descripcion varchar(1024),
    genero varchar(255),
    calificacion int,
    anio int,
    estrellas tinyint,
    director varchar(255),
    PRIMARY KEY(id)
);


/* Insertar Peliculas */

INSERT INTO usuario ( nombre, apellido, email, clave, fecha_nac, nacionalidad) VALUES ("Jose", "Torres", "joset@gmail.com", "pepito00", "1994-05-12", "Venezuela"),
("Marcelo", "Gonzales", "marce1984@gmail.com", "marcelin", "1984-03-17", "Colombia"),
("Juano", "Churrasco", "churrasquin@gmail.com", "chuchuLO", "1972-10-24", "Peru"), ("Tomas", "Millo", "tomi_m@gmail.com", "rockandroll", "1975-07-01", "Argentina"), 
("Minerva", "McGonagall", "minerva@hogwarts.edu", "transmutate", "1962-10-04", "Inglaterra"), ("Albus", "Dumbledore", "woollenSocks@hogwarts.edu", "CockroachC ", "1881-08-17", "Inglaterra"), 
("Tony Tony", "Chopper", "doctorTony@gmail.com", "sakura", "1507-12-24", "Drum Island"), ("Robin", "Nico", "bookFan@treeofk.com", "cloverClover", "1494-02-06", "Ohara"),
("Maito ", "Gai", "taijutsuLove@konoha.com", "seishun", "984-01-01", "Konoha"),
("Sakumo", "Hatake", "whiteFang@konoha.com", "kakashiCute", "982-11-03", "Konoha"), ("Sasori", "Akasuna", "puppetry@akatsuki.com", "trueart", "1975-11-08", "Sunagakure"),
 ("Victoria", "Seras", "seras@hellsing.org", "pancakesHoney", "1982-04-08", "Inglaterra"), ("Walter C", "Dornez", "dornez@hellsing.org", "shinigamiB", "1930-03-15", "Inglaterra"),
 ("Integral Fairbrook", "Wintergates Hellsing", "integral@hellsing.org", "ginTonic", "1977-05-01", "Inglaterra"), ("Water Law", "Trafalgar D", "doctorHeart@gmail.com", "rosinante", "1499-10-06", "Flevance"),
("Johan", "Liebert", "kinderheim511@gmail.com", "meaningless", "1975-04-07", "Alemania");

INSERT INTO director (nombre, apellido, edad, nacionalidad) VALUES
('Quentin', 'Tarantino', 58, 'Estadounidense'),
('Christopher', 'Nolan', 53, 'Británico'),
('Martin', 'Scorsese', 80, 'Estadounidense'),
('Steven', 'Spielberg', 76, 'Estadounidense'),
('Hayao', 'Miyazaki', 82, 'Japonés'),
('Alfonso', 'Cuarón', 61, 'Mexicano'),
('Denis', 'Villeneuve', 56, 'Canadiense'),
('Greta', 'Gerwig', 41, 'Estadounidense'),
('Jane', 'Campion', 68, 'Neozelandesa'),
('Bong', 'Joon-ho', 54, 'Surcoreano'),
('Sofia', 'Coppola', 52, 'Estadounidense'),
('Park', 'Chan-wook', 59, 'Surcoreano'),
('Alejandro', 'González Iñárritu', 60, 'Mexicano'),
('Wes', 'Anderson', 54, 'Estadounidense'),
('Ridley', 'Scott', 86, 'Británico'),
('José', 'Martínez', 35, 'Argentino'),
('María', 'Gómez', 30, 'Argentino'),
('Anna', 'Schmidt', 28, 'Alemán'),
('John', 'Smith', 36, 'Inglés'),
('José', 'García', 29, 'Argentino'),
('Max', 'Müller', 30, 'Alemán'),
('Klaus', 'Schneider', 40, 'Alemán');

insert into movie(nombre, descripcion, genero, calificacion, anio, estrellas, director
) values ("Titanic", "Sin Descripcion", "Romantica", "8", "2000", "4", 1), 
('Pulp Fiction', 'Una serie de historias interrelacionadas sobre crimen y redención en Los Ángeles.', 'Acción', 9, 1994, 5, 1),  -- Quentin Tarantino
('Inception', 'Un ladrón habilidoso roba secretos corporativos insertándose en los sueños de los demás.', 'Ciencia ficción', 8, 2010, 4, 2),  -- Christopher Nolan
('Taxi Driver', 'Un veterano de Vietnam alienado se convierte en un justiciero nocturno en las calles de Nueva York.', 'Drama', 8, 1976, 4, 3),  -- Martin Scorsese
('Jurassic Park', 'Un parque temático con dinosaurios clonados sale mal cuando los dinosaurios escapan y causan estragos.', 'Acción', 7, 1993, 4, 4),  -- Steven Spielberg
('Mi Vecino Totoro', 'Dos niñas se mudan al campo y conocen a un espíritu del bosque llamado Totoro.', 'Animación', 9, 1988, 5, 5),  -- Hayao Miyazaki
('Roma', 'La vida de una empleada doméstica en la Ciudad de México a principios de los años 70.', 'Drama', 8, 2018, 4, 6),  -- Alfonso Cuarón
('Arrival', 'Una experta en lingüística es reclutada por el ejército para determinar si los visitantes extraterrestres vienen en paz o son una amenaza.', 'Drama', 8, 2016, 4, 7),  -- Denis Villeneuve
('Lady Bird', 'Una joven lucha contra el amor de su madre y su propia identidad mientras crece en Sacramento, California.', 'Comedia', 7, 2017, 3, 8),  -- Greta Gerwig
('El Piano', 'Una pianista muda y su hija son enviadas a Nueva Zelanda para un matrimonio arreglado en el siglo XIX.', 'Romance', 8, 1993, 4, 9),  -- Jane Campion
('Parásitos', 'Una familia pobre se infiltra en la vida de una familia rica con resultados dramáticos.', 'Comedia', 9, 2019, 5, 10),  -- Bong Joon-ho
('Lost in Translation', 'Dos estadounidenses en Tokio forman un vínculo improbable mientras enfrentan crisis de identidad.', 'Romance', 8, 2003, 4, 11),  -- Sofia Coppola
('Oldboy', 'Después de ser secuestrado y encarcelado durante 15 años, un hombre busca venganza contra su captor.', 'Drama', 8, 2003, 4, 12),  -- Park Chan-wook
('Birdman', 'Un actor en decadencia intenta montar una obra en Broadway para recuperar su gloria pasada.', 'Comedia', 8, 2014, 4, 13),  -- Alejandro González Iñárritu
('The Grand Budapest Hotel', 'Las desventuras de un conserje y su protegido en un famoso hotel europeo entre guerras.', 'Comedia', 8, 2014, 4, 14),  -- Wes Anderson
('Blade Runner', 'Un blade runner debe perseguir y "retirar" a cuatro replicantes que han regresado a la Tierra en busca de su creador.', 'Ciencia ficción/Thriller', 8, 1982, 4, 15),  -- Ridley Scott
('Nuevo Proyecto', 'Una emocionante historia de aventuras y descubrimientos en un mundo futurista.', 'Acción', 0, 2024, 0, 1),
('El Proyecto de la Bruja de Blair', 'Un grupo de estudiantes de cine desaparece mientras investigan una leyenda local sobre una bruja en un bosque.', 'Terror', 7, 1999, 3, 15),  -- Eduardo Sánchez (Estadounidense)
('El Silencio de los Corderos', 'Un agente del FBI se une a un psiquiatra para atrapar a un asesino en serie que se come a sus víctimas.', 'Terror', 9, 1991, 5, 14),  -- Jonathan Demme (Estadounidense)
('Psicosis', 'Una secretaria roba dinero y huye a un motel donde conoce al perturbado Norman Bates y su madre dominante.', 'Terror', 8, 1960, 4, 13),  -- Alfred Hitchcock (Británico)
('El Exorcista', 'Una joven es poseída por una fuerza demoníaca, y dos sacerdotes luchan para salvar su alma.', 'Terror', 8, 1973, 4, 12),  -- William Friedkin (Estadounidense)
('El Resplandor', 'Un escritor se convierte en cuidador de un hotel durante el invierno, donde su hijo tiene visiones aterradoras y él se vuelve violento.', 'Terror', 9, 1980, 5, 11),  -- Stanley Kubrick (Británico)
('La Última Cena', 'Un thriller psicológico donde un grupo de amigos descubre secretos oscuros durante una cena que cambiará sus vidas para siempre.', 'Suspenso', 8, 2023, 4, 16), -- José Martínez (Argentino)
('El Laberinto de los Sueños', 'En un mundo surrealista, un joven busca desesperadamente una salida mientras enfrenta criaturas y enigmas desafiantes.', 'Fantasía', 7, 2022, 3, 17), -- María Gómez (Argentino)
('El Misterio del Bosque Encantado', 'Un cuento de hadas moderno donde una joven se adentra en un bosque mágico y descubre su destino entre criaturas místicas y peligros inesperados.', 'Aventura/Fantasía', 7, 2024, 3, 18), -- Anna Schmidt (Alemán)
('El Último Viaje', 'Un drama emocional donde un hombre enfrenta sus miedos más profundos mientras emprende un viaje transformador por paisajes desolados y memorias olvidadas.', 'Drama', 8, 2021, 4, 19), -- John Smith (Inglés)
('Noche de Pesadilla', 'Un grupo de amigos se aventura en una casa abandonada durante una noche de tormenta, solo para descubrir que no están solos y que el pasado del lugar es más oscuro de lo que imaginaron.', 'Terror', 7, 2023, 3, 20); -- José García (Argentino)



/*Eliminar tabla*/
drop table movie;

/* Select para obtener los registros */
SELECT * FROM movie;
SELECT * FROM director;
/* Eliminar registro*/
DELETE FROM MOVIE WHERE ID = 30;

/*CONSULTAS*/

select * from movie where anio > 2010;

select * from movie where anio < 2010;

select * from movie where anio = 2024;
select * from movie where genero = "Acción";

select * from movie where anio < 2022 and
genero = "COMEDIA";

select * from movie where estrellas = 5;
select * from movie where estrellas < 6;

select * from movie where genero = "accion"
and estrellas >= 4;

select * from director 
WHERE edad BETWEEN 25 AND 60;



