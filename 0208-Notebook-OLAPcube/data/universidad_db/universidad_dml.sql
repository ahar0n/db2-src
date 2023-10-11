
use universidadAD;
-- Tabla Departamento ------------------------------------------- 
insert into departamento (idDep, nombre, presupuestoAnual) values (1, 'Ingeniería', 100000000);
insert into departamento (idDep, nombre, presupuestoAnual) values (2, 'Sistemas', 50000000);
insert into departamento (idDep, nombre, presupuestoAnual) values (3, 'Matematica', 150000000);

-- Tabla Título -------------------------------------------------
insert into titulo (cod, nombre) values ('12345', 'Ing. Informático');
insert into titulo (cod, nombre) values ('67890', 'Ing. Matemática');
insert into titulo (cod, nombre) values ('78678', 'Cartógrafo');
insert into titulo (cod, nombre) values ('78671', 'Ing. Civil');

-- Tabla Profesor -----------------------------------------------
insert into profesor (rutProf, nombre, cod, IdDep) values ('11111111-1', 'Juan Perez', '78678', 1);
insert into profesor (rutProf, nombre, cod, IdDep) values ('121914856-5', 'Jose Carrasco', '67890', 3);
insert into profesor (rutProf, nombre, cod, IdDep) values ('10354869-7', 'Manuel Osess', '67890', 3);
insert into profesor (rutProf, nombre, cod, IdDep) values ('15487956-8', 'Marco Lopez', '12345', 2);
insert into profesor (rutProf, nombre, cod, IdDep) values ('167458852-9', 'Anita Bustamante', '78671', 1);

-- Tabla Alumno -------------------------------------------------
insert into alumno (rutAlu, nombre) values ('15126954-8', 'Margarita Pinilla');
insert into alumno (rutAlu, nombre) values ('14852654-7', 'Monica Soto');
insert into alumno (rutAlu, nombre) values ('15785365-8', 'Marco Ferj');
insert into alumno (rutAlu, nombre) values ('14652985-4', 'Manuel Resto');
insert into alumno (rutAlu, nombre) values ('14652985-1', 'Valentina Gonzalez');

-- Tabla Asignatura ---------------------------------------------
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '11111', 'Logistica', 6, '11111111-1');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '11100', 'Administración', 6, '11111111-1');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '22220', 'Calculo I', 6, '121914856-5');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '22221', 'Calculo II', 6, '121914856-5');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '33330', 'Física I', 4, '10354869-7');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '33331', 'Física II', 4, '10354869-7');
insert into asignatura (codAsig, nombre, horas, rutProf) values ( '44440', 'Dibujo I', 10, '167458852-9');

-- Tabla Cursa --------------------------------------------------
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '11111', 2010, 1, 4.5);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '11100', 2010, 1, 3.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '22220', 2010, 1, 3.6);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '33330', 2010, 1, 3.7);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '22220', 2011, 1, 4.1);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '33330', 2011, 1, 4.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '22221', 2011, 2, 4.1);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15126954-8', '33331', 2011, 2, 4.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14852654-7', '11111', 2011, 1, 5.8);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14852654-7', '22220', 2011, 1, 5.2);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14852654-7', '33330', 2011, 1, 3.8);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14852654-7', '22221', 2012, 2, 3.9);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14852654-7', '22221', 2013, 2, 3.9);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '11111', 2010, 1, 5.4);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '11100', 2010, 1, 6.4);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '33330', 2010, 1, 6.5);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '22220', 2010, 1, 6.8);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '22221', 2010, 2, 4.1);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-4', '33331', 2010, 2, 4.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15785365-8', '11111', 2010, 1, 6.5);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('15785365-8', '11100', 2010, 1, 5.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-1', '11111', 2010, 1, 6.0);
insert into cursa (rutAlu, codAsig, Anio, Semestre, Promedio) values ('14652985-1', '11100', 2010, 1, 5.8);