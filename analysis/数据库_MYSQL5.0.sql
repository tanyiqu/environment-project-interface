/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/11/30 20:33:36                          */
/*==============================================================*/




drop table if exists comments;



drop table if exists holiday;


drop table if exists knowledge;



drop table if exists law;



drop table if exists news;



drop table if exists ucomment;



drop table if exists user;



drop table if exists video;

/*==============================================================*/
/* Table: comments                                              */
/*==============================================================*/
create table comments
(
   commentId            int not null primary key auto_increment,
   commentName          varchar(1024) not null,
   commentDate          datetime not null
);



/*==============================================================*/
/* Table: holiday                                               */
/*==============================================================*/
create table holiday
(
   holidayId            int not null primary key auto_increment,
   holidayName          varchar(30) not null,
   holidayDate          date not null,
   holidayReason        varchar(1023) not null
);



/*==============================================================*/
/* Table: knowledge                                             */
/*==============================================================*/
create table knowledge
(
   knowledgeId          int not null primary key auto_increment,
   knowledgeName        varchar(50) not null,
   knowledgeUrl         varchar(1024) not null
);



/*==============================================================*/
/* Table: law                                                   */
/*==============================================================*/
create table law
(
   lawId                int not null primary key auto_increment,
   lawName              varchar(50) not null,
   lawUrl               varchar(1024) not null
);



/*==============================================================*/
/* Table: news                                                  */
/*==============================================================*/
create table news
(
   newsId               int not null primary key auto_increment,
   newsName             varchar(100),
   newsFace             varchar(1024),
   newsDate             date,
   newsFrom             varchar(1024),
   newsUrl              varchar(1024),
   newsAgencyUrl        varchar(1024)
);


/*==============================================================*/
/* Table: ucomment                                              */
/*==============================================================*/
create table ucomment
(
   userId               int not null ,
   commentId            int not null 
);



/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null primary key auto_increment,
   userCount            char(10) not null,
   userName             varchar(10) not null,
   userPasswd           varchar(18) not null
);


/*==============================================================*/
/* Table: video                                                 */
/*==============================================================*/
create table video
(
   videoId              int not null primary key auto_increment,
   videoName            varchar(50) not null,
   videoUrl             varchar(1023) not null
);


alter table ucomment add constraint FK_Relationship_1 foreign key (commentId)
      references comments (commentId) on delete cascade on update cascade;

alter table ucomment add constraint FK_Relationship_2 foreign key (userId)
      references user (userId) on delete cascade on update cascade;

