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

INSERT INTO BBS VALUES (1, '제목1', '11', '2017-08-24 16:04:01', '내용', 1);
INSERT INTO BBS VALUES (2, '제목2', '11', '2017-08-24 16:04:05', '내용', 1);
INSERT INTO BBS VALUES (3, '제목3', '11', '2017-08-24 16:04:07', '내용', 1);
INSERT INTO BBS VALUES (4, '제목4', '11', '2017-08-24 16:04:09', '내용', 1);
INSERT INTO BBS VALUES (5, '제목5', '11', '2017-08-24 16:04:11', '내용', 1);
INSERT INTO BBS VALUES (6, '제목6', '11', '2017-08-24 16:04:21', '내용', 1);
INSERT INTO BBS VALUES (7, '제목7', '11', '2017-08-24 16:04:31', '내용', 1);
INSERT INTO BBS VALUES (8, '제목8', '11', '2017-08-24 16:04:41', '내용', 1);
INSERT INTO BBS VALUES (9, '제목9', '11', '2017-08-24 16:04:51', '내용', 1);
INSERT INTO BBS VALUES (10, '제목10', '11', '2017-08-24 16:04:55', '내용', 1);
INSERT INTO BBS VALUES (11, '제목11', '11', '2017-08-24 16:04:57', '내용', 1);

