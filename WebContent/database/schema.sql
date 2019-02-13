CREATE DATABASE IF NOT EXISTS mall 
DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE mall;

CREATE TABLE IF NOT EXISTS  admin(//로그인 정보 저장
    id VARCHAR(32) PRIMARY KEY,
    password VARCHAR(32)
);

INSERT INTO admin VALUES ('won','1234');
INSERT INTO admin VALUES ('sue','1234');

create table IF NOT EXISTS admingo(
	cmd varchar(10) not null,
	area varchar(10) not null,
	name varchar(30) PRIMARY KEY not null
);

INSERT INTO admingo VALUES('2','c','starbucks');

create table IF NOT EXISTS adminifc(
	cmd varchar(10) not null,
	area varchar(10) not null,
	name varchar(30) PRIMARY KEY not null
);

INSERT INTO adminifc VALUES('2','c','starbucks');

ALTER TABLE admin CHARACTER SET utf8 COLLATE utf8_general_ci; 
ALTER TABLE admingo CHARACTER SET utf8 COLLATE utf8_general_ci; 
ALTER TABLE adminifc CHARACTER SET utf8 COLLATE utf8_general_ci; //한글



