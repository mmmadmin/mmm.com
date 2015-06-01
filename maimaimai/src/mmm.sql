#The database used is `test`
use test;

drop table if exists sys_user;
drop table if exists sys_user_role;
drop table if exists sys_user_group;
drop table if exists sys_company;
drop table if exists biz_product;
drop table if exists biz_product_image;
drop table if exists biz_product_pram;
drop table if exists biz_product_tag;

# Core table template for all tables, hold the common fields shared by all tables
create table if not exists `sys_table_template` (
`sys_id` char(32) NOT NULL DEFAULT '',
`sys_updated_by` varchar(40) DEFAULT NULL,
`sys_updated_on` datetime DEFAULT NULL,
`sys_created_by` varchar(40) DEFAULT NULL,
`sys_created_on` datetime DEFAULT NULL,
`sys_domain` varchar(32) DEFAULT NULL,
`active` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Core table sys_user hold all user information
create table if not exists `sys_user` (
`sys_id` char(32) NOT NULL DEFAULT '',
`user_name` varchar(100) DEFAULT NULL,
`user_password` varchar(100) DEFAULT NULL,
`password_needs_reset` tinyint(1) DEFAULT NULL,
`preferred_language` varchar(3) DEFAULT NULL,
`country` varchar(3) DEFAULT NULL,
`introduction` varchar(40) DEFAULT NULL,
`first_name` varchar(50) DEFAULT NULL,
`middle_name` varchar(50) DEFAULT NULL,
`last_name` varchar(50) DEFAULT NULL,
`name` varchar(151) DEFAULT NULL,
`phone` varchar(40) DEFAULT NULL,
`home_phone` varchar(40) DEFAULT NULL,
`mobile_phone` varchar(40) DEFAULT NULL,
`email` varchar(100) DEFAULT NULL,
`title` varchar(60) DEFAULT NULL,
`gender` varchar(40) DEFAULT NULL,
`last_login_time` datetime DEFAULT NULL,
`locked_out` tinyint(1) DEFAULT NULL,
`last_password` varchar(40) DEFAULT NULL,
`manager` varchar(32) DEFAULT NULL,
`photo` varchar(100) DEFAULT NULL,
`department` varchar(32) DEFAULT NULL,
`company` varchar(32) DEFAULT NULL,
`street` varchar(255) DEFAULT NULL,
`city` varchar(40) DEFAULT NULL,
`state` varchar(40) DEFAULT NULL,
`zip` varchar(40) DEFAULT NULL,
`vip` tinyint(1) DEFAULT NULL,
`building` varchar(32) DEFAULT NULL,
`failed_attempts` int(11) DEFAULT NULL,
`active` tinyint(1) DEFAULT NULL,
`sys_domain` varchar(32) DEFAULT NULL,
`cost_center` varchar(32) DEFAULT NULL,
`sys_updated_by` varchar(40) DEFAULT NULL,
`sys_updated_on` datetime DEFAULT NULL,
`sys_created_by` varchar(40) DEFAULT NULL,
`sys_created_on` datetime DEFAULT NULL,
`sys_class_name` varchar(80) DEFAULT NULL,
PRIMARY KEY (`sys_id`),
UNIQUE KEY `sys_user_u` (`user_name`),
KEY `sys_user_ref1` (`manager`),
KEY `sys_user_ref2` (`sys_domain`),
KEY `sys_user_ref3` (`company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
# Core table sys_user_role document user assigned roles
create table if not exists `sys_user_role` like `sys_table_template`;
alter table `sys_user_role`
add column `user_sys_id` char(32) NOT NULL DEFAULT '',
add column `granted_role` char(32) NOT NULL DEFAULT '';

# Core table biz_product domcument product basic information
create table if not exists `biz_product` like `sys_table_template`;
alter table `biz_product`
add column `product_name` varchar(255) NOT NULL DEFAULT '',
add column `image_icon` char(32) NOT NULL DEFAULT '',
add column `intro` char(32) NOT NULL DEFAULT '';

# Core table biz_product_image domcument product image urls
create table if not exists `biz_product_image` like `sys_table_template`;
alter table `biz_product_image`
add column `product_id` char(32) NOT NULL DEFAULT '',
add column `url` varchar(255) NOT NULL DEFAULT '',
add column `sequence` int(8) NOT NULL DEFAULT 0;

# Core table biz_product_pram domcument product prameters urls
create table if not exists `biz_product_pram` like `sys_table_template`;
alter table `biz_product_pram`
add column `product_id` char(32) NOT NULL DEFAULT '',
add column `spec_name` varchar(255) NOT NULL DEFAULT '',
add column `spec_value` varchar(255) NOT NULL DEFAULT '';

# Core table biz_product_tag domcument product prameters urls
create table if not exists `biz_product_tag` like `sys_table_template`;
alter table `biz_product_tag`
add column `product_id` char(32) NOT NULL DEFAULT '',
add column `tag` varchar(255) NOT NULL DEFAULT '';

# Load test data into the database. Comment out before loading to production
insert into sys_user (sys_id, user_name, user_password, name) values ('20150516200052729130777478939644','userOne','1111','User One');
insert into sys_user (sys_id, user_name, user_password, name) values ('20150516200052729664702011635382','userTwo','1111','User Two');
insert into sys_user (sys_id, user_name, user_password, name) values ('20150516200052729773953853136354','userThree','1111','User Three');
insert into sys_user (sys_id, user_name, user_password, name) values ('20150516200052730288758634587755','userFour','1111','User Four');
insert into sys_user (sys_id, user_name, user_password, name) values ('20150516200052730288758634587005','AndyTang','1111','Andy Tang');
insert into sys_user_role (sys_id, user_sys_id, granted_role) values ('20150516200052730291603678411763','20150516200052729130777478939644','ROLE_ADMIN');
insert into sys_user_role (sys_id, user_sys_id, granted_role) values ('20150516200052731236298868990543','20150516200052729130777478939644','ROLE_USER');
insert into sys_user_role (sys_id, user_sys_id, granted_role) values ('20150516200052731423393540520357','20150516200052729130777478939644','ROLE_MAINT');
insert into sys_user_role (sys_id, user_sys_id, granted_role) values ('20150516200052732189416786015391','20150516200052729664702011635382','ROLE_USER');
insert into sys_user_role (sys_id, user_sys_id, granted_role) values ('20150516200052732522083217021902','20150516200052729773953853136354','ROLE_GUEST');
INSERT INTO `test`.`biz_product`
(`sys_id`,
`sys_updated_by`,
`sys_updated_on`,
`sys_created_by`,
`sys_created_on`,
`sys_domain`,
`active`,
`product_name`,
`image_icon`,
`intro`)
VALUES
('20150517200052729130777478939644', 'userone', '2015-05-17 00:00:00', 'userone', '2015-05-17 00:00:00', 'mmm', '1', 'Karicare step 1 ??', '20150516200052729130777478939644', '20150516200052729130777478939644');

