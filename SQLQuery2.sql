ALTER TABLE NhanVienBanHang NOCHECK CONSTRAINT FK_ChiNhanh_TO_NhanVienBanHang
ALTER TABLE NhanVienBanHang NOCHECK CONSTRAINT FK_NhanVienBanHang_TO_NhanVienBanHang
ALTER TABLE NhanVienBanHang NOCHECK CONSTRAINT FK_TaiKhoanNhanVien_TO_NhanVienBanHang
ALTER TABLE DonHang NOCHECK CONSTRAINT FK_TaiKhoanKhachHang_TO_DonHang
ALTER TABLE DonHang NOCHECK CONSTRAINT FK_ChiNhanh_TO_DonHang
ALTER TABLE HoaDon NOCHECK CONSTRAINT FK_DonHang_TO_HoaDon
ALTER TABLE HoaDon NOCHECK CONSTRAINT FK_TaiKhoanKhachHang_TO_HoaDon
ALTER TABLE HoaDon NOCHECK CONSTRAINT FK_NhanVienBanHang_TO_HoaDon
ALTER TABLE TaiKhoanKhachHang NOCHECK CONSTRAINT FK_KhachHang_TO_TaiKhoanKhachHang

ALTER TABLE NhanVienBanHang WITH CHECK CHECK CONSTRAINT FK_ChiNhanh_TO_NhanVienBanHang
ALTER TABLE NhanVienBanHang WITH CHECK CHECK CONSTRAINT FK_NhanVienBanHang_TO_NhanVienBanHang
ALTER TABLE NhanVienBanHang WITH CHECK CHECK CONSTRAINT FK_TaiKhoanNhanVien_TO_NhanVienBanHang
ALTER TABLE DonHang WITH CHECK CHECK CONSTRAINT FK_TaiKhoanKhachHang_TO_DonHang
ALTER TABLE DonHang WITH CHECK CHECK CONSTRAINT FK_ChiNhanh_TO_DonHang
ALTER TABLE HoaDon WITH CHECK CHECK CONSTRAINT FK_DonHang_TO_HoaDon
ALTER TABLE HoaDon WITH CHECK CHECK CONSTRAINT FK_TaiKhoanKhachHang_TO_HoaDon
ALTER TABLE HoaDon WITH CHECK CHECK CONSTRAINT FK_NhanVienBanHang_TO_HoaDon
ALTER TABLE TaiKhoanKhachHang WITH CHECK CHECK CONSTRAINT FK_KhachHang_TO_TaiKhoanKhachHang


CREATE OR ALTER PROC Insert_NhanVienBanHang
@ChiNhanhLamViec VARCHAR(15),
@MaSo              VARCHAR(15),
@HoVaTenLot        VARCHAR(40),
@Ten               VARCHAR(10),
@SoDienThoai       VARCHAR(10),
@DiaChi            VARCHAR(40),
@NgaySinh          DATE       ,
@Luong             INT        ,
@NgayBatDauLamViec DATE       ,
@SoTK              VARCHAR(14),
@ChiNhanhNganHang  VARCHAR(30),
@GiamSat           VARCHAR(15),
@GioiTinh          VARCHAR(5) ,
@SoHuuTaiKhoan     VARCHAR(15)
AS
BEGIN
    if EXISTS (SELECT NhanVienBanHang.MaSo FROM dbo.NhanVienBanHang
                WHERE NhanVienBanHang.MaSo = @MaSo)
        RAISERROR('MA SO NHAN VIEN DA TON TAI',16,1);
    else
        INSERT INTO NhanVienBanHang
        VALUES(@ChiNhanhLamViec, @MaSo, @HoVaTenLot, @Ten, @SoDienThoai, @DiaChi, @NgaySinh, @Luong, @NgayBatDauLamViec, @SoTK, @ChiNhanhNganHang, @GiamSat, @GioiTinh, @SoHuuTaiKhoan)
END

