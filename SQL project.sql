select *from emp
alter table emp_salary alter column eid int not null;

--create primary key
alter table emp add constraint primary_eid primary key(EID);
alter table emp add constraint primary_eid primary key(EID);
sp_help emp;

--create name not null
alter table emp alter column name varchar(50) not null;
select *from emp_salary where salary is null;
--no employee from uttam nagar
alter table emp add constraint chk_addr check (addr not like '%uttam nagar');
ALTER TABLE EMP ADD CONSTRAINT CHK_ADDR CHECK (ADDR NOT LIKE '%GAUTAM NAGAR');
--CITY DELHI GGN FBD NOIDA
update emp set EMAIL = 'nisha@yahoo.com' where eid = 0;
update emp set city = 'DELHI' where eid = 2;
update emp set city = 'GURGAUN' where eid = 3;
update emp set city = 'FARIDABAD' where eid = 4;
update emp set city = 'NOIDA' where eid = 5;
update emp set city = 'DELHI' where eid = 6;
update emp set city = 'GURGAUN' where eid = 7;
update emp set city = 'NOIDA' where eid = 8;

--UNIQUE PHONE
ALTER TABLE EMP ADD CONSTRAINT UNIQUE_PH UNIQUE(PHONE);
--GMAIL/YAHOO
alter table emp add constraint chk_email1 check (email like '%gmail.com' or email like 'yahoo.com');
--check
alter table emp add constraint chk_dob check (DOB>='2000-01-01'); 
alter table emp add constraint chk_dob1 check (city in ('delhi','noida','gurgaun','faridabad'))
ALTER TABLE EMP ALTER COLUMN EID VARCHAR NOT NULL;
update EMP_SALARY set name = 'preeti' where NAME = 'JYOTI PAL';
update EMP_SALARY set name= 'dolly' where NAME = 'ANKIT SHARMA';
update EMP_SALARY set name= 'gaurav' where NAME = 'NEHA SINGH';
update EMP_SALARY set name= 'radha' where NAME = 'HIMANSHU SHARMA';
update EMP_SALARY set name= 'neha' where NAME = 'PREETI PAL';
update EMP_SALARY set name= 'prem' where NAME = 'PREM SHANKAR';
update EMP_SALARY set name= 'ruchi' where NAME = 'ROHIT SHARMA';


DELETE EMP WHERE EID= 0
SELECT *FROM EMP
SELECT *FROM EMP_SALARY
delete emp_salary where eid in (8,12);
ALTER TABLE EMP_SALARY ADD CONSTRAINT FK_SAl1 FOREIGN KEY (EID) REFERENCES EMP(EID);
sp_help EMP_SALARY


--COUNT NAME IN EMP
select count(NAME) from EMP;

--BY ORDER
select * from Emp_SalARY order by salary,DEPT desc ;

select Dept,desi,SUM(salary)as Total_cost from Emp_Salary group by DEPT,DESI
order by DEPT desc;

SELECT *FROM EMP ORDER BY CITY DESC;

--assignment 5
select emp.eid,name,city,doj,dept,desi,salary from emp inner join emp_salary on emp.eid=emp_salary.eid;


SELECT *FROM EMP
SELECT *FROM EMP_SALARY

select emp.eid , salary from emp inner join emp_salary on emp.eid=emp_salary.eid;

--assignment 6
create view emp_sal_details as 
select eid,name,doj,dept,desi,salary from emp_salary;
select *from emp_sal_details

create view vw_empdetails as
select EID,Dept,Desi,doj from Emp_Salary;
select * from vw_empdetails where doj >= '12-12-19' 

alter table supplier add  sphone bigint;
create database inventory
create table supplier (sid varchar(50),
sname varchar(50) not null,
sadd varchar (100) not null,
scity  varchar (50) not null,
sphone date,
email varchar (50))
select *from supplier
insert into supplier valueS ('S00010','RIHAN','canal colony','FARIDABAD','RIHAN@gmail.com',1234567790)
('S0002','radha','rihal colony','delhi','radha@gmail.com',1834567890),
('S0003','preeti','denum colony','mumbai','preeti@gmail.com',1734567890),
('S0004','gaurav','gita colony','faridabad','gaurav@gmail.com',1634567890),
('S0005','meena','sarogni nagar','gurgaun','meena@gmail.com',1534567890),
('S0006','kimat','preet vihar','pune','kimat@gmail.com',1434567890),
('S0007','rohan','laxmi colony','hyderabad','rohan@gmail.com',1334567890),
('S0008','nisha','harsh vihar','bangalore','nisha@gmail.com',1234567890),
('s0009','neha','nirman vihar','jaipur','neha@gmail.com',1134567890);

