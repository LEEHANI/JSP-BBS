DROP DATABASE IF EXISTS BBS;
CREATE DATABASE IF NOT EXISTS BBS;
USE BBS;
DROP TABLE IF EXISTS USER;
CREATE TABLE IF NOT EXISTS USER (
  userID VARCHAR(20),
  userPassword VARCHAR(20),
  userName VARCHAR(20),
  userGender VARCHAR(20),
  userEmail VARCHAR(50),
  PRIMARY KEY(userID)
);

CREATE TABLE IF NOT EXISTS BBS (
	bbsID int,
	bbsTitle varchar(50),
	userID varchar(20),
	bbsDat DATETIME,
	bbsContent varchar(2048),
	bbsAvailable int,
	primary key (bbsID)
);


INSERT INTO USER VALUES ('777', '777', '777', '남자', '777@777');
INSERT INTO USER VALUES ('11', '11', '11', '남자', '11@111');
INSERT INTO USER VALUES ('gildong', '123456', 'hong', 'man', 'gildong@naver.com');

