USE [master]
GO 
/****** Object:  Database [QuanLyNhanSu]    Script Date: 5/13/2018 12:11:40 AM ******/
CREATE DATABASE [QuanLyNhanSu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhanSu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhanSu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhanSu] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanSu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhanSu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhanSu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhanSu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhanSu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhanSu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhanSu] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhanSu] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [varchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Luong](
	[BacLuong] [varchar](10) NOT NULL,
	[LuongCoBan] [int] NULL,
	[HeSoLuong] [int] NULL,
	[HeSoPhuCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TaiKhoan] [nvarchar](30) NULL,
	[MatKhau] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DanToc] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[SDT] [char](15) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[MaTDHV] [varchar](10) NULL,
	[MaPB] [varchar](10) NULL,
	[BacLuong] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[MaTP] [varchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiGianCongTac]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiGianCongTac](
	[MaNV] [varchar](10) NOT NULL,
	[MaCV] [varchar](10) NOT NULL,
	[NgayNhanChuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrinhDoHocVan]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrinhDoHocVan](
	[MaTDHV] [varchar](10) NOT NULL,
	[TenTrinhDo] [nvarchar](50) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTDHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Nhân Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Trưởng Nhóm')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV03', N'Trưởng Phòng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV04', N'Phó Phòng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV05', N'Phó Nhóm')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV06', N'Giám Đốc')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV07', N'Phó Giám Đốc')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV08', N'Thư Ký')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV09', N'Tổng Giám Đốc')
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'1', 3000000, 1, 1)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'2', 4000000, 1, 1)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'3', 3000000, 2, 1)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'4', 4000000, 2, 1)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'5', 4000000, 2, 2)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'6', 10000000, 1, 1)
INSERT [dbo].[Luong] ([BacLuong], [LuongCoBan], [HeSoLuong], [HeSoPhuCap]) VALUES (N'7', 10000000, 2, 1)
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'user1', N'1')
INSERT [dbo].[NguoiDung] ([TaiKhoan], [MatKhau]) VALUES (N'ngocanh', N'ngocanh')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV01', N'Nguyễn Văn Hoàng', N'Kinh', N'Nam', N'0987656765     ', N'Hà Nội', CAST(N'1996-09-08' AS Date), N'1', N'PB01', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV02', N'Nguyễn Thị Nhung', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB01', N'2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV03', N'Nguyễn Thị Linh', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB03', N'2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV04', N'Nguyễn Văn Huy', N'Kinh', N'Nam', N'0987656765     ', N'Hà Nội', CAST(N'1995-07-08' AS Date), N'1', N'PB04', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV05', N'Nguyễn Thị Hồng', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB04', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV06', N'Nguyễn Thị Lan', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB03', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV07', N'Nguyễn Văn Huy', N'Kinh', N'Nam', N'0987656765     ', N'Hà Nội', CAST(N'1995-07-08' AS Date), N'1', N'PB03', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV08', N'Nguyễn Thị Linh', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'5', N'PB04', N'5')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV09', N'Nguyễn Thị Linh', N'Kinh', N'Nữ', N'0987656568     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB03', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV10', N'Nguyễn Thị Hồng', N'Kinh', N'Nữ', N'0987656567     ', N'Hà Nội', CAST(N'1994-09-08' AS Date), N'2', N'PB04', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV11', N'Nguyễn Văn Huy', N'Kinh', N'Nam', N'0987656765     ', N'Hà Nội', CAST(N'1995-06-28' AS Date), N'1', N'PB04', N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DanToc], [GioiTinh], [SDT], [QueQuan], [NgaySinh], [MaTDHV], [MaPB], [BacLuong]) VALUES (N'NV12', N'Nguyễn Văn Hiếu', N'Kinh', N'Nam', N'0987678876     ', N'Hà Nội', CAST(N'1990-05-05' AS Date), N'2', N'PB01', N'1')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB01', N'Kế Toán', N'NV01', N'Hà Nội', N'0987234765     ')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB02', N'Hành Chính', N'NV03', N'Hà Nam', N'0982347567     ')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB03', N'Bảo Vệ', N'NV02', N'Phú Thọ', N'0973928345     ')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB04', N'CNTT', N'NV04', N'Hà Nội', N'0987654567     ')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB05', N'Thiết Kế', N'NV05', N'Hà Nội', N'0938476348     ')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [MaTP], [DiaChi], [SDT]) VALUES (N'PB06', N'Văn Phòng', N'NV06', N'Hà Nội', N'0938479834     ')
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV01', N'CV01', CAST(N'2017-05-05' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV02', N'CV02', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV03', N'CV01', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV04', N'CV04', CAST(N'2017-12-12' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV05', N'CV03', CAST(N'2017-12-12' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV06', N'CV08', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV07', N'CV01', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV08', N'CV01', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV09', N'CV08', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV10', N'CV01', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV11', N'CV02', CAST(N'2017-12-10' AS Date))
INSERT [dbo].[ThoiGianCongTac] ([MaNV], [MaCV], [NgayNhanChuc]) VALUES (N'NV12', N'CV01', CAST(N'2018-05-05' AS Date))
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTrinhDo], [ChuyenNganh]) VALUES (N'1', N'THPT', N'Bảo Vệ')
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTrinhDo], [ChuyenNganh]) VALUES (N'2', N'Trung Cấp', N'Kế Toán')
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTrinhDo], [ChuyenNganh]) VALUES (N'3', N'Cao Đẳng', N'Hành Chính')
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTrinhDo], [ChuyenNganh]) VALUES (N'4', N'Đại Học', N'CNTT')
INSERT [dbo].[TrinhDoHocVan] ([MaTDHV], [TenTrinhDo], [ChuyenNganh]) VALUES (N'5', N'Cao Học', N'CNTT')
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([BacLuong])
REFERENCES [dbo].[Luong] ([BacLuong])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaTDHV])
REFERENCES [dbo].[TrinhDoHocVan] ([MaTDHV])
GO
ALTER TABLE [dbo].[ThoiGianCongTac]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[ThoiGianCongTac]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD CHECK  (([GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Dương - thu tuc dang nhap
CREATE PROC [dbo].[DangNhap](@TaiKhoan NCHAR(50),@MatKhau NCHAR(50))
AS
BEGIN
SELECT * FROM dbo.NguoiDung WHERE TaiKhoan=@TaiKhoan AND MatKhau=@MatKhau
END

GO
/****** Object:  StoredProcedure [dbo].[DSMaPB]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DSMaPB]
AS
BEGIN
SELECT MaPB
FROM dbo.PhongBan
END;
GO
/****** Object:  StoredProcedure [dbo].[GV_SelectAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GV_SelectAll]
AS
BEGIN
	SELECT *
	FROM GiaoVien
END
GO
/****** Object:  StoredProcedure [dbo].[GV_SelectByID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GV_SelectByID] (@Ma Varchar(10))
AS
BEGIN
	SELECT *
	FROM GiaoVien
	WHERE MaGV = @Ma
ENd
GO
/****** Object:  StoredProcedure [dbo].[NV_SelectAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NV_SelectAll] 
AS
BEGIN
	SELECT dbo.NhanVien.MaNV,HoTen,DanToc,GioiTinh,NhanVien.SDT,QueQuan,NgaySinh,TenTrinhDo,TenPB,TienLuong=(LuongCoBan + LuongCoBan*HeSoLuong +HeSoLuong*100000),TenChucVu 
	FROM dbo.NhanVien, dbo.PhongBan,dbo.TrinhDoHocVan,dbo.Luong,dbo.ChucVu,dbo.ThoiGianCongTac
	WHERE  PhongBan.MaPB = NhanVien.MaPB   
	AND  Luong.BacLuong = NhanVien.BacLuong  
	AND  TrinhDoHocVan.MaTDHV = NhanVien.MaTDHV
	AND MaChucVu = MaCV AND NhanVien.MaNV = ThoiGianCongTac.MaNV
 END
GO
/****** Object:  StoredProcedure [dbo].[NV_SelectByID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NV_SelectByID] (@MaNV varchar(10))
AS
BEGIN
		SELECT * FROM dbo.NhanVien WHERE MaNV = @MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[PB_Select]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[PB_Select] 
AS
BEGIN
		SELECT * FROM dbo.PhongBan 
END
GO
/****** Object:  StoredProcedure [dbo].[PB_SelectAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PB_SelectAll] 
AS
BEGIN
		SELECT dbo.PhongBan.MaPB,TenPB,MaTP,DiaChi,dbo.PhongBan.SDT,COUNT(MaNV) AS SoLuong FROM dbo.PhongBan, dbo.NhanVien
		WHERE NhanVien.MaPB = PhongBan.MaPB
		GROUP BY  dbo.PhongBan.MaPB,TenPB,MaTP,DiaChi,dbo.PhongBan.SDT
END
GO
/****** Object:  StoredProcedure [dbo].[PB_SelectByID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PB_SelectByID] (@Ma varchar(10))
AS
BEGIN
		SELECT * FROM dbo.PhongBan WHERE MaPB = @Ma
END

GO
/****** Object:  StoredProcedure [dbo].[SP_DangKi]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DangKi](@taikhoan NVARCHAR(30),@matkhau NVARCHAR(30))
AS
BEGIN
INSERT dbo.NguoiDung
        ( TaiKhoan, MatKhau )
VALUES  ( @taikhoan, -- TaiKhoan - nvarchar(30)
          @matkhau  -- MatKhau - nvarchar(30)
          )
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Luong_SelectAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Luong_SelectAll] 
AS
BEGIN
		SELECT * FROM dbo.Luong
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Luong_SelectByID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Luong_SelectByID] (@BacLuong VARCHAR(10) )
AS
BEGIN
		SELECT * FROM dbo.Luong WHERE BacLuong = @BacLuong
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Sua_TDHV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Sua_TDHV] (@MaTDHV VARCHAR(10),@TenTDHV NVARCHAR(50),@ChuyenNganh NVARCHAR(50))
AS
BEGIN
	UPDATE dbo.TrinhDoHocVan
	SET TenTrinhDo =@TenTDHV,ChuyenNganh=@ChuyenNganh
	WHERE MaTDHV=@MaTDHV
END

GO
/****** Object:  StoredProcedure [dbo].[SP_SuaLuong]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SuaLuong] (@BacLuong VARCHAR(10), @LuongCoBan INT , @HeSoLuong INT , @HeSoPhuCap INT )
AS
BEGIN
	UPDATE dbo.Luong SET LuongCoBan = @LuongCoBan, HeSoLuong = @HeSoLuong, HeSoPhuCap = @HeSoPhuCap
	WHERE BacLuong = @BacLuong
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TDHV_SelectAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TDHV_SelectAll]
AS
BEGIN
SELECT * FROM dbo.TrinhDoHocVan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TDHV_SelectByID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TDHV_SelectByID] (@MaTDHV INT )
AS
BEGIN
		SELECT * FROM dbo.TrinhDoHocVan WHERE MaTDHV = @MaTDHV
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Them_TDHV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_Them_TDHV] (@MaTDHV VARCHAR(10),@TenTDHV NVARCHAR(50),@ChuyenNganh NVARCHAR(50))
AS
BEGIN
	INSERT dbo.TrinhDoHocVan
	VALUES  ( @MaTDHV, @TenTDHV,@ChuyenNganh)
END


GO
/****** Object:  StoredProcedure [dbo].[SP_ThemLuong]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ThemLuong] (@BacLuong VARCHAR(10), @LuongCoBan INT , @HeSoLuong INT , @HeSoPhuCap INT )
AS
BEGIN
	INSERT dbo.Luong( BacLuong ,LuongCoBan ,HeSoLuong ,HeSoPhuCap)
	VALUES  (@BacLuong, @LuongCoBan, @HeSoLuong, @HeSoPhuCap)
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_Xoa_TDHV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Xoa_TDHV] (@MaTDHV varchar(10))
AS
BEGIN
		DELETE dbo.TrinhDoHocVan WHERE MaTDHV = @MaTDHV
END


GO
/****** Object:  StoredProcedure [dbo].[SP_XoaLuong]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_XoaLuong](@BacLuong VARCHAR(10))
AS
BEGIN
	DELETE dbo.Luong WHERE BacLuong = @BacLuong
END 
GO
/****** Object:  StoredProcedure [dbo].[SPCVSELECTAll]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPCVSELECTAll]
AS
BEGIN
SELECT * FROM dbo.ChucVu
END

GO
/****** Object:  StoredProcedure [dbo].[SPCVSELECTBYID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPCVSELECTBYID] (@machucvu VARCHAR(10) )
AS
BEGIN
		SELECT * FROM dbo.ChucVu WHERE MaChucVu = @machucvu
END

GO
/****** Object:  StoredProcedure [dbo].[SPSUACV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPSUACV] (@machucvu VARCHAR(10),@tenchucvu NVARCHAR(50))
AS
BEGIN
	UPDATE dbo.ChucVu
	SET TenChucVu=@tenchucvu
	WHERE MaChucVu=@machucvu
END
GO
/****** Object:  StoredProcedure [dbo].[SPSUATGCT]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPSUATGCT] (@manv VARCHAR(10),@macv VARCHAR(10),@ngaynhanchuc DATE)
AS
BEGIN
	UPDATE dbo.ThoiGianCongTac
	SET MaCV=@macv,NgayNhanChuc=@ngaynhanchuc
	WHERE MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[SPTGCTSELECTAll1]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPTGCTSELECTAll1]
AS
BEGIN
SELECT * FROM dbo.ThoiGianCongTac
END

GO
/****** Object:  StoredProcedure [dbo].[SPTGCTSELECTBYID]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPTGCTSELECTBYID] (@manv VARCHAR(10) )
AS
BEGIN
		SELECT * FROM dbo.ThoiGianCongTac WHERE MaNV = @manv
END

GO
/****** Object:  StoredProcedure [dbo].[SPTHEMCV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPTHEMCV] (@machucvu VARCHAR(10),@tenchucvu NVARCHAR(50))
AS
BEGIN
	INSERT dbo.ChucVu
	        ( MaChucVu, TenChucVu )
	VALUES  ( @machucvu,@tenchucvu)
	
END

GO
/****** Object:  StoredProcedure [dbo].[SPTHEMTGCT]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPTHEMTGCT] (@manv VARCHAR(10),@macv VARCHAR(10),@ngaynhanchuc DATE)
AS
BEGIN
	INSERT dbo.ThoiGianCongTac
	        ( MaNV, MaCV, NgayNhanChuc )
	VALUES  ( @manv,@macv,@ngaynhanchuc)
	
END
GO
/****** Object:  StoredProcedure [dbo].[SPXOACV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPXOACV] (@machucvu varchar(10))
AS
BEGIN
		DELETE dbo.ChucVu WHERE MaChucVu=@machucvu
END

GO
/****** Object:  StoredProcedure [dbo].[SPXOATGCT]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SPXOATGCT] (@manv varchar(10))
AS
BEGIN
		DELETE dbo.ThoiGianCongTac WHERE MaNV=@manv
END

GO
/****** Object:  StoredProcedure [dbo].[Sua_GV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sua_GV](@MaGV varchar(10), @TenGV nvarchar(50),@MaMon VARCHAR(10), @GioiTinh NVARCHAR(5), @NgaySinh date, @DiaChi nvarchar(150), @SDT VARCHAR(10), @Luong int)
As
BEGIN 
	UPDATE GiaoVien
	SET TenGV = @TenGV,MaMon = @MaMon,GioiTinh = @GioiTinh,NgaySinh = @NgaySinh,DiaChi = @NgaySinh,Sdt = @SDT,Luong = @Luong
	WHERE MaGV = @MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[Sua_PB]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sua_PB] (@MaPb varchar(10), @TenPB nvarchar(30), @MaTP varchar(10),@DiaChi Nvarchar(30), @Sdt Char(11))
AS
BEGIN
	UPDATE dbo.PhongBan
	SET TenPB = @TenPB,MaTP = @MaTP,DiaChi = @DiaChi,SDT=@Sdt
	WHERE MaPB = @MaPb
END
GO
/****** Object:  StoredProcedure [dbo].[SuaNV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaNV](@MaNV VARCHAR(10), @HoTen NVARCHAR(50), @DanToc NVARCHAR(50), @GioiTinh NVARCHAR(5), @SDT CHAR(15), @QueQuan NVARCHAR(50), @NgaySinh DATE, @MaTDHV VARCHAR(10), @MaPB VARCHAR(10), @BacLuong VARCHAR(10))
AS
BEGIN
UPDATE dbo.NhanVien
SET HoTen=@HoTen,DanToc=@DanToc,GioiTinh=@GioiTinh,SDT=@SDT,QueQuan=@QueQuan,NgaySinh=@NgaySinh,MaTDHV=@MaTDHV,MaPB=@MaPB,BacLuong=@BacLuong
WHERE MaNV=@MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[Them_GV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Them_GV](@MaGV varchar(10), @TenGV nvarchar(50),@MaMon VARCHAR(10), @GioiTinh NVARCHAR(5), @NgaySinh date, @DiaChi nvarchar(150), @SDT VARCHAR(10), @Luong int)
As
BEGIN 
	INSERT INTO GiaoVien(MaGV,TenGV,MaMon,GioiTinh,NgaySinh,DiaChi,Sdt,Luong)
	VALUES(@MaGV,@TenGV,@MaMon,@GioiTinh,@NgaySinh,@DiaChi,@SDT,@Luong)
END
GO
/****** Object:  StoredProcedure [dbo].[Them_PB]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Them_PB] (@MaPb varchar(10), @TenPB nvarchar(30), @MaTP varchar(10),@DiaChi Nvarchar(30), @Sdt Char(11))
AS
BEGIN
	INSERT INTO dbo.PhongBan( MaPB, TenPB,MaTP, DiaChi, SDT )
	VALUES  (@MaPb,@TenPB,@MaTP,@DiaChi,@Sdt )
END
GO
/****** Object:  StoredProcedure [dbo].[ThemNV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemNV](@MaNV VARCHAR(10), @HoTen NVARCHAR(50), @DanToc NVARCHAR(50), @GioiTinh NVARCHAR(5), @SDT CHAR(15), @QueQuan NVARCHAR(50), @NgaySinh DATE, @MaTDHV VARCHAR(10), @MaPB NVARCHAR(50), @BacLuong VARCHAR(10))
AS
BEGIN
INSERT INTO dbo.NhanVien( MaNV , HoTen ,DanToc ,GioiTinh ,SDT ,QueQuan ,NgaySinh ,MaTDHV ,MaPB ,BacLuong)
VALUES  ( @MaNV,@HoTen,@DanToc,@GioiTinh,@SDT,@QueQuan,@NgaySinh,@MaTDHV,@MaPB,@BacLuong)
END
GO
/****** Object:  StoredProcedure [dbo].[XemMaPB]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XemMaPB]
AS
BEGIN
SELECT TenPB FROM dbo.NhanVien INNER JOIN dbo.PhongBan ON PhongBan.MaPB = NhanVien.MaPB AND PhongBan.SDT = NhanVien.SDT
END;
GO
/****** Object:  StoredProcedure [dbo].[Xoa_GV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Xoa_GV](@Ma VARCHAR(10))
AS
BEGIN
DELETE GiaoVien
WHERE MaGV=@Ma
END
GO
/****** Object:  StoredProcedure [dbo].[Xoa_PB]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Xoa_PB] (@Ma varchar(10))
AS
BEGIN
		DELETE dbo.PhongBan WHERE MaPB = @Ma
END
GO
/****** Object:  StoredProcedure [dbo].[XoaNV]    Script Date: 5/13/2018 12:11:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaNV](@MaNV VARCHAR(10))
AS
BEGIN
DELETE dbo.NhanVien
WHERE MaNV=@MaNV
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhanSu] SET  READ_WRITE 
GO
