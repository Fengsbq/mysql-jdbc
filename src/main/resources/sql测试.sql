-- 测试sql语句
-- 创建本地仓库 vcs - create git repository
-- 选择工程文件夹创建本地仓库

create database db1;

create database db2 charset utf8;

alter database db2 charset gbk;

show create database db2;

drop database db1;

drop database if exists db2;

create table tb4(
                    id int primary key,
                    name varchar(20)
)engine=innodb charset=utf8;

desc tb4;

-- 班级表，主表、父表
drop table if exists banji;

create table banji(
    id int primary key auto_increment,
    name varchar(20)
)engine=innodb charset=utf8;

-- 学生表，子表
drop table if exists xuesheng;

create table xuesheng(
    id int primary key auto_increment,
    num int,
    name varchar(20),
    ban_id int,
    foreign key (ban_id)
                     references banji(id)
)engine=innodb charset=utf8;

-- 修改表添加外键
alter table xuesheng
add foreign key(ban_id)
references banji(id);

insert into banji(name) values('A'),('B');

insert into xuesheng(num,name,ban_id) values
                                          (6433, 'a', 1),
                                          (6434, 'b', 2),
                                          (6435, 'c', 1),
                                          (6436, 'd', 2),
                                          (6437, 'e', null);

insert into xuesheng(num,name,ban_id) values
    (6433, 'a', 999);

show create table xuesheng;

alter table xuesheng
    drop foreign key xuesheng_ibfk_1;

show  create table xuesheng


