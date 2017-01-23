-- Tuple population for the toy airline database schema.
-- Stephen J. Hegner 2011-09-09.
-- Updated 2016-01-15.

 INSERT INTO Airport VALUES ('ARN','Stockholm','Sweden',60,18);
 INSERT INTO Airport VALUES ('UME','Umeå','Sweden',67,18); 
 INSERT INTO Airport VALUES ('ORB','Örebro','Sweden',60,14); 
 INSERT INTO Airport VALUES ('GOT','Göteborg','Sweden',55,18);
 INSERT INTO Airport VALUES ('MMX','Malmö','Sweden',52,18);
 INSERT INTO Airport VALUES ('BMA','Stockholm','Sweden',52,18);

 INSERT INTO Airport VALUES ('LYN','Lyon','France',46,5);
 INSERT INTO Airport VALUES ('NCE','Nice','France',43,11);
 INSERT INTO Airport VALUES ('CDG','Paris','France',48,2);
 INSERT INTO Airport VALUES ('BOD','Bordeaux','France',44, 0);
 INSERT INTO Airport VALUES ('ORY','Paris','France',48, 2);

 INSERT INTO Airport VALUES ('JFK','New York','USA',40,-74);
 INSERT INTO Airport VALUES ('IAD','Washington','USA',39,-77);
 INSERT INTO Airport VALUES ('TUL','Tulsa','USA',36,-96);
 INSERT INTO Airport VALUES ('LAX','Los Angeles','USA',34,-118);
 INSERT INTO Airport VALUES ('BML','Berlin','USA',45,-71);

 INSERT INTO Airport VALUES ('BBI','Bhubaneswar','India',20, 85);
 INSERT INTO Airport VALUES ('BLR','Bangalore','India',12, 77);
 INSERT INTO Airport VALUES ('VNS','Varanasi','India',25, 83);

 INSERT INTO Airport VALUES ('BGO', 'Bergen','Norway', 60, 5);
 INSERT INTO Airport VALUES ('KKN', 'Kirkenes','Norway', 69, 30);
 INSERT INTO Airport VALUES ('LYR', 'Longyearbyen','Norway', 78, 16);
 INSERT INTO Airport VALUES ('TRD', 'Trondheim','Norway', 63, 10);
 INSERT INTO Airport VALUES ('GEN', 'Oslo','Norway', 60, 6);

 INSERT INTO Airport VALUES ('LPA', 'Las Palmas','Spain', 28, -15);
 INSERT INTO Airport VALUES ('PMI', 'Palma Mallorca','Spain', 39, 3);
 INSERT INTO Airport VALUES ('MAD', 'Madrid','Spain', 39, 3);

 INSERT INTO Airport VALUES ('RHO', 'Rhodes','Greece', 36, 38);
 INSERT INTO Airport VALUES ('SKG', 'Thessaloniki','Greece', 40, 22);
 INSERT INTO Airport VALUES ('CHQ', 'Chania','Greece', 35, 24);
 INSERT INTO Airport VALUES ('JNX', 'Naxos','Greece', 37, 25);

 INSERT INTO Airport VALUES ('FRA', 'Frankfurt am Main','Germany', 50, 9);
 INSERT INTO Airport VALUES ('MUC', 'München','Germany', 48, 12);
 INSERT INTO Airport VALUES ('HAM', 'Hamburg','Germany' ,54, 10);
 INSERT INTO Airport VALUES ('TXL', 'Berlin','Germany', 53, 13);
 INSERT INTO Airport VALUES ('BER', 'Berlin','Germany', 53, 13);
 INSERT INTO Airport VALUES ('SXF', 'Berlin','Germany', 53, 13);

    
 INSERT INTO Airline VALUES ('Scandinavian', 'SK','Sweden','http://www.sas.se');
 INSERT INTO Airline VALUES ('AirBiscuit', 'ZZ','Bohemia','https://www.airbiscuit.com');
 INSERT INTO Airline VALUES ('Delta', 'DL','USA','http://www.delta.com');
 INSERT INTO Airline VALUES ('PamAm', 'PN','USA','http://www.flypanam.com');
 INSERT INTO Airline VALUES ('Air France', 'AF','France','http://www.airfrance.com');
 INSERT INTO Airline VALUES ('Aigle Azur', 'ZI','France','http://www.aigle-azur.fr');
 INSERT INTO Airline VALUES ('Lufthansa', 'LH','Germany','http://www.lufthansa.com');
 INSERT INTO Airline VALUES ('Germanwings', '4U','Germany','http://www.germanwings.com');
 INSERT INTO Airline VALUES ('Linjeflyg', 'LZ','Sweden','http://www.linjeflyg.com');
 INSERT INTO Airline VALUES ('FlyNordic', 'LF','Sweden','http://www.flynordic.com');
 INSERT INTO Airline VALUES ('AirIndia',  'AI','India','http://www.airindia.com');
 INSERT INTO Airline VALUES ('Braathens SAFE',  'BU','Norway','http://www.sasbraathens.no');
 INSERT INTO Airline VALUES ('Widerøe', 'WF','Norway','http://www.wideroe.no');
 INSERT INTO Airline VALUES ('IcelandAir', 'FI','Iceland','http://www.icelandair.is');
    

 INSERT INTO Flight VALUES ('SK','0001','ARN','UME');
 INSERT INTO Flight VALUES ('SK','0002','ARN','UME');
 INSERT INTO Flight VALUES ('SK','0003','ARN','IAD');
 INSERT INTO Flight VALUES ('SK','0004','UME','ARN');
 INSERT INTO Flight VALUES ('SK','0005','UME','ARN');
 INSERT INTO Flight VALUES ('SK','0006','ARN','IAD');
 INSERT INTO Flight VALUES ('SK','0016','GOT','ARN');
 INSERT INTO Flight VALUES ('SK','0007','MMX','ARN');
 INSERT INTO Flight VALUES ('SK','0008','ARN','GOT');
 INSERT INTO Flight VALUES ('SK','0009','ARN','MMX');
 INSERT INTO Flight VALUES ('SK','0010','ARN','JFK');
 INSERT INTO Flight VALUES ('SK','0028','ARN','UME');
 INSERT INTO Flight VALUES ('SK','0034','ARN','UME');
 INSERT INTO Flight VALUES ('SK','0029','UME','ARN');
 INSERT INTO Flight VALUES ('SK','0035','UME','ARN');
 INSERT INTO Flight VALUES ('SK','0030','GOT','ARN');
 INSERT INTO Flight VALUES ('SK','0036','ARN','GOT');
 INSERT INTO Flight VALUES ('SK','0232','ARN','IAD');

 INSERT INTO Flight VALUES ('ZZ','0001','ARN','JFK');
 INSERT INTO Flight VALUES ('ZZ','0002','CDG','LYN');
 INSERT INTO Flight VALUES ('ZZ','0003','CDG','NCE');
 INSERT INTO Flight VALUES ('ZZ','0004','JFK','NCE');
 INSERT INTO Flight VALUES ('ZZ','0005','UME','ARN');
 INSERT INTO Flight VALUES ('ZZ','0006','ARN','RHO');
 INSERT INTO Flight VALUES ('ZZ','0007','ARN','SKG');
 INSERT INTO Flight VALUES ('ZZ','0008','ARN','LPA');
 INSERT INTO Flight VALUES ('ZZ','0009','CDG','LPA');
 INSERT INTO Flight VALUES ('ZZ','0010','ORY','LPA');

 INSERT INTO Flight VALUES ('DL','0001','JFK','CDG');
 INSERT INTO Flight VALUES ('DL','0002','JFK','LYN');
 INSERT INTO Flight VALUES ('DL','0003','CDG','JFK');
 INSERT INTO Flight VALUES ('DL','0004','CDG','TUL');
 INSERT INTO Flight VALUES ('DL','0005','ARN','ORB');

 INSERT INTO Flight VALUES ('AI','0001','BLR', 'CDG');

 INSERT INTO Flight VALUES ('AF','1234','CDG','LYN');
 INSERT INTO Flight VALUES ('AF','1235','LYN','CDG');
 INSERT INTO Flight VALUES ('AF','1244','ORY','LYN');
 INSERT INTO Flight VALUES ('AF','1245','LYN','ORY');
 INSERT INTO Flight VALUES ('AF','1264','LYN','NCE');
 INSERT INTO Flight VALUES ('AF','1265','NCE','LYN');
 INSERT INTO Flight VALUES ('AF','1334','CDG','NCE');
 INSERT INTO Flight VALUES ('AF','1335','NCE','CDG');
 INSERT INTO Flight VALUES ('AF','1344','ORY','NCE');
 INSERT INTO Flight VALUES ('AF','1345','NCE','ORY');

 INSERT INTO Flight VALUES ('LH','0101','FRA','CDG');
 INSERT INTO Flight VALUES ('LH','0102','FRA','ORY');
 INSERT INTO Flight VALUES ('LH','0103','FRA','LYN');
 INSERT INTO Flight VALUES ('LH','0104','FRA','NCE');
 INSERT INTO Flight VALUES ('LH','0105','FRA','BOD');
 INSERT INTO Flight VALUES ('LH','0106','TXL','CDG');
 INSERT INTO Flight VALUES ('LH','0107','CDG','TXL');
    
 INSERT INTO Flight VALUES ('4U','0100','TXL','MUC');
 INSERT INTO Flight VALUES ('4U','0101','MUC','TXL');
 INSERT INTO Flight VALUES ('4U','0102','MUC','SXF');
 INSERT INTO Flight VALUES ('4U','0103','SXF','MUC');
 INSERT INTO Flight VALUES ('4U','0104','MUC','FRA');
 INSERT INTO Flight VALUES ('4U','0105','FRA','MUC');
 INSERT INTO Flight VALUES ('4U','0106','SXF','FRA');
 INSERT INTO Flight VALUES ('4U','0107','FRA','SXF');
    

 INSERT INTO Schedule VALUES ('SK','0003', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0004', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0005', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0006', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0007', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0008', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0009', '2016-11-12', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0010', '2016-11-12', '11:58', '13:05');

 INSERT INTO Schedule VALUES ('SK','0003', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0004', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0005', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0006', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0007', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0008', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0009', '2016-11-14', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0010', '2016-11-14', '11:58', '13:05');

 INSERT INTO Schedule VALUES ('SK','0001', '2016-12-23', '08:55', '10:00');
 INSERT INTO Schedule VALUES ('SK','0002', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0003', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0004', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0005', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0006', '2016-12-23', '13:45', '16:05');
 INSERT INTO Schedule VALUES ('SK','0007', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0008', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0009', '2016-12-23', '11:58', '13:05');
 INSERT INTO Schedule VALUES ('SK','0010', '2016-12-23', '11:58', '13:05');

 INSERT INTO Schedule VALUES ('SK','0007', '2016-12-26', '11:58', '16:05');
 INSERT INTO Schedule VALUES ('SK','0008', '2016-12-26', '11:58', '16:05');
 INSERT INTO Schedule VALUES ('SK','0009', '2016-12-26', '11:58', '15:05');
 INSERT INTO Schedule VALUES ('SK','0010', '2016-12-26', '11:58', '23:05');

 INSERT INTO Schedule VALUES ('ZZ','0001', '2016-11-12', '10:00', '22:00');
 INSERT INTO Schedule VALUES ('AI','0001', '2016-11-12', '01:00', '12:45');
 INSERT INTO Schedule VALUES ('SK','0001', '2016-11-12', '08:55', '10:00');
 INSERT INTO Schedule VALUES ('SK','0002', '2016-11-12', '11:58', '13:05');

 INSERT INTO Schedule VALUES ('SK','0001', '2016-11-13', '08:55', '10:00');
 INSERT INTO Schedule VALUES ('DL','0001', '2016-11-13', '00:15', '15:05');

 INSERT INTO Schedule VALUES ('DL','0001', '2016-11-14', '00:45', '16:05');
 INSERT INTO Schedule VALUES ('SK','0001', '2016-11-14', '08:55', '10:00');
 INSERT INTO Schedule VALUES ('SK','0002', '2016-11-14', '11:58', '13:05');

 INSERT INTO Schedule VALUES ('AF','1234', '2016-12-03', '12:58', '14:05');

 INSERT INTO Schedule VALUES ('LH','0101', '2016-11-26', '15:00', '18:00');
 INSERT INTO Schedule VALUES ('LH','0102', '2016-11-26', '15:00', '18:00');
 INSERT INTO Schedule VALUES ('LH','0103', '2016-11-26', '15:00', '16:00');
    
 INSERT INTO Ticket VALUES (1, 'SK','0001', '2016-11-12', 1000);
 INSERT INTO Ticket VALUES (2, 'SK','0002', '2016-11-12', 6700);
 INSERT INTO Ticket VALUES (3, 'SK','0002', '2016-11-12', 9000);
 INSERT INTO Ticket VALUES (4, 'SK','0003', '2016-11-12', 1100);
 INSERT INTO Ticket VALUES (5, 'SK','0008', '2016-11-14', 1000);
 INSERT INTO Ticket VALUES (6, 'SK','0008', '2016-11-14', 6700);
 INSERT INTO Ticket VALUES (7, 'SK','0009', '2016-11-14', 9000);
 INSERT INTO Ticket VALUES (8, 'SK','0007', '2016-11-14', 1100);
 INSERT INTO Ticket VALUES (9, 'SK','0008', '2016-11-14', 6700);
 INSERT INTO Ticket VALUES (10, 'SK','0009', '2016-11-14', 9000);
 INSERT INTO Ticket VALUES (11, 'SK','0003', '2016-11-14', 2000);
 INSERT INTO Ticket VALUES (12, 'SK','0007', '2016-12-26', 4500);
 INSERT INTO Ticket VALUES (13, 'SK','0007', '2016-12-26', 3230);
 INSERT INTO Ticket VALUES (14, 'SK','0009', '2016-12-26', 4340);
 INSERT INTO Ticket VALUES (15, 'SK','0008', '2016-12-26', 7000);
 INSERT INTO Ticket VALUES (16, 'SK','0010', '2016-12-26', 1020);
 INSERT INTO Ticket VALUES (100,'LH','0101', '2016-11-26', 4000);
 INSERT INTO Ticket VALUES (101,'LH','0101', '2016-11-26', 10000);
 INSERT INTO Ticket VALUES (102,'LH','0102', '2016-11-26', 10000);
 INSERT INTO Ticket VALUES (103,'LH','0102', '2016-11-26', 10000);
 INSERT INTO Ticket VALUES (200,'AF','1234', '2016-12-03', 50000);
 INSERT INTO Ticket VALUES (201,'AF','1234', '2016-12-03', 50000);
