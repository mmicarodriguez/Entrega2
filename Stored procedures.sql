--Turno x disponibilidad--
DELIMITER $$

CREATE PROCEDURE sp_crear_turno(
IN paciente_id INT,
IN medico_id INT,
IN consultorio_id INT,
IN fecha_turno DATE,
IN hora_turno TIME
)
BEGIN

IF fn_consultorio_ocupado(consultorio_id, fecha_turno, hora_turno) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Consultorio ocupado';
ELSE
    INSERT INTO turno(
        id_paciente,
        id_medico,
        id_consultorio,
        fecha,
        hora,
        estado
    )
    VALUES(
        paciente_id,
        medico_id,
        consultorio_id,
        fecha_turno,
        hora_turno,
        'pendiente'
    );
END IF;

END $$

DELIMITER ;