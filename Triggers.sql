--Evitar sobreturnos--
DELIMITER $$

CREATE TRIGGER trg_evitar_doble_turno
BEFORE INSERT ON turno
FOR EACH ROW
BEGIN

IF fn_consultorio_ocupado(
NEW.id_consultorio,
NEW.fecha,
NEW.hora
) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Ya existe un turno en ese horario';
END IF;

END $$

DELIMITER ;