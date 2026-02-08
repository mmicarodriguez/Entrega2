-- ESPECIALIDADES
INSERT INTO especialidad (nombre) VALUES
('Clínica Médica'),
('Cardiología'),
('Dermatología'),
('Pediatría'),
('Traumatología');


-- PACIENTES
INSERT INTO paciente (nombre, apellido, dni, fecha_nac, telefono, email) VALUES
('Mariana', 'Gomez', '30111222', '1985-04-12', '1156789012', 'mariana.gomez@mail.com'),
('Lucas', 'Fernandez', '28999111', '1980-09-23', '1167890123', 'lucas.fernandez@mail.com'),
('Carla', 'Martinez', '33444555', '1992-01-30', '1178901234', 'carla.martinez@mail.com'),
('Diego', 'Lopez', '25666777', '1978-07-19', '1189012345', 'diego.lopez@mail.com'),
('Sofia', 'Ramirez', '34555666', '1995-11-05', '1190123456', 'sofia.ramirez@mail.com');


-- MEDICOS
INSERT INTO medico (nombre, apellido, matricula, id_especialidad) VALUES
('Ana', 'Torres', 'MED1234', 1),
('Ricardo', 'Suarez', 'MED5678', 2),
('Laura', 'Mendez', 'MED9101', 3),
('Jorge', 'Castro', 'MED1121', 4),
('Valeria', 'Rios', 'MED3141', 5);

-- CONSULTORIOS
INSERT INTO consultorio (numero, piso) VALUES
('101', 1),
('202', 2),
('303', 3);

-- TURNOS
INSERT INTO turno (id_paciente, id_medico, id_consultorio, fecha, hora, estado) VALUES
(1, 1, 1, '2026-03-01', '09:00:00', 'pendiente'),
(2, 2, 2, '2026-03-01', '10:00:00', 'pendiente'),
(3, 3, 3, '2026-03-01', '11:00:00', 'pendiente'),
(4, 1, 1, '2026-03-02', '09:30:00', 'pendiente'),
(5, 4, 2, '2026-03-02', '10:30:00', 'pendiente'),
(1, 5, 3, '2026-03-03', '12:00:00', 'pendiente'),
(2, 3, 1, '2026-03-03', '13:00:00', 'pendiente'),
(3, 2, 2, '2026-03-04', '14:00:00', 'cancelado'),
(4, 4, 3, '2026-03-05', '15:00:00', 'pendiente'),
(5, 1, 1, '2026-03-06', '16:00:00', 'pendiente');