-- Up
CREATE TABLE IF NOT EXISTS `User` (
  ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  Token varchar(255),
  LastName varchar(255),
  FirstName varchar(255),
  Age integer,
  Address varchar(255),
  Phone integer,
  Login varchar(255),
  Password varchar(255)
  );


-- Down
-- DROP TABLE `User`