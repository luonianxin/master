create  diary  CHARACTER SET utf8 COLLATE utf8_general_ci;;
drop table if exists user;
CREATE TABLE   user
(
userid INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(15) NOT NULL,
userpassword varchar(15) not null
)AUTO_INCREMENT = 0;
insert INTO user(username,userpassword) VALUEs('sysadmin','sysadmin');

drop table if exists diaryDetail;
CREATE TABLE   diaryDetail
(
diaryid INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
userid int ,
diarytitle varchar(40) charset utf8 collate utf8_general_ci,
diarytag varchar(40) ,
diarycontent varchar(21000) charset utf8 collate utf8_general_ci,
diarywritetime TimeStamp,
FOREIGN key (userid) REFERENCES user(userid)
)AUTO_INCREMENT = 0;