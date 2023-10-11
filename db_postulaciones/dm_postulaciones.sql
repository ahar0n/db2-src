CREATE DATABASE PostulacionesDM;
USE PostulacionesDM;
        

        
CREATE TABLE Carrera
(
  CarreraID     INT          NOT NULL,
  NombreCarrera VARCHAR(150) NOT NULL,
  Area          VARCHAR(500) NOT NULL,
  Nivel         VARCHAR(50)  NOT NULL,
  PRIMARY KEY (CarreraID)
) COMMENT 'Dimension';

CREATE TABLE Establecimiento
(
  EstablecimientoID   INT          NOT NULL,
  TipoEstablecimiento VARCHAR(200) NOT NULL,
  Region              INT          NOT NULL,
  Ciudad              VARCHAR(100) NOT NULL,
  PRIMARY KEY (EstablecimientoID)
) COMMENT 'Dimension';

CREATE TABLE Genero
(
  GeneroID     INT        NOT NULL,
  NombreGenero VARCHAR(1) NOT NULL,
  PRIMARY KEY (GeneroID)
) COMMENT 'Dimension';

CREATE TABLE Postulaciones
(
  TiempoID          INT NOT NULL,
  CarreraID         INT NOT NULL,
  EstablecimientoID INT NOT NULL,
  GeneroID          INT NOT NULL,
  Cantidad          INT NOT NULL,
  PRIMARY KEY (TiempoID, CarreraID, EstablecimientoID, GeneroID)
) COMMENT 'FactTable';

CREATE TABLE Tiempo
(
  TiempoID INT  NOT NULL,
  Fecha    DATE NOT NULL,
  Anio     INT  NOT NULL,
  Periodo  INT  NOT NULL,
  PRIMARY KEY (TiempoID)
) COMMENT 'Dimension';

ALTER TABLE Postulaciones
  ADD CONSTRAINT FK_Tiempo_TO_Postulaciones
    FOREIGN KEY (TiempoID)
    REFERENCES Tiempo (TiempoID);

ALTER TABLE Postulaciones
  ADD CONSTRAINT FK_Carrera_TO_Postulaciones
    FOREIGN KEY (CarreraID)
    REFERENCES Carrera (CarreraID);

ALTER TABLE Postulaciones
  ADD CONSTRAINT FK_Establecimiento_TO_Postulaciones
    FOREIGN KEY (EstablecimientoID)
    REFERENCES Establecimiento (EstablecimientoID);

ALTER TABLE Postulaciones
  ADD CONSTRAINT FK_Genero_TO_Postulaciones
    FOREIGN KEY (GeneroID)
    REFERENCES Genero (GeneroID);