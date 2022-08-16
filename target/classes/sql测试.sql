-- 测试sql语句
-- 创建本地仓库 vcs - create git repository
-- 选择工程文件夹创建本地仓库

create database db1;

create database db2 charset utf8;

alter database db2 charset gbk;

show create database db2;

drop database db1;

drop database if exists db2;