exec dbo.Insert_NhanVienBanHang
'Dong Nam A', 'DNA0001', 'Nguyen Tien', 'Dung', '0907009550', '120 Ly Thuong Kiet, phuong 5, Tan Binh', '05-11-1997', '9500000', '02-08-2017', '00123456787', 'Agribank','DNA0002', 'Nam', 'TienDung';
exec dbo.Insert_NhanVienBanHang 
'Dong Nam A', 'DNA0002', 'Nguyen', 'Duy', '0925844315', '17 Hoang Hoa Tham, phuong 8, Tan Binh', '05-08-1998', '7500000', '02-08-2018', '001212121533', 'OCB', 'DNA0001', 'Nam', 'NguyenDuy';
exec dbo.Insert_NhanVienBanHang
'Gia Lai', 'GL0001', 'Nguyen Thi Be', 'Hang', '0952447312', '16 Ly Thuong Kiet, phuong 10, Quan 10', '01-05-1998', '8500000', '02-05-2017', '00121456789', 'OCB', 'GL0001', 'Nu', 'BeHang';
exec dbo.Insert_NhanVienBanHang
'Ho Chi Minh', 'HCM0001', 'Le Minh', 'Hieu', '0273592858', '78 Cach mang thang 8, phuong 7, Quan 10', '09-30-1998', '8500000', '07-09-2017', '000011232858', 'OCB', 'HCM0002', 'Nam', 'MinhHieu';
exec dbo.Insert_NhanVienBanHang
'Ho Chi Minh', 'HCM0002', 'Ly Đang', 'Khoa', '0385750784', '78 Dakao, Quan 1', '04-30-1995', '9500000', '08-05-2015', '000544750784', 'ACB', 'HCM0001', 'Nam', 'DangKhoa';
exec dbo.Insert_NhanVienBanHang
'Nghe An', 'NA0001', 'Nguyen Đang', 'Khoa', '0292581945', '977 Chuong Duong, TP.Thu Đuc', '04-04-1997', '7500000', '07-05-2019', '000112581945', 'Agribank', 'NA0001', 'Nam', 'DangKhoa';
exec dbo.Insert_NhanVienBanHang
'Thanh Hoa', 'TH0001', 'Hoang Thi Thu', 'Thuy', '0334958605', '35 To Vinh Dien,  TP.Thu Đuc','01-18-1997', '8000000', '08-05-2018', '0012495856', 'Agribank', 'TH0002', 'Nu', 'ThuThuy';
exec dbo.Insert_NhanVienBanHang
'Thanh Hoa', 'TH0002', 'Nguyen Thi Cam', 'Thuy', '0312396928', '89 Đang Van Bi, TP.Thu Đuc', '09-21-1996', '8500000', '07-15-2017', '000312396858', 'OCB', 'TH0001', 'Nu', 'CamThuy';
exec dbo.Insert_NhanVienBanHang
'America', 'AME0001', 'Nguyen Hai', 'Đang', '0341812277', '86 Le Van Viet, TP.Thu Đuc', '04-30-1995', '9500000', '08-05-2015', '00054181277', 'ACB', 'AME0002', 'Nam', 'HaiDang';
exec dbo.Insert_NhanVienBanHang
'America', 'AME0002', 'Nguyen Trung', 'Hoa', '0341933072', '36 Vo Van Ngan, TP.Thu Đuc', '04-28-1998', '7500000', '08-05-2018', '0001193304', 'OCB', 'AME0001', 'Nam', 'TrungHoa';

