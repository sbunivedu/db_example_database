DROP TABLE IF EXISTS `Classes`;
CREATE TABLE `Classes` (
  `class` varchar(20) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `numGuns` int(11) DEFAULT NULL,
  `bore` int(11) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL
);
INSERT INTO `Classes` VALUES
('Bismarck','bb','Germany',8,15,42000),
('Iowa','bb','USA',9,16,46000),
('Kongo','bc','Japan',8,14,32000),
('North Carolina','bb','USA',9,16,37000),
('Renown','bc','Gt. Britain',6,15,32000),
('Revenge','bb','Gt. Britain',8,15,29000),
('Tennessee','bb','USA',12,14,32000),
('Yamato','bb','Japan',9,18,65000);

DROP TABLE IF EXISTS `Ships`;
CREATE TABLE `Ships` (
  `name` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `launched` int(11) DEFAULT NULL
);
INSERT INTO `Ships` VALUES
('California','Tennessee',1921),
('Haruna','Kongo',1915),
('Hiei','Kongo',1914),
('Iowa','Iowa',1943),
('Kirishima','Kongo',1915),
('Kongo','Kongo',1913),
('Missouri','Iowa',1944),
('Musashi','Yamato',1942),
('New Jersey','Iowa',1943),
('North Carolina','North Carolina',1941),
('Ramillies','Revenge',1917),
('Renown','Renown',1916),
('Repulse','Renown',1916),
('Resolution','Revenge',1916),
('Revenge','Revenge',1916),
('Royal Oak','Revenge',1916),
('Royal Sovereign','Revenge',1916),
('Tennessee','Tennessee',1920),
('Washington','North Carolina',1941),
('Wisconsin','Iowa',1944),
('Yamato','Yamato',1941);


DROP TABLE IF EXISTS `Battles`;
CREATE TABLE `Battles` (
  `name` varchar(20) DEFAULT NULL,
  `battledate` date DEFAULT NULL
);
INSERT INTO `Battles` VALUES
('North Atlantic','1941-05-24'),
('Guadalcanal','1942-11-15'),
('North Cape','1943-02-26'),
('Suriago Strait','1944-10-25');

DROP TABLE IF EXISTS `Outcomes`;
CREATE TABLE `Outcomes` (
  `ship` varchar(20) DEFAULT NULL,
  `battle` varchar(20) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL
);
INSERT INTO `Outcomes` VALUES
('Bismarck','North Atlantic','sunk'),
('California','Surigao Strait','ok'),
('Duke of York','North Cape','ok'),
('Fuso','Surigao Strait','sunk'),
('Hood','North Atlantic','sunk'),
('King George V','North Atlantic','ok'),
('Kirishima','Guadalcanal','sunk'),
('Prince of Wales','North Atlantic','damaged'),
('Rodney','North Atlantic','ok'),
('Scharnhorst','North Cape','sunk'),
('South Dakota','Guadalcanal','damaged'),
('Tennessee','Surigao Strait','ok'),
('Washington','Guadalcanal','ok'),
('West Virginia','Surigao Strait','ok'),
('Yamashiro','Surigao Strait','sunk');
