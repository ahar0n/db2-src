CREATE DATABASE universidad;
USE universidad;

CREATE TABLE Alumno ( 
rutAlu Char(12) NOT NULL, 
Nombre Char(30) NOT NULL 
);

ALTER TABLE Alumno ADD PRIMARY KEY (rutAlu);

CREATE TABLE Asignatura( 
codAsig Char(5) NOT NULL, 
Nombre Char(30), 
Horas Int, 
rutProf Char(12)
);

ALTER TABLE Asignatura ADD PRIMARY KEY (codAsig);

CREATE TABLE Profesor( 
rutProf Char(12) NOT NULL, 
Nombre Varchar(50) NOT NULL, 
cod Char(5), 
IdDep int
);

ALTER TABLE Profesor ADD PRIMARY KEY (rutProf);

CREATE TABLE Cursa( 
rutAlu Char(12) NOT NULL, 
codAsig Char(5) NOT NULL, 
Anio Int, 
Semestre Int, 
Promedio Double
);

ALTER TABLE Cursa ADD PRIMARY KEY (rutAlu,codAsig);

CREATE TABLE Titulo( 
cod Char(5) NOT NULL, 
nombre Varchar(30)
);

ALTER TABLE Titulo ADD PRIMARY KEY (cod);

CREATE TABLE Departamento( 
IdDep int NOT NULL, 
nombre Char(20), 
PresupuestoAnual Double,
);

ALTER TABLE Departamento ADD PRIMARY KEY (IdDep);

ALTER TABLE Cursa ADD CONSTRAINT AlumnoCursa FOREIGN KEY (rutAlu) 
REFERENCES Alumno (rutAlu) 
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Cursa ADD CONSTRAINT Impartidas FOREIGN KEY (codAsig) 
REFERENCES Asignatura (codAsig) 
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Asignatura ADD CONSTRAINT Imparte FOREIGN KEY (rutProf) 
REFERENCES Profesor (rutProf) 
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Profesor ADD CONSTRAINT TituloProf FOREIGN KEY (cod) 
REFERENCES Titulo (cod) 
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Profesor ADD CONSTRAINT Pertenece FOREIGN KEY (IdDep) 
REFERENCES Departamento (IdDep) 
ON DELETE NO ACTION ON UPDATE NO ACTION;