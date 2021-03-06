DELIMITER //

DROP PROCEDURE IF EXISTS INSERT_MAESTRO;
//

CREATE PROCEDURE INSERT_MAESTRO(IN nombreMaestro VARCHAR(45), IN apellidoMaestro VARCHAR(45), IN correoMaestro VARCHAR(45), IN cubiculoMaestro VARCHAR(45))
BEGIN

INSERT INTO Maestro (nombre_Maestro,apellido_Maestro,correo_Maestro,cubiculo_Maestro) VALUES (nombreMaestro,apellidoMaestro,correoMaestro,cubiculoMaestro);

END
//

​

DROP PROCEDURE IF EXISTS GET_MAESTRO;
//

CREATE PROCEDURE GET_MAESTRO(IN NombreProfesor VARCHAR(45))
BEGIN

SELECT * FROM Maestro WHERE nombre_Maestro = NombreProfesor;

END
//

DELIMITER ;
