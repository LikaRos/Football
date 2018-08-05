-- Up
CREATE TABLE IF NOT EXISTS `Player` (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  LastName varchar(255),
  FirstName varchar(255),
  Age integer,
  );


-- Down
-- DROP TABLE `Player`