# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.31)
# Database: szallashu-backend
# Generation Time: 2022-08-02 16:56:32 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table companies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `companyId` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) NOT NULL DEFAULT '',
  `companyRegistrationNumber` varchar(11) NOT NULL DEFAULT '',
  `companyFoundationDate` date DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `zipCode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `streetAddress` varchar(255) DEFAULT NULL,
  `latitude` double(8,5) DEFAULT NULL,
  `longitude` double(8,5) DEFAULT NULL,
  `companyOwner` varchar(255) DEFAULT NULL,
  `employees` int(10) unsigned DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `active` enum('TRUE','FALSE') NOT NULL DEFAULT 'FALSE',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `registerAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `companyRegistrationNumber` (`companyRegistrationNumber`,`country`),
  UNIQUE KEY `email` (`email`),
  KEY `companyFoundationDate` (`companyFoundationDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;

INSERT INTO `companies` (`companyId`, `companyName`, `companyRegistrationNumber`, `companyFoundationDate`, `country`, `zipCode`, `city`, `streetAddress`, `latitude`, `longitude`, `companyOwner`, `employees`, `activity`, `active`, `email`, `password`, `registerAt`)
VALUES
	(1,'Mauris PC1','177874-5578','1990-05-01','Belarus','71137','Villa Verde','P.O. Box 391, 1457 Sed St.',50.67063,-75.37700,'Travis Elliott',11,'Car','FALSE','Donec.sollicitudin@Duisacarcu.com','felis','2022-08-01 16:32:19'),
	(2,'Magna Lorem Inc.','896098-0855','1991-10-22','Philippines','60934','Bahawalnagar','6753 Sit Street',4.69671,-101.06612,'Hamilton Pearson',62,'Building Industry','FALSE','metus.facilisis@Proinsedturpis.ca','sem,','2022-08-01 16:32:19'),
	(3,'Egestas Hendrerit Neque LLP','615308-4733','1994-06-10','Western Sahara','442580','Lagundo/Algund','P.O. Box 857, 1455 Nullam Street',89.75893,-125.99941,'Todd Douglas',230,'Building Industry','TRUE','lacus.Quisque@posuerecubiliaCurae.org','vestibulum','2022-08-01 16:32:19'),
	(4,'Ipsum Ac Mi Company','609476-5515','1984-11-28','Northern Mariana Islands','64967','Lonquimay','Ap #191-7809 Nec Ave',71.41273,-64.46302,'Hayes Harper',491,'Growing Plants','FALSE','convallis.dolor@perinceptos.ca','nulla.','2022-08-01 16:32:19'),
	(5,'Nibh Phasellus Nulla Consulting','875175-2307','2013-12-12','French Guiana','61307','Pelluhue','P.O. Box 371, 6261 Non, St.',-17.63940,55.73754,'Norman Walls',401,'IT','TRUE','massa.non.ante@auctor.co.uk','nec','2022-08-01 16:32:19'),
	(6,'Ac Corp.','047597-1263','1990-05-12','United Arab Emirates','6648','Flawinne','481-9974 Vestibulum Road',81.44500,-103.01562,'Jerry Herman',399,'Car','TRUE','ornare.sagittis@orciadipiscing.org','ornare,','2022-08-01 16:32:19'),
	(7,'Ut Molestie Company','387343-2466','2019-11-08','Algeria','DB15 0TF','Lacombe County','Ap #781-3660 Leo. Av.',-11.06026,-150.11469,'Nicholas Stuart',177,'Building Industry','TRUE','Donec@Etiam.com','nonummy','2022-08-01 16:32:19'),
	(8,'Justo Eu Arcu Inc.','495058-7198','2015-07-02','Denmark','2116','Selkirk','Ap #385-8575 Nullam Rd.',9.44015,-126.00997,'Amery Huber',326,'Food','FALSE','mollis.dui.in@utpharetrased.co.uk','vulputate','2022-08-01 16:32:19'),
	(9,'Eu Institute','496281-9175','2000-06-11','Albania','09469','Pittsburgh','P.O. Box 924, 1815 Elit. Av.',-83.85754,21.33176,'Gage Duncan',99,'Food','TRUE','Nunc@ac.org','Sed','2022-08-01 16:32:19'),
	(10,'Rutrum Consulting','404429-0841','1995-12-02','Korea, North','528938','Kamarhati','Ap #732-2307 Augue St.',86.50586,-94.03420,'Hashim Curry',132,'Growing Plants','FALSE','quis.turpis@conubianostra.org','congue.','2022-08-01 16:32:19'),
	(11,'Dapibus Quam Limited','874092-9669','2014-09-14','Nauru','Z5 0NG','Laon','150-2314 Dis Rd.',-61.57830,-113.53350,'Paki Elliott',439,'Building Industry','FALSE','non.nisi@et.org','dolor','2022-08-01 16:32:19'),
	(12,'Ac Institute','147153-5631','2020-06-25','Ecuador','8918','Westmount','757-1405 Tempor, Rd.',-29.21539,80.31999,'Nathaniel Summers',202,'Growing Plants','TRUE','ullamcorper.magna@massaQuisque.ca','In','2022-08-01 16:32:19'),
	(13,'Adipiscing Fringilla Consulting','943211-1384','2008-07-01','Armenia','V9N 3K8','La Cisterna','389-4506 Malesuada Rd.',-40.90990,0.55558,'Gray Nicholson',250,'Growing Plants','FALSE','amet.massa@Curabitur.co.uk','lorem','2022-08-01 16:32:19'),
	(14,'Urna Et Arcu Incorporated','296422-0780','1980-03-13','Falkland Islands','51-352','Genk','Ap #126-6407 Ullamcorper, St.',-48.30411,166.02567,'Joel Bartlett',48,'Growing Plants','TRUE','egestas.nunc@lobortis.net','enim','2022-08-01 16:32:19'),
	(15,'Nam Porttitor Scelerisque Industries','832132-1518','1982-04-13','Ireland','926236','Remscheid','P.O. Box 648, 9240 Suspendisse St.',34.05535,71.44296,'Cain Coleman',117,'Car','TRUE','quam.Curabitur.vel@Vivamusnibhdolor.co.uk','Pellentesque','2022-08-01 16:32:19'),
	(16,'Mauris PC','038700-0656','1989-02-16','Dominica','57717','Norrköping','Ap #859-4029 Vivamus Av.',-79.15152,-16.95243,'Joshua Farley',352,'Building Industry','TRUE','lacinia.Sed@mauriseu.ca','faucibus','2022-08-01 16:32:19'),
	(17,'Rhoncus Nullam Velit LLP','113075-2072','1977-01-29','Lesotho','98940','Ipís','3927 Adipiscing Av.',-5.63582,156.31194,'Grady Brady',310,'Car','TRUE','commodo@conguea.com','adipiscing','2022-08-01 16:32:19'),
	(18,'Sagittis Placerat PC','897659-4542','2000-07-27','Marshall Islands','5625','Dokkum','1405 Mauris St.',-39.51426,58.90849,'Hoyt Sparks',134,'Car','TRUE','in.consequat@tellusidnunc.net','amet','2022-08-01 16:32:19'),
	(19,'Ligula Aliquam Erat PC','349714-9892','1998-04-19','Sri Lanka','18789-978','Kalat','9174 Morbi Street',66.41582,41.43761,'Jamal Miller',352,'IT','FALSE','Cras.dolor@egestashendrerit.edu','magna.','2022-08-01 16:32:19'),
	(20,'Enim Consequat Corporation','468296-7726','1993-11-06','Bosnia and Herzegovina','25017','Kassel','207-8810 Eleifend Street',18.59296,169.04322,'Blake Armstrong',495,'Car','FALSE','facilisi.Sed.neque@Cras.ca','sodales','2022-08-01 16:32:19'),
	(21,'Vulputate Mauris Limited','015506-0312','1978-03-28','Czech Republic','92256','Bath','P.O. Box 593, 1211 Enim Rd.',-69.00851,-146.53661,'Griffin Mcgowan',216,'Building Industry','FALSE','In@erat.org','justo.','2022-08-01 16:32:19'),
	(22,'Aliquam Enim Corporation','298024-3410','1997-04-15','Finland','40134-63707','Arbre','P.O. Box 812, 6627 Ridiculus Rd.',33.13149,113.64074,'Ralph Everett',94,'Building Industry','TRUE','Nulla@odio.co.uk','risus','2022-08-01 16:32:19'),
	(23,'Ac Consulting','213715-0500','1994-05-08','Norway','27343','Maransart','Ap #733-9569 Tempor Street',53.31115,-122.27091,'Hiram Jimenez',441,'Growing Plants','TRUE','tortor.dictum.eu@Integer.co.uk','eleifend.','2022-08-01 16:32:19'),
	(24,'Aliquet Phasellus Foundation','299975-9497','2016-07-19','Saint Lucia','94634','Denderbelle','P.O. Box 350, 5648 Rutrum. Av.',-19.41137,63.36240,'Ezra Garrison',442,'IT','TRUE','aliquet.molestie@dolor.edu','lectus','2022-08-01 16:32:19'),
	(25,'Vel Lectus Consulting','284240-1461','1980-07-23','Bermuda','069530','Ingelheim','868-3049 Aliquam Ave',-69.10617,-39.25967,'Cain Colon',388,'Growing Plants','TRUE','vulputate@odioNaminterdum.org','Aliquam','2022-08-01 16:32:19'),
	(26,'Diam Lorem Auctor Limited','737022-2007','2014-08-06','Czech Republic','03025','Retiro','115-4328 Mollis. Avenue',25.26154,88.27236,'Lucian Guthrie',55,'Car','TRUE','iaculis.odio@risusodioauctor.org','felis.','2022-08-01 16:32:19'),
	(27,'Fusce Aliquet LLC','505774-5464','2012-07-07','French Guiana','56191','Sambreville','P.O. Box 611, 2079 A Street',-45.02808,-32.71053,'Gray Elliott',232,'Building Industry','TRUE','Duis.a.mi@faucibus.org','accumsan','2022-08-01 16:32:19'),
	(28,'Duis Risus Odio Associates','664171-0568','1981-07-29','Martinique','42584','Salamanca','621-155 Non Rd.',-56.14818,-23.17769,'Justin Deleon',229,'Car','FALSE','rhoncus.Proin@nullaatsem.org','id','2022-08-01 16:32:19'),
	(29,'Mattis Ornare Incorporated','644302-8698','1976-06-18','Macao','492928','Leipzig','Ap #418-6201 Aliquam Av.',-39.22581,42.64547,'Kareem Freeman',346,'Growing Plants','FALSE','commodo@mauris.com','lacus.','2022-08-01 16:32:19'),
	(30,'Nisl Corp.','446969-7454','1979-09-25','China','18662','Znamensk','527-6157 Feugiat St.',-71.06829,-7.76610,'Philip Garcia',405,'Car','FALSE','faucibus@nibhQuisque.net','enim.','2022-08-01 16:32:19'),
	(31,'Ligula Aenean Gravida Consulting','165190-5026','1977-02-06','Suriname','51530','Brighton','528-2561 Morbi Ave',20.87619,37.10334,'Rooney Gardner',101,'Building Industry','TRUE','risus.Duis.a@malesuadafames.ca','urna.','2022-08-01 16:32:19'),
	(32,'Cras Sed Institute','793259-0073','2018-10-28','Tonga','Z8134','Sitapur','976-2786 Neque Ave',-78.81951,102.88379,'Lucius Miller',435,'Growing Plants','FALSE','porttitor.scelerisque.neque@lectusCum.edu','Nunc','2022-08-01 16:32:19'),
	(33,'Nibh Ltd','609207-8762','2007-11-21','Kiribati','T49 8AU','Chimbarongo','829-2022 Dis Ave',-46.72476,147.20419,'Gannon Park',320,'Building Industry','FALSE','in.faucibus@vulputate.net','ipsum.','2022-08-01 16:32:19'),
	(34,'Curae; Phasellus Limited','308488-6708','2009-05-22','Kyrgyzstan','MX2C 2DE','Ebenthal in Kärnten','703-8299 Tellus. St.',55.56007,57.54254,'Levi Vance',25,'Building Industry','FALSE','cursus.et.eros@urnaNuncquis.org','amet','2022-08-01 16:32:19'),
	(35,'Nec Diam PC','384120-5713','1989-06-14','Jersey','Z5716','Ciudad Obregón','P.O. Box 671, 5515 Ornare St.',50.92743,-127.58284,'Neil Hampton',62,'Car','TRUE','magna.tellus@Quisquetinciduntpede.edu','Integer','2022-08-01 16:32:19'),
	(36,'Sem Egestas Blandit Foundation','298751-6321','1976-09-20','Congo, the Democratic Republic of the','L0Z 4Y2','Alcalá de Henares','Ap #589-6402 In Av.',-35.61260,-132.46325,'Steel Watkins',291,'Growing Plants','FALSE','dictum@necleo.net','urna','2022-08-01 16:32:19'),
	(37,'Enim Foundation','479882-8747','2017-02-11','Central African Republic','E4T 4W7','Tonk','P.O. Box 250, 6935 Lorem, St.',71.15153,-22.73678,'Oleg Walter',303,'Growing Plants','FALSE','montes.nascetur@mattisvelit.com','eget,','2022-08-01 16:32:19'),
	(38,'Orci Company','193154-2755','2004-12-25','Singapore','RE42 1LB','Madrid','944-3039 Consectetuer Rd.',-17.89947,177.50542,'Hunter Walls',319,'Food','TRUE','Suspendisse.aliquet.molestie@utcursus.com','at','2022-08-01 16:32:19'),
	(39,'Nisi Magna Industries','458912-8406','1995-05-12','Lithuania','C88 1SA','Bonnyrigg','540-4734 Nisi St.',-40.42055,126.40650,'Baker Stephenson',321,'Food','TRUE','mattis.semper.dui@velit.co.uk','urna','2022-08-01 16:32:19'),
	(40,'In At Pede Ltd','399639-6861','2007-05-19','Norway','46738','Gorbea','Ap #494-1350 Orci, Rd.',-44.48784,21.20729,'Bradley Small',474,'Building Industry','TRUE','Nam.porttitor@lacusUt.com','sodales','2022-08-01 16:32:19'),
	(41,'Bibendum Ullamcorper Duis LLP','697656-2709','2012-05-07','Armenia','4421','Zona Bananera','P.O. Box 798, 7239 Ligula. St.',-26.71934,136.00369,'Aidan Ortiz',204,'Growing Plants','FALSE','Nunc.quis.arcu@anunc.org','arcu.','2022-08-01 16:32:19'),
	(42,'Orci Phasellus LLP','862779-8948','2019-02-06','Guinea-Bissau','60410','Springfield','Ap #759-3004 Eu, Ave',29.01183,-112.70922,'Camden Neal',191,'Building Industry','TRUE','eu@sed.ca','lacus.','2022-08-01 16:32:19'),
	(43,'Etiam Laoreet Libero PC','505947-1119','1980-02-29','Isle of Man','2940','Fort McPherson','Ap #205-6670 Lobortis Street',64.29502,-9.12611,'Hilel Hays',98,'Growing Plants','TRUE','mauris@Crasvehiculaaliquet.edu','pharetra','2022-08-01 16:32:19'),
	(44,'Congue Elit Sed PC','054324-8066','1981-12-22','Curaçao','37939','Belo Horizonte','6105 Non Av.',14.90896,43.65768,'Walter Riggs',338,'Growing Plants','FALSE','imperdiet.nec@velsapien.ca','in','2022-08-01 16:32:19'),
	(45,'Tincidunt Congue Turpis Corporation','665763-8158','2017-12-18','Hong Kong','291325','Aieta','P.O. Box 673, 7687 Dui St.',36.76340,17.96623,'Paul Lancaster',112,'Growing Plants','TRUE','natoque.penatibus@nisl.ca','quis','2022-08-01 16:32:19'),
	(46,'Netus Et Malesuada Corporation','348579-3487','2001-12-06','Burkina Faso','1174','Wagga Wagga','319-2330 Lacinia St.',34.72568,167.76303,'Wayne Tucker',369,'Car','TRUE','eu.tellus.Phasellus@Quisquefringilla.net','orci','2022-08-01 16:32:19'),
	(47,'Vehicula Pellentesque Corp.','809126-6471','1980-10-06','Dominica','1028','Mainz','788-8720 Velit Street',-86.07504,70.40259,'Samuel Le',453,'Building Industry','FALSE','Donec@tellusAeneanegestas.edu','lacus.','2022-08-01 16:32:19'),
	(48,'Ante Bibendum Ullamcorper Foundation','952209-0514','1987-04-09','Jersey','984637','Bouwel','P.O. Box 863, 9246 Interdum. Avenue',76.39694,34.35133,'Aristotle Noble',282,'Growing Plants','TRUE','Fusce.dolor@mauriselitdictum.edu','aliquam','2022-08-01 16:32:19'),
	(49,'Mauris Ipsum Inc.','229141-4403','1999-09-02','Laos','Z1900','Villers-sur-Semois','7076 Et Av.',-55.29531,-85.93836,'Phillip Erickson',3,'Growing Plants','FALSE','augue.malesuada.malesuada@sodalesMauris.co.uk','magna.','2022-08-01 16:32:19'),
	(50,'Sit Amet Consectetuer Inc.','229482-3634','1977-12-19','Moldova','5738','Ereğli','Ap #320-4007 Mi Avenue',-64.51829,-165.12548,'Uriel Blair',99,'Car','FALSE','nibh@diamluctus.edu','eget,','2022-08-01 16:32:19'),
	(51,'Accumsan Laoreet Ipsum LLP','685555-2490','2000-07-31','Mauritania','19417','Galzignano Terme','617-2164 Sem Rd.',16.83673,29.97678,'Alec Best',308,'Food','FALSE','ut@loremvehicula.net','nec','2022-08-01 16:32:19'),
	(52,'Ut Erat Sed LLC','616405-8320','1981-12-01','Barbados','5855','General Escobedo','7817 Mauris Road',-10.94425,78.59853,'Brett Vance',43,'Building Industry','TRUE','tellus.faucibus.leo@Donecnibh.com','cursus','2022-08-01 16:32:19'),
	(53,'Diam Proin Limited','043851-7658','1997-12-28','France','WO9J 9RO','Reno','P.O. Box 229, 7505 Orci St.',87.77386,168.01604,'Vernon Harris',56,'Building Industry','TRUE','sem.Nulla.interdum@luctusfelis.org','Etiam','2022-08-01 16:32:19'),
	(54,'Non Sapien Industries','592842-3614','1993-11-14','Reunion','8630 PX','Blankenberge','P.O. Box 919, 7986 Consequat Ave',76.44835,99.70048,'Cole Hopper',72,'IT','TRUE','metus.Aliquam.erat@ametrisusDonec.co.uk','luctus,','2022-08-01 16:32:19'),
	(55,'Feugiat Metus Sit Ltd','296701-2515','1976-10-31','Sweden','40323','Llanquihue','Ap #486-6806 Ornare Rd.',11.36357,8.23815,'Colton Stein',281,'Car','FALSE','Donec@acsemut.co.uk','parturient','2022-08-01 16:32:19'),
	(56,'Et Euismod Et Consulting','934575-2878','2019-02-21','Curaçao','55507','Warminster','Ap #974-3390 Suspendisse Avenue',-58.95948,29.22972,'Demetrius Holloway',396,'Food','FALSE','Proin.nisl.sem@mattis.ca','primis','2022-08-01 16:32:19'),
	(57,'Mollis PC','212117-5679','1989-02-17','Albania','2938','Jackson','Ap #348-2018 Lectus Rd.',-51.36397,-149.81456,'Eaton Pennington',397,'Building Industry','TRUE','vitae.erat@sapien.org','egestas,','2022-08-01 16:32:19'),
	(58,'Aliquet Molestie Tellus Company','857403-6045','1998-11-20','Swaziland','8046','Eisenhüttenstadt','P.O. Box 303, 3224 Vitae Rd.',17.36283,-10.46160,'Emmanuel Bishop',467,'Growing Plants','TRUE','Etiam@ullamcorperviverraMaecenas.com','nunc.','2022-08-01 16:32:19'),
	(59,'Odio Semper Cursus Limited','598188-9735','2014-11-13','Spain','83062','Stroitel','974-1180 Cum Road',59.95113,51.24992,'Timon Hatfield',130,'Car','FALSE','ipsum@nisiMauris.edu','sem','2022-08-01 16:32:19'),
	(60,'Sit PC','496815-6002','2002-03-12','Heard Island and Mcdonald Islands','01452','Villers-Poterie','P.O. Box 880, 9209 Volutpat St.',78.58619,-139.04453,'Timothy Levy',58,'Building Industry','FALSE','Donec.tincidunt.Donec@Nullamut.ca','Suspendisse','2022-08-01 16:32:19'),
	(61,'Urna Suscipit Nonummy Consulting','436989-3856','2010-05-08','Kuwait','54468','Falciano del Massico','527-4117 Nisi St.',85.66114,128.91869,'Josiah Dunn',348,'Food','FALSE','Quisque@semmollis.com','pharetra,','2022-08-01 16:32:19'),
	(62,'Posuere Cubilia Curae; Corp.','987019-0098','2009-05-01','Cuba','71-267','Plymouth','6625 Orci. Av.',-76.55281,157.25754,'Joshua Roth',364,'Food','TRUE','Sed.nulla.ante@elitdictum.org','risus.','2022-08-01 16:32:19'),
	(63,'Proin Non Massa Industries','844094-8498','1981-09-07','Grenada','40306','Bhind','311-244 Nullam Ave',-33.48850,-76.95441,'Aquila Campbell',128,'Car','FALSE','quis@quisarcuvel.com','fames','2022-08-01 16:32:19'),
	(64,'Nam Porttitor Scelerisque Incorporated','529736-5081','1985-07-31','Mali','2516','Tiltil','2838 Non St.',-83.87990,-160.58447,'Micah Kim',82,'Growing Plants','FALSE','dignissim.magna@Maurisnondui.ca','lorem,','2022-08-01 16:32:19'),
	(65,'Dui Semper Associates','686201-0441','1986-03-20','Turkmenistan','60112','Zandvoorde','908-9132 Mi St.',18.87049,-5.20058,'Chandler Vasquez',425,'Building Industry','FALSE','magnis.dis.parturient@enim.net','vulputate','2022-08-01 16:32:19'),
	(66,'Lectus Company','148952-0740','2004-03-05','Botswana','93877','Bonnyrigg','Ap #851-5106 Risus. Avenue',-72.44128,-167.34157,'Leo Hartman',327,'IT','TRUE','vitae@duiquisaccumsan.edu','tortor','2022-08-01 16:32:19'),
	(67,'Libero Institute','034397-9407','1976-01-15','Virgin Islands, United States','42765','Morinville','413-8544 Enim. Road',-82.53925,75.97331,'Berk Jacobs',47,'IT','FALSE','Nulla.tempor.augue@litoratorquent.net','non','2022-08-01 16:32:19'),
	(68,'Ac Nulla Corp.','086707-9717','1997-02-26','Kyrgyzstan','51711','Colledimacine','3553 Elementum Avenue',69.52146,-66.08975,'Zeus Crawford',458,'IT','FALSE','erat.vitae.risus@Craseutellus.edu','Morbi','2022-08-01 16:32:19'),
	(69,'Sit Amet Metus PC','636578-3247','1975-08-06','Turkey','RA5 1HG','Taber','P.O. Box 885, 6937 Aliquet Road',-75.48027,-107.60812,'Dieter Vaughn',12,'Food','TRUE','purus.in@pellentesque.org','at,','2022-08-01 16:32:19'),
	(70,'Nulla Facilisi LLP','548134-2904','1999-02-19','Northern Mariana Islands','67111','Requínoa','1667 Bibendum Ave',48.60493,-174.39938,'Jackson Baird',273,'Growing Plants','TRUE','dui@aliquam.edu','arcu.','2022-08-01 16:32:19'),
	(71,'Integer Sem Consulting','172914-2701','2016-03-10','Libya','17008','Llanquihue','815-4103 Ac, Street',-37.44374,-171.15375,'Harlan Ferrell',251,'Car','TRUE','eros.nec.tellus@Etiamgravida.net','torquent','2022-08-01 16:32:19'),
	(72,'Fermentum Arcu Vestibulum PC','296427-5461','2016-04-06','Tajikistan','413156','Rostock','P.O. Box 667, 6377 Egestas Av.',53.41835,-4.23415,'Adam Cole',19,'Car','TRUE','elit.Nulla@nisiAenean.org','penatibus','2022-08-01 16:32:19'),
	(73,'Justo Foundation','357840-0222','1984-11-02','Niger','353691','Puerto Colombia','4289 Eu Rd.',-9.45301,60.35998,'Gavin Powell',341,'IT','FALSE','quam.a.felis@bibendum.net','facilisis.','2022-08-01 16:32:19'),
	(74,'Hendrerit A Arcu Inc.','148044-0179','2006-09-21','Austria','16413','Freirina','291-5391 Mi Road',-35.06963,-103.10451,'Sebastian Mccall',485,'Building Industry','FALSE','diam.Sed.diam@dictum.edu','augue','2022-08-01 16:32:19'),
	(75,'Cursus Consulting','976892-8765','1994-09-08','Mexico','Z6686','Camponogara','Ap #249-9275 Mi Road',55.19939,38.59427,'Jonas Burt',331,'Building Industry','TRUE','adipiscing.elit@aptenttacitisociosqu.ca','pede.','2022-08-01 16:32:19'),
	(76,'Eu Company','319945-3329','1994-09-25','Nigeria','51845','Siquirres','P.O. Box 474, 4246 Phasellus Avenue',1.85769,121.76172,'Thomas Manning',281,'IT','FALSE','Nullam.enim@nec.net','erat','2022-08-01 16:32:19'),
	(77,'Fusce Feugiat Lorem Industries','343080-5907','1999-05-12','Uruguay','51417','Surabaya','854-2043 Facilisis St.',35.16104,-59.11706,'Cullen Lynch',28,'Building Industry','FALSE','tempor.lorem@Etiambibendumfermentum.org','ullamcorper','2022-08-01 16:32:19'),
	(78,'Tortor PC','125087-8269','2016-11-04','Equatorial Guinea','73642','Meeuwen-Gruitrode','P.O. Box 188, 2095 Turpis Avenue',81.66685,-132.95289,'Connor Barrera',366,'Car','FALSE','leo.elementum.sem@metus.ca','felis,','2022-08-01 16:32:19'),
	(79,'Et Ultrices Posuere Company','659366-9846','2002-03-12','Estonia','12365','Sudhanoti','6336 Risus. Rd.',84.48759,24.76425,'Ahmed Calhoun',90,'Building Industry','TRUE','risus@sociis.net','faucibus','2022-08-01 16:32:19'),
	(80,'Euismod Ltd','505754-2507','1981-03-26','Papua New Guinea','85892','Joondalup','Ap #285-6662 Non Road',-48.42863,-112.47054,'Emmanuel Perez',134,'Growing Plants','FALSE','Cum.sociis@Duis.co.uk','felis,','2022-08-01 16:32:19'),
	(81,'Donec Company','905581-3969','1998-01-23','Lebanon','Z8653','Bihain','P.O. Box 952, 5590 Accumsan Rd.',23.31353,-148.37050,'Lev Simon',184,'Building Industry','FALSE','Proin@molestiein.edu','lacinia','2022-08-01 16:32:19'),
	(82,'Neque Nullam Corporation','496430-6353','1994-04-16','Bangladesh','27618-39013','Montague','P.O. Box 764, 1587 Dis Rd.',31.90824,150.07572,'Nathaniel Burt',284,'Car','TRUE','elit.fermentum@Phasellus.co.uk','libero','2022-08-01 16:32:19'),
	(83,'Vulputate Associates','673363-7430','1996-06-06','Ireland','37724','Bras','P.O. Box 922, 8151 Volutpat Rd.',74.14739,-59.65905,'Armand Howell',442,'Growing Plants','TRUE','dis.parturient@eros.co.uk','lacus.','2022-08-01 16:32:19'),
	(84,'Ligula Aliquam Erat Ltd','806640-1772','2016-11-07','Singapore','697586','Dole','P.O. Box 722, 8313 Laoreet Road',-34.46051,13.72711,'Patrick Mcfarland',405,'IT','FALSE','orci@pede.com','interdum','2022-08-01 16:32:19'),
	(85,'Tortor Integer Associates','359548-8556','1976-12-10','Ethiopia','85437','Salamanca','P.O. Box 987, 7081 Sem. Avenue',-82.42214,116.38578,'Isaiah Love',409,'Building Industry','FALSE','feugiat.nec.diam@sagittis.org','orci','2022-08-01 16:32:19'),
	(86,'Ligula LLC','956856-4844','1996-07-24','Cuba','7748','Río Ibáñez','P.O. Box 335, 394 Dictum Av.',-23.00652,96.81938,'Griffin Mcintyre',466,'Car','FALSE','augue.scelerisque.mollis@afelisullamcorper.net','Mauris','2022-08-01 16:32:19'),
	(87,'Et Commodo Limited','442801-8735','2002-12-20','France','8396','Rixensart','7720 Quisque Ave',60.00947,66.99372,'Kermit Maddox',310,'Growing Plants','TRUE','penatibus@dapibusidblandit.edu','enim','2022-08-01 16:32:19'),
	(88,'Aliquet Metus Urna Associates','203888-3068','2004-12-05','Tonga','241312','Allentown','Ap #632-6950 In Street',53.25403,132.63357,'Fletcher Langley',213,'Car','FALSE','dictum@egestasSed.ca','mauris.','2022-08-01 16:32:19'),
	(89,'Elit Sed Consequat Foundation','742337-5281','1976-01-08','Guinea-Bissau','72654-179','Cinisi','2153 Sit Avenue',-73.94114,142.51448,'Austin Mayer',57,'Car','FALSE','a.arcu@eget.com','vitae','2022-08-01 16:32:19'),
	(90,'Elit Pede LLP','484250-8378','2017-11-24','Comoros','870133','Le Cannet','Ap #112-122 In Street',-43.28177,148.36225,'Mark Alvarez',378,'Building Industry','TRUE','Donec.est@Sed.edu','id,','2022-08-01 16:32:19'),
	(91,'Elementum LLP','503420-9477','2008-12-11','Saint Pierre and Miquelon','2589','Reno','P.O. Box 805, 3745 Ultrices Av.',62.52045,120.79172,'Francis Pacheco',191,'Food','TRUE','nulla@tempuseu.co.uk','nec','2022-08-01 16:32:19'),
	(92,'Et Eros Ltd','032113-0866','2016-07-26','Saudi Arabia','99198','Valéncia','811-8295 Lectus St.',16.60793,-101.78048,'Barclay Moran',98,'Building Industry','FALSE','mauris@eget.ca','sem','2022-08-01 16:32:19'),
	(93,'Sit Amet Risus Corporation','489799-8763','1979-05-06','Montenegro','66173','Wambeek','P.O. Box 274, 579 Sit Avenue',29.51780,4.56206,'Tobias Peck',63,'Growing Plants','FALSE','dignissim@malesuadavelconvallis.co.uk','facilisis','2022-08-01 16:32:19'),
	(94,'Tristique Company','404399-6885','2002-06-28','South Sudan','709185','Ponta Grossa','P.O. Box 660, 911 Curabitur St.',-12.46639,-47.80895,'Stone Fletcher',117,'Growing Plants','FALSE','Aliquam@odiosagittissemper.ca','tortor,','2022-08-01 16:32:19'),
	(95,'Eu Tellus Eu Associates','148798-5010','2001-07-18','Venezuela','49633','Temuco','749-2666 Volutpat. St.',-56.47309,-85.77269,'Porter Anderson',275,'Car','TRUE','In.scelerisque.scelerisque@urna.com','eu,','2022-08-01 16:32:19'),
	(96,'Cursus Non Corporation','993494-9752','1989-09-01','Cayman Islands','6489 OA','Lac-Serent','7401 Blandit Av.',-59.45704,-113.11917,'Kareem Hansen',89,'Car','TRUE','vitae.odio.sagittis@ridiculus.ca','dignissim','2022-08-01 16:32:19'),
	(97,'Erat LLP','674411-4775','2013-11-01','French Guiana','Z5708','Longvilly','Ap #960-133 Arcu. Rd.',-37.52415,-121.76164,'Amos Osborn',164,'Growing Plants','TRUE','nunc@ametorci.net','arcu.','2022-08-01 16:32:19'),
	(98,'Et Consulting','232008-1199','2013-03-24','Chad','Z3020','Bowling Green','1073 Turpis. St.',-10.23881,16.91773,'Palmer Norman',248,'Food','TRUE','libero@vitaesemper.co.uk','enim.','2022-08-01 16:32:19'),
	(99,'Lacus Associates','219173-9727','1989-02-08','Congo (Brazzaville)','14914','Böblingen','6688 Metus. St.',76.54404,-91.16178,'Akeem Porter',42,'Food','TRUE','Duis.ac.arcu@non.co.uk','massa.','2022-08-01 16:32:19'),
	(100,'Enim Associates','488428-9150','2011-11-11','Sao Tome and Principe','44419','Tamworth','5003 Quam Avenue',72.31592,-174.92451,'Callum Leonard',392,'IT','FALSE','nisi.Cum@quama.com','ut,','2022-08-01 16:32:19');

/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

DELIMITER ;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" */;;
/*!50003 CREATE */ /*!50017 DEFINER=`root`@`localhost` */ /*!50003 TRIGGER `CompanyBeforeUpdateTrigger` BEFORE UPDATE ON `companies` FOR EACH ROW BEGIN
	SET NEW.registerAt=OLD.registerAt;
END */;;
DELIMITER ;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;


# Dump of table companies_foundations
# ------------------------------------------------------------

DROP VIEW IF EXISTS `companies_foundations`;

CREATE TABLE `companies_foundations` (
   `date` VARCHAR(29) NULL DEFAULT NULL,
   `company` TEXT NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for companies_foundations with correct view syntax
# ------------------------------------------------------------

DROP TABLE `companies_foundations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `companies_foundations` AS (select `v`.`date` AS `date`,`c`.`company` AS `company` from (((select ('2001-01-01' + interval (((((`t4`.`t4` * 10000) + (`t3`.`t3` * 1000)) + (`t2`.`t2` * 100)) + (`t1`.`t1` * 10)) + `t0`.`t0`) day) AS `date` from (((((select 0 AS `t0` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t0` join (select 0 AS `t1` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t1`) join (select 0 AS `t2` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t2`) join (select 0 AS `t3` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t3`) join (select 0 AS `t4` union select 1 AS `1` union select 2 AS `2` union select 3 AS `3` union select 4 AS `4` union select 5 AS `5` union select 6 AS `6` union select 7 AS `7` union select 8 AS `8` union select 9 AS `9`) `t4`))) `v` left join (select `szallashu-backend`.`companies`.`companyFoundationDate` AS `companyFoundationDate`,group_concat(`szallashu-backend`.`companies`.`companyName` separator ', ') AS `company` from `szallashu-backend`.`companies` group by `szallashu-backend`.`companies`.`companyFoundationDate`) `c` on((`c`.`companyFoundationDate` = `v`.`date`))) where (`v`.`date` between '2001-01-01' and now()));

--
-- Dumping routines (PROCEDURE) for database 'szallashu-backend'
--
DELIMITER ;;

# Dump of PROCEDURE companies_activities
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `companies_activities` */;;
/*!50003 SET SESSION SQL_MODE="ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `companies_activities`()
BEGIN
	SET @query = CONCAT('SELECT ', (SELECT GROUP_CONCAT(distinct activity) 
	FROM (SELECT CONCAT(REPLACE(activity, " ", ""),".companyName AS '", activity, "'") as activity
		FROM companies ORDER BY activity) AS t0), ' FROM companies AS c ', (SELECT GROUP_CONCAT(distinct activity SEPARATOR " ")
	FROM (SELECT CONCAT("LEFT JOIN companies AS ", REPLACE(activity, " ", "")," ON c.companyId=", REPLACE(activity, " ", ""), ".companyId", " AND ", REPLACE(activity, " ", ""), ".activity=","'", activity, "'") as activity
	FROM companies ORDER BY activity) AS t1), ' ORDER BY c.companyName');
	PREPARE stmt FROM @query;
	EXECUTE stmt;
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
