create database POSTULACIONES;

use POSTULACIONES;

create table COLEGIO(
    COD_COLEGIO int not null,
    NOMBRE varchar (100),
    COMUNA varchar(100),
    CIUDAD varchar (100),
    REGION int,
    TIPO_COLEGIO varchar(100),
    primary key(COD_COLEGIO)
);

create table ESTUDIANTE(
    RUT varchar(9) not null,
    NOMBRES varchar(100),
    APELLIDOS varchar(100),
    GENERO char(1),
    CELULAR varchar(9),
    EMAIL varchar(100),
    COD_COLEGIO int not null,
    primary key(RUT)
);

create table CARRERA(
    COD_CARRERA int not null,
    NOMBRE_CARRERA varchar(150),
    NIVEL varchar(50),
    COD_AREA int not null,
    primary key(COD_CARRERA)
);

create table AREA(
    COD_AREA int not null,
    NOMBRE varchar(500),
    primary key(COD_AREA)
);

create table POSTULACION(
    RUT varchar(9) not null,
    COD_CARRERA int not null,
    FECHA date not null,
    PREFERENCIA int,
    primary key(RUT, COD_CARRERA)
);

alter table ESTUDIANTE add constraint FK_ESTUDIANTE_CARRERA foreign key(COD_COLEGIO)
references COLEGIO(COD_COLEGIO)
on delete no action on update no action;

alter table CARRERA add constraint FK_CARRERA_AREA foreign key(COD_AREA)
references AREA(COD_AREA)
on delete no action on update no action;

alter table POSTULACION add constraint FK_POSTULACION_ESTUDIANTE foreign key(RUT)
references ESTUDIANTE(RUT)
on delete no action on update no action;

alter table POSTULACION add constraint FK_POSTULACION_AREA foreign key(COD_CARRERA)
references CARRERA(COD_CARRERA)
on delete no action on update no action;
