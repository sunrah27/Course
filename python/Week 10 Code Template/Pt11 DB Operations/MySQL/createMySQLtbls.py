from mysqlConnect import *
cursor.execute("""CREATE TABLE `members` (
  `MemberID` INT NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(45) NOT NULL,
  `Lastname` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`MemberID`),
  UNIQUE INDEX `MemberID_UNIQUE` (`MemberID` ASC) VISIBLE,
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) VISIBLE);""")


cursor.execute("""CREATE TABLE `songs` (
  `SongID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Artist` varchar(45) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  PRIMARY KEY (`SongID`),
  UNIQUE KEY `SongID_UNIQUE` (`SongID`)
);
""")

cursor.execute("""CREATE TABLE `downloads` (
  `DownloadID` int NOT NULL AUTO_INCREMENT,
  `SongID` int DEFAULT NULL,
  `MemberID` int DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  PRIMARY KEY (`DownloadID`),
  UNIQUE KEY `DownloadID_UNIQUE` (`DownloadID`),
  KEY `SongID_idx` (`SongID`),
  KEY `MemberID_idx` (`MemberID`),
  CONSTRAINT `MemberID` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`) ON DELETE CASCADE,
  CONSTRAINT `SongID` FOREIGN KEY (`SongID`) REFERENCES `songs` (`SongID`) ON DELETE CASCADE
);""")

cursor.execute("SHOW TABLES")
for tables in cursor:
    print(tables)