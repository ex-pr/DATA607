CREATE DATABASE delays;
USE delays;

DROP TABLE IF EXISTS arrival;

CREATE TABLE `arrival` (
  `airline` varchar(25) NOT NULL,
  `status` varchar(45) NOT NULL,
  `Los Angeles` int,
  `Phoenix` int,
  `San Diego` int,
  `San Francisco` int,
  `Seattle` int
);

INSERT INTO arrival
VALUES 
('ALASKA', 'on time', 497,221,212,503,1841),
('', 'delayed',62,12,20,102,305),
('','',NULL,NULL,NULL,NULL,NULL),
('AMWEST', 'on time', 694,4840,383,320,201),
('', 'delayed',117,415,65,129,61);
