CREATE TABLE Cliente
(
Nif Varchar2(10),
Nombre Varchar2(15),
Direccion Varchar2(15),
Telefono NUMBER(10),
CONSTRAINT PK_Cliente PRIMARY KEY (Nif)
);

CREATE TABLE ModeloDormitorio
(
Cod Varchar2(10),
CONSTRAINT PK_ModeloDormitorio PRIMARY KEY (Cod)
);

CREATE TABLE Montador
(
Nif Varchar2(10),
Nombre Varchar2(15),
Direccion Varchar2(15),
Telefono Number(10),
CONSTRAINT PK_Montador PRIMARY KEY (Nif)
);

CREATE TABLE Compra
(
Nif_c Varchar2(10),
Modelo Varchar2(10),
FechaCompra DATE,
CONSTRAINT PK_Compra PRIMARY KEY (Nif_c,Modelo,FechaCompra),
CONSTRAINT FK1_Compra FOREIGN KEY (Nif_c) REFERENCES Cliente(Nif),
CONSTRAINT FK2_Compra FOREIGN KEY (Modelo) REFERENCES ModeloDormitorio(Cod)
);

CREATE TABLE Monta
(
Modelo Varchar2(10),
Nif_m Varchar2(10),
FechaMontaje DATE,
CONSTRAINT PK_Monta PRIMARY KEY (Modelo,Nif_m),
CONSTRAINT FK1_Monta FOREIGN KEY (Modelo) REFERENCES ModeloDormitorio(cod),
CONSTRAINT FK2_Monta FOREIGN KEY (Nif_m) REFERENCES Montador(Nif)
);