DELETE FROM NhanVienBanHang WHERE MaSo = 'DNA0001'
SELECT * FROM NhanVienBanHang

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Dong Nam A', 'DNA0001', 'Đinh Quang Thien', 'An', '0925846695', '95 Ta Quang Buu, phuong 5, Phu Nhuan', '03-22-1999', '7000000', '05-01-2019', '0000123456', 'Vietcombank', 'DNA0002', 'Nam', 'ThienAn')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0001', 'Nguyen Hong', 'Anh', '0301677838', '96 Ly Thuong Kiet, phuong 6, Tan Binh', '08-17-1998', '7500000', '02-01-2019', '000011112222', 'OCB', 'HCM0004', 'Nu', 'HongAnh')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Dong Nam A', 'DNA0002', 'Nguyen Tien', 'Dung', '0907009550', '120 Ly Thuong Kiet, phuong 5, Tan Binh', '05-11-1997', '9500000', '02-08-2017', '00123456787', 'Agribank','DNA0003', 'Nam', 'TienDung')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Dong Nam A', 'DNA0003', 'Nguyen', 'Duy', '0925844315', '17 Hoang Hoa Tham, phuong 8, Tan Binh', '05-08-1998', '7500000', '02-08-2018', '001212121533', 'OCB', 'DNA0002', 'Nam', 'NguyenDuy')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Gia Lai', 'GL0001', 'Nguyen Thi Be', 'Hang', '0952447312', '16 Ly Thuong Kiet, phuong 10, Quan 10', '01-05-1998', '8500000', '02-05-2017', '00121456789', 'OCB', 'GL0001', 'Nu', 'BeHang')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0002', 'Pham Thi Hong', 'Hanh', '0312391618', '16 10 thang 3, phuong 5, Quan 10', '01-12-1999', '7500000', '02-05-2019', '00121987456', 'OCB', 'HCM0004', 'Nu', 'HongHanh')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0003', 'Le Minh', 'Hieu', '0273592858', '78 Cach mang thang 8, phuong 7, Quan 10', '09-30-1998', '8500000', '07-09-2017', '000011232858', 'OCB', 'HCM0004', 'Nam', 'MinhHieu')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0004', 'Ly Đang', 'Khoa', '0385750784', '78 Dakao, Quan 1', '04-30-1995', '9500000', '08-05-2015', '000544750784', 'ACB', 'HCM0006', 'Nam', 'DangKhoa')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0005', 'Tran Tan', 'Sang', '0291145529', '85 Đien Bien Phu, Quan 3', '05-28-1998', '8500000', '08-05-2017', '000114552984', 'ACB', 'HCM0004', 'Nam', 'TanSang')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Nghe An', 'NA0001', 'Nguyen Đang', 'Khoa', '0292581945', '977 Chuong Duong, TP.Thu Đuc', '04-04-1997', '7500000', '07-05-2019', '000112581945', 'Agribank', 'NA0001', 'Nam', 'DangKhoa')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Thanh Hoa', 'TH0001', 'Hoang Thi Thu', 'Thuy', '0334958605', '35 To Vinh Dien,  TP.Thu Đuc','01-18-1997', '8000000', '08-05-2018', '0012495856', 'Agribank', 'TH0002', 'Nu', 'ThuThuy')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Thanh Hoa', 'TH0002', 'Nguyen Thi Cam', 'Thuy', '0312396928', '89 Đang Van Bi, TP.Thu Đuc', '09-21-1996', '8500000', '07-15-2017', '000312396858', 'OCB', 'TH0001', 'Nu', 'CamThuy')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('America', 'AME0001', 'Nguyen Hai', 'Đang', '0341812277', '86 Le Van Viet, TP.Thu Đuc', '04-30-1995', '9500000', '08-05-2015', '00054181277', 'ACB', 'AME0002', 'Nam', 'HaiDang')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('America', 'AME0002', 'Nguyen Trung', 'Hoa', '0341933072', '36 Vo Van Ngan, TP.Thu Đuc', '04-28-1998', '7500000', '08-05-2018', '0001193304', 'OCB', 'AME0001', 'Nam', 'TrungHoa')

insert into NhanVienBanHang (MaChiNhanhLamViec, MaSo, HoVaTenLot, Ten, SoDienThoai, DiaChi, NgaySinh, Luong, NgayBatDauLamViec, SoTK, ChiNhanhNganHang, GiamSat, GioiTinh, SoHuuTaiKhoan)
values ('Ho Chi Minh', 'HCM0006', 'Tran Van', 'Khai', '0221472730', '95 Quang Trung, TP.Thu Đuc', '05-07-1992', '9500000', '07-24-2015', '00011472735', 'Vietcombank', 'HCM0004', 'Nam', 'VanKhai')

CREATE INDEX index_nhanvienbanhang ON NhanVienBanHang(MaSo)

SELECT * FROM ChiNhanh;
insert into ChiNhanh values ('Dong Nam A', 'Hem 46 Bui Thi Xuan', NULL);
insert into ChiNhanh values ('Gia Lai', '25 Nguyen Du', NULL);
insert into ChiNhanh values ('Ho Chi Minh', '106 Ben Phu Dinh', NULL);
insert into ChiNhanh values ('Thanh Hoa', '17 Duong Dat', NULL);
insert into ChiNhanh values ('Nghe An', '19 Tren Doi', NULL);
insert into ChiNhanh values ('America', '25 Wall Street', NULL);
-- delete from ChiNhanh where ChiNhanh.MaChiNhanh LIKE '%';

SELECT * FROM KhachHang;
insert into KhachHang values ('MSKH1', 'Loc', '0349976559', 'loclepnvx@gmail.com');
insert into KhachHang values ('MSKH2', 'Van', '0394356772', 'vannguyen2012002@gmail.com');
insert into KhachHang values ('MSKH3', 'Phuc', '0985671234', 'liulostwitch@gmail.com');
-- delete from KhachHang where KhachHang.MaSoKhachHang LIKE '%';

