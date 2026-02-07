--Cantidad de turnos de un medico--
DELIMITER $$

CREATE FUNCTION fn_cantidad_turnos_medico(medico_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE total INT;

SELECT COUNT(*)
INTO total
FROM turno
WHERE id_medico = medico_id;

RETURN total;
END $$

DELIMITER ;


--edad del paciente--
DELIMITER $$

CREATE FUNCTION fn_edad_paciente(fecha DATE)
RETURNS INT
DETERMINISTIC
BEGIN
RETURN TIMESTAMPDIFF(YEAR, fecha, CURDATE());
END $$

DELIMITER ;