create table PRODUCT (pid varchar(50),
pdesc varchar(50) not null,
price money not null,
category  varchar (50) not null,
sid varchar(50))
select *from product
insert into product valueS ('p0001','phone',50000,'electronic','s0001'),
('p0002','tablet',60000,'electronic','s0002'),
('p0003','laptop',80000,'electronic','s0003'),
('p0004','honda',150000,'automobile','s0004'),
('p0005','maruti',100000,'automobile','s0005'),
('p0006','audi',250000,'automobile','s0006'),
('p0007','volswagon',250000,'automobile','s0007'),
('p0008','huandai',150000,'automobile','s0008'),
('p0009','nisan',150000,'automobile','s0009'),
('p00010','mahindra',250000,'automobile','s00010'),
('p00011','phone',50000,'electronic','s00011'),
('p00012','tablet',60000,'electronic','s00012'),
('p00013','laptop',80000,'electronic','s00013'),
('p00014','iphone',100000,'electronic','s00014'),
('p00015','1plus',90000,'electronic','s00015')
DELETE PRODUCT WHERE pid ='P00011'
create table STOCK (pid varchar(50),
SQTY INT not null,
ROL INT not null,
MOQ  INT  not null)
select *from STOCK
INSERT INTO STOCK VALUES ('P0001',10000,5000,500),
('P0002',11000,6000,600),
('P0003',12000,7000,700),
('P0004',13000,5000,800),
('P0005',14000,6000,900),
('P0006',15000,7000,500),
('P0007',16000,5000,600),
('P0008',17000,6000,700),
	   ('P0009',18000,7000,800),
		('P00010',19000,5000,900)

CREATE TABLE CUST (CID VARCHAR(50) NOT NULL,
CNAME VARCHAR(50) NOT NULL,
ADDRESS VARCHAR(50) NOT NULL,
CITY VARCHAR(50) NOT NULL,
PHONE BIGINT NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
DOB DATE NOT NULL)
SELECT *FROM CUST

INSERT INTO CUST VALUES ('C0001','PREETI','LAXMI NAGAR','DELHI','1234566789','PREETI@GMAIL.COM','12-12-2001'),
('C0002','PREET','LAXMI NAGAR','mumbai','1244566789','PREET@GMAIL.COM','12-22-2001'),
('C0003','PREM','LAXMI NAGAR','mumbai','1235566789','PREM@GMAIL.COM','12-12-2001'),
('C0004','PRESI','LAXMI NAGAR','faridabad','1264566789','PRESI@GMAIL.COM','11-12-2001'),
('C0005','PUJA','LAXMI NAGAR','gurgaun','1237566789','PUJA@GMAIL.COM','09-12-2001'),
('C0006','JYOTI','LAXMI NAGAR','DELHI','1284566789','JYOTI@GMAIL.COM','08-12-2001'),
('C0007','PREM','LAXMI NAGAR','mumbai','1235566789','PREM@GMAIL.COM','12-12-2001'),
('C0008','PRESI','LAXMI NAGAR','faridabad','1264566789','PRESI@GMAIL.COM','07-12-2001'),
('C0009','PUJA','LAXMI NAGAR','gurgaun','1237566789','PUJA@GMAIL.COM','10-12-2001'),
('C00010','JYOTI','LAXMI NAGAR','DELHI','1284566789','JYOTI@GMAIL.COM','10-12-2001');

 CREATE TABLE ORDERS (OID VARCHAR(50) NOT NULL,
ODATE DATE NOT NULL,
PID VARCHAR(50) NOT NULL,
CID VARCHAR(50) NOT NULL,
OQTY INT NOT NULL)

SELECT * FROM ORDERS

INSERT INTO ORDERS VALUES ('O0001','09-23-2023','P0001','C0001',1000),
('O0002','09-24-2023','P0002','C0002',1010),
('O0003','09-25-2023','P0003','C0003',1020),
('O0004','09-23-2023','P0004','C0004',1030),
('O0005','09-22-2023','P0005','C0005',1040),
('O0006','09-21-2023','P0006','C0006',1050),
('O0007','09-20-2023','P0007','C0007',1060),
('O0008','09-24-2023','P0008','C0008',1070),
('O0009','09-25-2023','P0009','C0009',1080),
('O00010','09-26-2023','P00010','C00010',1090);