SELECT * FROM TaiKhoanKhachHang;
insert into TaiKhoanKhachHang values ('MSTK123', 'locga', 'LocNgonGiai84', 'Loc', 0, 'MSKH1');
insert into TaiKhoanKhachHang values ('MSTK124', 'vanpro', 'VanDepGai201', 'Van', 0, 'MSKH2');
insert into TaiKhoanKhachHang values ('MSTK125', 'phucvip', 'PhucDepZai71', 'Phuc', 0, 'MSKH3');
-- DELETE FROM TaiKhoanKhachHang WHERE MaSoTaiKhoan LIKE '%';

select * from DonHang;
insert into DonHang values ('MDH1', 'return', 'MSTK123', 'Dong Nam A');
 insert into DonHang values ('MDH2', 'unbox', 'MSTK124', 'Gia Lai');
insert into DonHang values ('MDH3', 'unbox', 'MSTK125', 'Ho Chi Minh');
 insert into DonHang values ('MDH4', 'broken', 'MSTK123', 'Thanh Hoa');
insert into DonHang values ('MDH5', 'unbox', 'MSTK123', 'Nghe An');
insert into DonHang values ('MDH6', 'unbox', 'MSTK124', 'America');
exec dbo.Insert_DonHang 'MDH1', 'return', 'MSTK123', 'Dong Nam A';
exec dbo.Insert_DonHang 'MDH2', 'unbox', 'MSTK124', 'Gia Lai';
exec dbo.Insert_DonHang 'MDH3', 'unbox', 'MSTK125', 'Ho Chi Minh';
exec dbo.Insert_DonHang 'MDH4', 'broken', 'MSTK123', 'Thanh Hoa';
exec dbo.Insert_DonHang 'MDH5', 'unbox', 'MSTK123', 'Nghe An';
exec dbo.Insert_DonHang 'MDH6', 'unbox', 'MSTK124', 'America';


select * from HoaDon;

insert into HoaDon values ('MHD1', '10:27:45', 'MDH1', 'DNA0001', 'MST1', 'MSTK123');
insert into HoaDon values ('MHD2', '18:45:12', 'MDH2', 'GL0001', 'MST2', 'MSTK124');
insert into HoaDon values ('MHD3', '09:48:20', 'MDH3', 'HCM0001', 'MST3', 'MSTK125');
insert into HoaDon values ('MHD4', '23:26:43', 'MDH4', 'TH0002', 'MST4', 'MSTK123');
insert into HoaDon values ('MHD5', '15:33:10', 'MDH5', 'HCM0002', 'MST5', 'MSTK123');
insert into HoaDon values ('MHD6', '10:27:45', 'MDH6', 'HCM0002', 'MST6', 'MSTK123');
insert into HoaDon values ('MHD7', '10:27:45', 'MDH7', 'HCM0002', 'MST6', 'MSTK123');
insert into HoaDon values ('MHD8', '15:33:10', 'MDH8', 'TH0002', 'MST5', 'MSTK123');


--Cau 2
--2.1. Nhan vien moi phai tren 18 tuoi khi lam viec tai moi chi nhanh
create trigger tuoinhanvien
on dbo.NhanVienBanHang for insert
as
begin
	declare @tuoi_nvm int
	set @tuoi_nvm = (select YEAR(GETDATE())-YEAR(NgaySinh) as tuoinv from inserted)
	if (@tuoi_nvm < 18)
	begin 
		raiserror('Nhan vien khong duoc duoi 18 tuoi', 16,1);
		ROLLBACK TRANSACTION;
	end
end

insert into NhanVienBanHang values ('FD003', '00300016', 'Tran Van', 'Khanh', '0221472730', '97 Quang Trung, TP.Thu Đuc', '05-07-2008', '9500000', '11-29-2021', '00011472735', 'Vietcombank', '00300013', 'Nam', 'FD003VanKhai')

--2.2.bat dau tu hom nay moi hoa dong giao dich cua khach hang se duoc cong 1000 vao tien luong cua nhan vien giao dich
use assignment
go
drop trigger tangluongnv
go

