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


-- Cancela turno--
DELIMITER $$

CREATE PROCEDURE sp_cancelar_turno(IN turno_id INT)
BEGIN
UPDATE turno
SET estado = 'cancelado'
WHERE id_turno = turno_id;
END $$

DELIMITER ;

-- Turno registrado--
DELIMITER $$

CREATE PROCEDURE sp_registrar_atencion(
IN turno_id INT,
IN diagnostico TEXT,
IN observaciones TEXT
)
BEGIN

INSERT INTO atencion(
id_turno,
diagnostico,
observaciones
)
VALUES(
turno_id,
diagnostico,
observaciones
);

UPDATE turno
SET estado = 'atendido'
WHERE id_turno = turno_id;

END $$

DELIMITER ;
