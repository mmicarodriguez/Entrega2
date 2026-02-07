--Turnos completos--
CREATE VIEW vista_turnos_completos AS
SELECT 
t.id_turno,
p.nombre AS nombre_paciente,
p.apellido AS apellido_paciente,
m.nombre AS nombre_medico,
m.apellido AS apellido_medico,
e.nombre AS especialidad,
c.numero AS consultorio,
t.fecha,
t.hora,
t.estado
FROM turno t
JOIN paciente p ON t.id_paciente = p.id_paciente
JOIN medico m ON t.id_medico = m.id_medico
JOIN especialidad e ON m.id_especialidad = e.id_especialidad
JOIN consultorio c ON t.id_consultorio = c.id_consultorio;


--Turnos pendientes--
CREATE VIEW vista_turnos_pendientes AS
SELECT *
FROM turno
WHERE estado = 'pendiente';


--Vista medico por especialidad--
CREATE VIEW vista_medicos_especialidad AS
SELECT 
m.id_medico,
m.nombre,
m.apellido,
e.nombre AS especialidad
FROM medico m
JOIN especialidad e 
ON m.id_especialidad = e.id_especialidad;