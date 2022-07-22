
--2o part



--FIRST OF ALL,WE SHOULD INSERT ONE STATION.
INSERT INTO Repair_Station VALUES('Arximidous',1,'STATION 1',6987878787);

SELECT * FROM Repair_station;

--AFTER , WE INSERT  5 PLATFORMS WITHOUT CONSTRAINT FOR ENGINEER AND WITHOUT PHOTO.
INSERT INTO Repair_Platform VALUES(1,111,1,null,null);
INSERT INTO Repair_Platform VALUES(2,112,1,null,null);
INSERT INTO Repair_Platform VALUES(3,113,1,null,null);
INSERT INTO Repair_Platform VALUES(4,114,1,null,null);
INSERT INTO Repair_Platform VALUES(5,115,1,null,null);

select * FROM Repair_platform;



--We insert 10 engineer without problems because this table do not have foreign constraint
INSERT INTO engineer VALUES('Nikos','Karapiperis',121,1,'1986-04-05','Antifanous 6','Mechanic',6988888888);
INSERT INTO engineer VALUES('Bill','Tomas',122,2,'1999-04-07','Sofias 6','Electronic',6988888867);
INSERT INTO engineer VALUES('John','Salas',123,3,'1983-02-08','Gourna 8','Painter',6988888877);
INSERT INTO engineer VALUES('Nick','Maras',124,4,'1981-01-05','Patision 12','Mechanic',6988888899);
INSERT INTO engineer VALUES('Ilias','Tolos',125,5,'1980-07-09','Alkaiou 45','Mechanic',6988888800);
INSERT INTO engineer VALUES('Ilias','Vasiliou',126,6,'1986-03-03','Pratinou 23','Painter',6988888822);
INSERT INTO engineer VALUES('George','Vasiliou',127,7,'1995-01-10','Arximidous 66','Mechanic',6988888833);
INSERT INTO engineer VALUES('Spiros','Papa',128,8,'2000-04-11','Antifanous 66','Electronic',6988888844);
INSERT INTO engineer VALUES('Nick','Thomas',120,9,'2001-04-05','Antifanous 21','Electronic',6988888855);
INSERT INTO engineer VALUES('Bill','Anestis',129,10,'2002-04-05','Patision 7','Tester',6988888866);

SELECT * FROM engineer;



--set the supervisors because now there are engineers. 
UPDATE Repair_Platform SET engineer_id=1 where id=1;
UPDATE Repair_Platform SET engineer_id=1 where id=5;
UPDATE Repair_Platform SET engineer_id=2 where id=2;
UPDATE Repair_Platform SET engineer_id=10 where id=3;
UPDATE Repair_Platform SET engineer_id=5 where id=4;

SELECT * FROM repair_platform;


--We insert 10 Vehicles with Specific Id(Licence_plate). This is the Primary Key.
INSERT INTO vehicle VALUES(20000,'2007-04-05','IX','Opel','A156','Mix2017',1800,150,'2018-03-05',29000);
INSERT INTO vehicle VALUES(25000,'2009-06-08','Moto','Honda','A515','Mik1111',1900,150,'2016-02-01',31000);
INSERT INTO vehicle VALUES(19000,'2001-04-08','IX','Nissan','G015','Mit1212',1700,150,'2018-03-01',30000);
INSERT INTO vehicle VALUES(20000,'2003-04-07','Moto','Astra','G215','Mit0000',1800,150,'2020-03-05',28000);
INSERT INTO vehicle VALUES(22300,'2000-04-05','IX','Opel','A015','Tix3333',1100,150,'2018-01-07',30000);
INSERT INTO vehicle VALUES(27780,'2002-04-04','IX','Nissan','B015','Mit2019',1200,150,'2019-01-02',60000);
INSERT INTO vehicle VALUES(70000,'2010-07-09','IX','Opel','A178','Mxx2018',1300,150,'2013-03-06',80000);
INSERT INTO vehicle VALUES(60000,'2020-03-09','IX','Opel','B112','Mii2055',1700,150,'2022-03-05',50000);
INSERT INTO vehicle VALUES(40000,'2021-02-07','IX','Opel','B111','Anm2003',1600,150,'2022-02-04',45000);
INSERT INTO vehicle VALUES(20000,'1999-01-06','IX','Opel','A111','Mix2020',1900,150,'2020-05-08',26000);

SELECT * FROM vehicle;


--We insert 5 Repair Types with Specific Id(id). This is the Primary Key.
INSERT INTO Repair_Task_Type VALUES('Check Engine',1,30,'1 Hour');
INSERT INTO Repair_Task_Type VALUES('Replace Gear System',2,50,'1 Hour');
INSERT INTO Repair_Task_Type VALUES('Door Paint',3,40,'No Unit');
INSERT INTO Repair_Task_Type VALUES('Test Drive',4,10,'No Unit');
INSERT INTO Repair_Task_Type VALUES('A/C Cleaning',5,30,'1 Hour');

SELECT * FROM Repair_Task_Type;


--Eisagoume ston pinaka o opoios dimiourgithike apo tous pinakes Repair_Task_Type KAI vehicle , poia ergasia ektelestike se poio oxima meso ton ksenon kleidion
--O pinakas autos exei dimiourgithei eksaitias tis sxesis n:m , h opoia mas dinei nea sxesi(TaskExecuteVehicle)
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',3,'Correct Dent In Door','2022-04-08','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',4,'Correct Dent In Door','2021-04-09','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',5,'Correct Dent In Door','2021-04-07','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',6,'Correct Dent In Door','2021-06-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',7,'Correct Dent In Door','2021-05-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',8,'Correct Dent In Door','2021-01-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',0,'Correct Dent In Door','2021-02-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',11,'Correct Dent In Door','2021-04-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',12,'Correct Dent In Door','2020-04-05','No Unit','Yes');
INSERT INTO TaskExecuteVehicle VALUES('Mix2017',33,'Correct Dent In Door','2022-04-05','No Unit','Yes');


SELECT * FROM TaskExecuteVehicle;





--We insert 10 Repair Parts with Specific Id(Part_id). This is the Primary Key.
INSERT INTO Repair_parts VALUES('Spark Plug replacement',000,17,50,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Oil 5W30 1L',001,50,8,1,'ANALOSIMO');
INSERT INTO Repair_parts VALUES('Oil 10W40 4L',002,10,30,1,'ANALOSIMO');
INSERT INTO Repair_parts VALUES('Gear System',003,5,50,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Steering Wheel',004,34,100,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Blue Paint AURIS07',005,12,50,1,'ANALOSIMO');
INSERT INTO Repair_parts VALUES('Injection Pump SetOf4',006,19,60,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Air Filter',007,15,12,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Rear Disc Brake',008,0,160,1,'ANTALLAKTIKO');
INSERT INTO Repair_parts VALUES('Front Disc Brake',009,30,155,1,'ANTALLAKTIKO');

SELECT * FROM Repair_parts;
