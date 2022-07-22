
ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD';

CREATE TABLE Repair_station(
Address VARCHAR2(50),
ID NUMBER(5),
Name VARCHAR2(50),
Phone NUMBER(10),
CONSTRAINT PK_STATION PRIMARY KEY(ID)

);



CREATE TABLE Engineer(
Name VARCHAR2(50),
Surname VARCHAR2(50),
ID_Card NUMBER(10),
id NUMBER(10),
HireDate DATE,
Address VARCHAR2(50),
Speciality VARCHAR2(50),
PhoneNumber NUMBER(10),
CONSTRAINT PK_ENG PRIMARY KEY(id)

);


CREATE TABLE Vehicle(
Km NUMBER(10),
Release_date DATE,
Type VARCHAR2(50),
Brand VARCHAR2(50),
Model VARCHAR2(50),
License_plate VARCHAR2(7),
Engine NUMBER(10),
Power NUMBER(10),
Check_Date DATE,
Check_Km NUMBER(10),
CONSTRAINT PK_VEHICLE PRIMARY KEY(License_plate)

);


CREATE TABLE Repair_Task_Type(
Title VARCHAR2(50),
id NUMBER(10),
Unit_Cost NUMBER(10),
Unit_Metric VARCHAR2(50),
CONSTRAINT PK_REPAIR PRIMARY KEY(id)

);

CREATE TABLE Repair_Platform(
id NUMBER(10),
Validation_Num NUMBER(10),
Station_id NUMBER(10),
Engineer_id NUMBER(10),
Photo VARCHAR2(50),
CONSTRAINT PK_REPAIR_PLAT PRIMARY KEY(id),
CONSTRAINT FK_PLAT_STATION FOREIGN KEY(Station_id) REFERENCES Repair_Station(ID),
CONSTRAINT FK_PLAT_ENGINEER FOREIGN KEY(Engineer_id) REFERENCES Engineer(id)


);

CREATE TABLE Repair_parts(
Title VARCHAR2(50),
Part_id NUMBER(10),
StockNum NUMBER(10),
Unit_Cost NUMBER(10),
RepairStationId NUMBER(10),
IsSparePart VARCHAR2(50) ,
CONSTRAINT PK_PARTS PRIMARY KEY(Part_id),
CONSTRAINT FK_PARTS_STATION FOREIGN KEY(RepairStationId) REFERENCES Repair_station(ID)
);




--creates from tables(engineer,platform)
CREATE TABLE ENG_WORKS_PLATFORM(
Mech_id NUMBER(10),
Plat_id NUMBER(10),
CONSTRAINT PK_ENG_PLAT PRIMARY KEY(Mech_id,Plat_id),
CONSTRAINT FK_MECH_ENG FOREIGN KEY(Mech_id) REFERENCES engineer(id),
CONSTRAINT FK_PLAT_PLAT FOREIGN KEY(Plat_id) REFERENCES Repair_platform(id)
);

CREATE TABLE plat_host_car(
Car_plate VARCHAR2(7),
Platform_id NUMBER(10),
DateTime DATE,
CONSTRAINT PK_HOST PRIMARY KEY(Car_plate,Platform_id),
CONSTRAINT FK_PLAT FOREIGN KEY(Platform_id) REFERENCES Repair_platform(id),
CONSTRAINT FK_VEHIC FOREIGN KEY(Car_plate) REFERENCES Vehicle(License_plate)
);



CREATE TABLE TaskExecuteVehicle(
CarId VARCHAR2(7),
TaskId NUMBER(10),
Description VARCHAR2(50),
DateTime DATE,
TaskUnits VARCHAR2(50),
UseSpareParts VARCHAR2(3),
CONSTRAINT PK_EXECUTE PRIMARY KEY(CarId,TaskId),
CONSTRAINT FK_TASK FOREIGN KEY(TaskId) REFERENCES Repair_Task_Type(id),
CONSTRAINT FK_CAR FOREIGN KEY(CarId) REFERENCES Vehicle(License_plate)
);


CREATE TABLE EngPerformTask(
MechanicId Number(10),
RepairTypeId NUMBER(10),
CONSTRAINT PK_PERFORM PRIMARY KEY(MechanicId,RepairTypeId),
CONSTRAINT FK_MECHANIC FOREIGN KEY(MechanicId) REFERENCES engineer(id),
CONSTRAINT FK_Repair_TYPE FOREIGN KEY(RepairTypeId) REFERENCES Repair_Task_Type(id)

);

