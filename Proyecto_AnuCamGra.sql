/* El cambio manual de nombres de db y tabla se 
realizaron posteriormente a ingresar los
cambios mediante comandos.*/ 

CREATE DATABASE primer_db; /* Crea la base de datos */

SHOW DATABASES;

USE primer_db; /*  Usa la base de datos indicada */

SHOW TABLES;

/* Permite crear la tabla segun la informacion que necesitamos manejar */
CREATE TABLE participantes_categoria_a(
    id_registro INT NOT NULL AUTO_INCREMENT,
    Cargo VARCHAR(30) NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Matricula_Nro INT,
    PRIMARY KEY (id_registro)
);
/*Muestra las tablas existentes*/
SHOW TABLES;

/* Describe la tabla indicada */
DESCRIBE participantes_categoria_a;

/*Muestra TODO(*) el contenido de la tabla indicada*/
SELECT * FROM participantes_categoria_a;

/* Inserta un registro en la tabla indicada */
INSERT INTO participantes_categoria_a (Cargo, Nombre, Matricula_Nro) VALUES ("Directora Gral.", "Alicante", 11236);
INSERT INTO participantes_categoria_a (Cargo, Nombre, Matricula_Nro) VALUES ("Director Evo.", "Alberto", 52481);
INSERT INTO participantes_categoria_a (Cargo, Nombre, Matricula_Nro) VALUES ("Sub Director.", "Claudio", 345821);
INSERT INTO participantes_categoria_a (Cargo, Nombre, Matricula_Nro) VALUES ("Ing. Jefa", "Lucila", 412154);
INSERT INTO participantes_categoria_a (Cargo, Nombre, Matricula_Nro) VALUES ("Jefa Sector 1A.", "Lorena", 452558);

/*Seleccionar informacion de una tabla*/
SELECT Cargo FROM participantes_categoria_a;
SELECT Cargo, Nombre FROM participantes_categoria_a WHERE id_registro = 3;


/* Actualiza un registro con nueva informacion */
UPDATE participantes_categoria_a SET Apellido = "Lapicante" WHERE id_registro = 1;
UPDATE participantes_categoria_a SET Apellido = "Berto" WHERE id_registro = 2;
UPDATE participantes_categoria_a SET Apellido = "Clavito" WHERE id_registro = 3;
UPDATE participantes_categoria_a SET Apellido = "Lu" WHERE id_registro = 4;
UPDATE participantes_categoria_a SET Apellido = "Lora" WHERE id_registro = 5;

/* Actualiza un registro con nueva informacion */
UPDATE participantes_categoria_a SET Nombre = "Pablo", Apellido = "Pablito" = Matricula_Nro = 845796 WHERE id_registro = 3;

/* Elimina un registro DONDE el id sea el correspondiente */
DELETE FROM participantes_categoria_a WHERE id_registro = 5;

SELECT * FROM participantes_categoria_a;

/*
 A partir de este punto el codigo que sigue fue usado
 sobre el codigo original  para 
 agregar una categoria y para renombrar la DB.

/*Incluir una columna con la categoria "Apellido"*/
ALTER TABLE participantes_categoria_a ADD Apellido VARCHAR(30) AFTER Nombre;

/*Se crea una nueva db.*/
CREATE DATABASE proyecto_anucamgra;

/*
Luego se migra la tabla: 
Participantes_Categoria_A, a fin de "modificar" el nombre 
de la base de datos.
*/
RENAME TABLE primer_db.participantes_categoria_a TO proyecto_anucamgra.participantes_categoria_a;

/* Se borra la DB primer_db */
DROP DATABASE primer_db;

USE proyecto_anucamgra; /*  Usa la base de datos indicada */

/* Se muestra la tabla final de la DB */
SELECT * FROM participantes_categoria_a;

/*FIN*/