SELECT * FROM SUPPLIER
SELECT * FROM PRODUCT
SELECT * FROM ORDERS
SELECT * FROM CUST
SELECT * FROM ORDERS
--PRIMARY KEY
alter table supplier add constraint primary_supl_sid primary key (SID); 
alter table CUST add constraint primary_CUST_cid primary key (CID); 
ALTER TABLE STOCK ALTER COLUMN pid VARCHAR(50) NOT NULL;
sp_help ORDERS

--FOREIGN KEY
ALTER TABLE PRODUCT ADD CONSTRAINT FK_PRODUCT FOREIGN KEY (SID) REFERENCES SUPPLIER(SID);
alter table orders add constraint fk_oRDER_CID foreign key (CID) REFERENCES CUST (CID);
ALTER TABLE STOCK ADD CONSTRAINT FK_STOCK FOREIGN KEY (PID) REFERENCES PRODUCT (PID);
sp_help PRODUCT

select *from supplier
--create procedure in inventory database
create procedure in_supplier
@sid as varchar(50),
@sname as varchar(50),
@sadd as varchar(100),
@scity as varchar(50),
@email varchar(50),
@phone bigint 
as
begin
insert into supplier values (@sid,@sname,@sadd,@scity,@email,@phone);
select* from supplier where SID=@sid
END

execute  in_supplier 'S0011','MOHAN','CHANCHAL VIHAR','GURGAUN','MOHAN@GMAIL.COM',123456789
SELECT *FROM SUPPLIER

SELECT *FROM PRODUCT
CREATE PROCEDURE PROC_PRODUCT
@PID VARCHAR(50),
@PDESC VARCHAR(50),
@price money,
@category varchar(50),
@sid varchar(50)
as 
begin 
insert into product VALUES (@PID,@PDESC,@PRICE,@CATEGORY,@SID);
SELECT * FROM PRODUCT WHERE PID=@PID
END

EXECUTE PROC_PRODUCT 'P0012','TAB',50000,'ELECTRONIC','S0012'
SELECT *FROM PRODUCT

SELECT *FROM CUST
CREATE PROCEDURE PROC_CUST
@CID VARCHAR(50),
@CNAME VARCHAR(50),
@ADDRESS VARCHAR(50),
@CITY VARCHAR(50),
@PHONE BIGINT,
@EMAIL VARCHAR(50),
@DOB DATE
as
BEGIN
INSERT INTO CUST VALUES (@CID,@CNAME,@ADDRESS,@CITY,@PHONE,@EMAIL,@DOB);
SELECT *FROM CUST WHERE CID=@CID
END

EXECUTE PROC_CUST 'C0011','MOHIT','MOHAN NAGAR','MUMBAI','2345678906','MOHAN@GMAIL.COM','2001-04-5'
SELECT *FROM CUST

SELECT *FROM ORDERS 
ALTER PROCEDURE PROC_ORDERS
@OID VARCHAR(50),
@ODATE DATE,
@PID VARCHAR(50),
@CID VARCHAR(50),
@OQTY INT
as
BEGIN
INSERT INTO ORDERS VALUES (@OID,@ODATE,@PID,@CID,@OQTY);
SELECT *FROM ORDERS WHERE PID=@PID
END

EXECUTE PROC_ORDERS 'O0011','2023-09-23','POO11','COO11','500'
SELECT *FROM ORDERS

--create function example
alter function mysum(@A INT, @B INT)
RETURNS INT 
AS
BEGIN 
DECLARE @C AS INT
SET @C=@A/@B;
RETURN @C;
END;

SELECT DBO.mysum(300,30);

--user defined function example
 
 ALTER function GETEMP (
 @ADDRESS VARCHAR(100)
 )RETURNS TABLE
 AS

 RETURN(SELECT *FROM EMP WHERE ADDR= @ADDRESS);
 SELECT *FROM DBO.GETEMP('GANGA COLONY')


 --INLINE TABLE VALUE FUNCTION
 CREATE FUNCTION GETDETAILS(@TOTAL INT)
 RETURNS TABLE
 AS
 RETURN (SELECT * FROM ORDERS WHERE (1000+1010+1020+030)>=@TOTAL)

 SELECT *FROM GETDETAILS(1030)

 SELECT *FROM EMP_SALARY WHERE SALARY =
 (SELECT MAX (SALARY) FROM EMP_SALARY
 WHERE SALARY < (SELECT MAX(SALARY)
 FROM EMP_SALARY WHERE SALARY < (SELECT MAX (SALARY) FROM EMP_SALARY))