create or alter trigger tangluongnv
on dbo.HoaDon after insert
as
begin
	declare @MaNVGD varchar(40);
	select @MaNVGD = MaSoNhanVienXuat
	from inserted

	update NhanVienBanHang
	set Luong = luong + 1000
	where MaSo = @MaNVGD
end

select * from HoaDon;
insert into HoaDon values ('MHD8', '15:27:45', 'MDH1', 'TH0001', 'MST6', 'MSTK123');

--Cau 3 Thủ tuc
--3.1. Truy van ma so, ten nhan vien, Ma hoa don thuc hien da xuat hoa don tai chi nhanh ho chi minh va sap xep thu tu theo ten nhan vien

CREATE PROCEDURE GET_BILL (@maso VARCHAR(15))
AS
 BEGIN
  SELECT N.MaSo, H.ThoiGianXuatHoaDon, H.MaHoaDon, H.DuocThanhToanBoiTaiKhoan
  FROM HoaDon H , NhanVienBanHang N
  WHERE N.MaSo=@maso AND N.MaSo=H.MaSoNhanVienXuat
    ORDER BY H.MaHoaDon
 END

EXEC GET_BILL 'HCM0002'

--3.2. Truy van ma so nhan vien, ho ten, ma hoa don va nhung tai khoan thanh toan boi nhung nhan vien co muc luong cao hon mot muc nao do. Cuoi cung hay sap xep theo thu tu cua gia tri tai khoa thanh toan

use assignment
go
drop  procedure GET_NV
go


CREATE PROCEDURE GET_NV (@minluong int)
AS
BEGIN
	SELECT H.MaSoNhanVienXuat, N.HoVaTenLot, N.Ten, N.Luong, H.ThoiGianXuatHoaDon, H.MaHoaDon, H.DuocThanhToanBoiTaiKhoan
	FROM HoaDon H , NhanVienBanHang N, (SELECT MaSo, MIN (Luong) AS luongthapnhat
										FROM NhanVienBanHang
										GROUP BY MaSo
										HAVING MIN (Luong) > @minluong
										) AS T
	WHERE T.MaSo=MaSoNhanVienXuat AND T.MaSo = N.MaSo
	ORDER BY DuocThanhToanBoiTaiKhoan
END

EXEC GET_NV '8000000'


--Cau 4
--4.1. kiem tra nhan vien co nhiem vu giam sat hay khong, neu la giam sat duoc tang 5% luong.

use assignment
go
drop function tangluonggiamsat
go

CREATE FUNCTION tangluonggiamsat
( @TenNV VARCHAR(60))
RETURNS @table TABLE (
    [MaNV] VARCHAR(40),
    [Luong] INT
)
AS
BEGIN
    DECLARE @manv VARCHAR(40);
	SELECT @manv = (SELECT G.MaSo FROM NhanVienBanHang N, NhanVienBanHang G WHERE N.MaSo = G.GiamSat AND G.HoVaTenLot +' '+G.Ten = @TenNV)
	IF @manv!='/0'
	BEGIN
		DECLARE @luong INT;
		SELECT @luong = (SELECT Luong FROM NhanVienBanHang WHERE MaSo=@manv)
		SET @luong=1.05*@luong;
		INSERT INTO @table VALUES (@manv, @luong)
	END
	RETURN
END;

SELECT * FROM dbo.tangluonggiamsat('Nguyen Duy');



--4.2.hien thi tong so nguoi lam viec tren i nam


select  MaSo, HoVaTenLot +' '+Ten as HoTen, (select YEAR(GETDATE())-YEAR(NgayBatDauLamViec)) as SoNamLV
into NamLV
from NhanVienBanHang

select *
from NamLV

use assignment
go
drop function NVLVtren_i
go

CREATE FUNCTION NVLVtren_i
(@nam int)
RETURNS @table TABLE (
    [so luong] INT
)
AS
BEGIN
	IF(@nam<0)
	BEGIN
		RETURN;
	END
	DECLARE @dem int;
	set @dem=0;
	DECLARE @max int;
	select @max=MAX(SoNamLV) from dbo.NamLV
	DECLARE @i int;
	set @i=0;
	DECLARE @a int;
	set @a=@nam;
	while @a<=@max
	BEGIN
		set @i=(select count(SoNamLV) from NamLV where SoNamLV=@a)
		set @dem=@dem+@i
		set @a=@a+1
	END
	INSERT INTO @table VALUES(@dem);
	RETURN
END

SELECT * FROM dbo.NVLVtren_i(4);
