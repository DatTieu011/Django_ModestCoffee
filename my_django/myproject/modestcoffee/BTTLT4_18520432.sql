create table KHACHHANG
(
	MAKH char(4)primary key ,
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT varchar(20),
	NGSINH smalldatetime,
	NGDK smalldatetime,
)
set dateformat dmy
---SANPHAM---
create table SANPHAM
(
	MASP char(4)primary key,
	TENSP varchar(40),
	DVT varchar(20),
	GIA money,
	)
---HOADON---
create table HOADON
(
	SOHD int ,
	NGHD smalldatetime,
	MAKH char(4) foreign key(MAKH)
	references KHACHHANG(MAKH),
	MANV char(4) foreign key(MANV)
	TRIGIA money,
	constraint PK_HOADON primary key (SOHD)
	)
---CHITIETHOADON---
create table CTHD
(
	SOHD int foreign key(SOHD)
	references HOADON(SOHD),
	MASP char(4) foreign key(MASP)
	references SANPHAM(MASP),
	SL int,
	constraint PK_CTHD primary key (SOHD,MASP)
	)
----NHAP LIEU----
set dateformat dmy
insert into 'SANPHAM'('TENSP', 'DVT', 'GIA')
values ('Mojito Cuba', 'VND', 80000); 
insert into 'SANPHAM'('TENSP', 'DVT', 'GIA')
values ('Sinh Tố Dâu', 'VND', 60000); 
insert into 'SANPHAM'('TENSP', 'DVT', 'GIA')
values ('Sinh Tố Việt Quất', 'VND', 70.000); 
insert into 'SANPHAM'('TENSP', 'DVT', 'GIA')
values ('Burned Milk Tea', 'VND', 50000); 
insert into 'SANPHAM'('TENSP', 'DVT', 'GIA')
values ('Trà Lipton (Đá/Không Đá)', 'VND', 35000); 