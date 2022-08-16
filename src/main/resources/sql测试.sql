-- 测试sql语句
-- 创建本地仓库 vcs - create git repository
-- 选择工程文件夹创建本地仓库



create table tb6(
                     age int,
                     gender char(1),
                     check(age>=7 and age<=60),
                     check(gender in('M', 'F'))
);

insert into tb6 values(7, 'M');
insert into tb6 values(60, 'F');
insert into tb6 values(61, 'F');
insert into tb6 valuse(50, 'C');
