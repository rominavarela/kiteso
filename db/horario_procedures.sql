DELIMITER //

DROP PROCEDURE IF EXISTS INSERT_HORARIO;
//

CREATE PROCEDURE INSERT_HORARIO(IN IdAlumno INT, IN Dia INT, IN HORA INT,IN MAESTRO INT,IN EDIFICIO INT,IN SALON INT)
BEGIN

IF(HORA = 0) THEN

INSERT INTO `Table7-9` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 1) THEN

INSERT INTO `Table9-11` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 2) THEN

INSERT INTO `Table11-1` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 3) THEN

INSERT INTO `Table1-3` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 4) THEN

INSERT INTO `Table4-6` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 5) THEN

INSERT INTO `Table6-8` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

ELSEIF(HORA = 6) THEN

INSERT INTO `Table8-10` (Alumno_idAlumno,Salon_idSalon,Edificio_idEdificio,Maestro_idMaestro,Dia_de_semana_idDia) VALUES (IdAlumno, SALON, EDIFICIO, MAESTRO, Dia);

END IF;

END
//

​

DROP PROCEDURE IF EXISTS GET_HORARIO;
//

CREATE PROCEDURE GET_HORARIO(IN IdAlumno INT,IN IdDia INT,IN HORA INT)

BEGIN

DECLARE idMaestroTemp INT;

DECLARE idSalonTemp INT;

DECLARE idEdificioTemp INT;

IF(HORA = 0) THEN

SELECT Maestro_idMaestro FROM `Table7-9` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table7-9` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table7-9` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 1) THEN

SELECT Maestro_idMaestro FROM `Table9-11` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table9-11` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table9-11` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 2) THEN

SELECT Maestro_idMaestro FROM `Table11-1` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table11-1` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table11-1` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 3) THEN

SELECT Maestro_idMaestro FROM `Table1-3` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table1-3` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table1-3` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 4) THEN

SELECT Maestro_idMaestro FROM `Table4-6` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table4-6` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table4-6` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 5) THEN

SELECT Maestro_idMaestro FROM `Table6-8` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table6-8` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table6-8` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

ELSEIF(HORA = 6) THEN

SELECT Maestro_idMaestro FROM `Table8-10` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idMaestroTemp;

SELECT Salon_idSalon FROM `Table8-10` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idSalonTemp;

SELECT Edificio_idEdificio FROM `Table8-10` WHERE (Alumno_idAlumno = IdAlumno) AND (Dia_de_semana_idDia = IdDia) INTO idEdificioTemp;

SELECT apellido_Maestro FROM Maestro WHERE idMaestro = idMaestroTemp;

SELECT nombre_Edificio FROM Edificio WHERE idEdificio = idEdificioTemp;

SELECT nombre_Salon FROM Salon WHERE idSalon = idSalonTemp;

END IF;

END
//

DELIMITER ;
