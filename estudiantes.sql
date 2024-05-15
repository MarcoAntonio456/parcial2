
create table estudiantes(
 id int(11) not null auto_increment primary key,
 nombres varchar(100),
 apellidos varchar(100),
 seminario varchar(100),
 confirmado bool,
 fecha_inscripcion VARCHAR(12)
);
INSERT INTO estudiantes (nombres,apellidos,seminario,confirmado,fecha_inscripcion) VALUES ("Mario","Kantuta","Criptografia",1,"2024-05-02");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Laura", "González", "Inteligencia Artificial", 1, "2024-05-03");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Carlos", "Sánchez", "Desarrollo Web", 0, "2024-05-04");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Ana", "Martínez", "Machine Learning", 1, "2024-05-05");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Juan", "Pérez", "Programación en Python", 1, "2024-05-06");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("María", "López", "Redes Neuronales", 0, "2024-05-07");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Pedro", "García", "Seguridad Informática", 1, "2024-05-08");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Luisa", "Hernández", "Desarrollo de Videojuegos", 1, "2024-05-09");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Miguel", "Torres", "Big Data", 0, "2024-05-10");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Sofía", "Díaz", "Programación en Java", 1, "2024-05-11");
INSERT INTO estudiantes (nombres, apellidos, seminario, confirmado, fecha_inscripcion) VALUES ("Elena", "Ramírez", "Diseño de Interfaces de Usuario", 1, "2024-05-12");

