USE [master]
GO
/****** Object:  Database [GalaxyMobile]    Script Date: 9/19/2018 2:11:41 PM ******/
CREATE DATABASE [GalaxyMobile]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GalaxyMobile', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\GalaxyMobile.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GalaxyMobile_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\GalaxyMobile_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GalaxyMobile] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GalaxyMobile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GalaxyMobile] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GalaxyMobile] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GalaxyMobile] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GalaxyMobile] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GalaxyMobile] SET ARITHABORT OFF 
GO
ALTER DATABASE [GalaxyMobile] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GalaxyMobile] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GalaxyMobile] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GalaxyMobile] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GalaxyMobile] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GalaxyMobile] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GalaxyMobile] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GalaxyMobile] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GalaxyMobile] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GalaxyMobile] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GalaxyMobile] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GalaxyMobile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GalaxyMobile] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GalaxyMobile] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GalaxyMobile] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GalaxyMobile] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GalaxyMobile] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GalaxyMobile] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GalaxyMobile] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GalaxyMobile] SET  MULTI_USER 
GO
ALTER DATABASE [GalaxyMobile] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GalaxyMobile] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GalaxyMobile] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GalaxyMobile] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GalaxyMobile]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 9/19/2018 2:11:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [varchar](15) NOT NULL,
	[MaKieu] [varchar](50) NOT NULL,
	[MaCuaHang] [varchar](10) NOT NULL,
	[SoluongSP] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaSP] [varchar](30) NOT NULL,
	[MaKieu] [varchar](50) NOT NULL,
	[MaMau] [varchar](20) NOT NULL,
	[SoluongSP] [int] NOT NULL,
	[Anh] [image] NULL,
 CONSTRAINT [PK_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaKieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuaHang](
	[MaCuaHang] [varchar](10) NOT NULL,
	[TenCuaHang] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DongSanPham]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DongSanPham](
	[MaDSP] [nvarchar](50) NOT NULL,
	[TenDong] [nvarchar](100) NOT NULL,
	[MaHSX] [varchar](15) NOT NULL,
 CONSTRAINT [PK_DongSanPham] PRIMARY KEY CLUSTERED 
(
	[MaDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [varchar](15) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[HTGiaoHang] [nvarchar](20) NOT NULL,
	[NgayLapHD] [date] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HSX]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HSX](
	[MaHSX] [varchar](15) NOT NULL,
	[TenHSX] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_HSX] PRIMARY KEY CLUSTERED 
(
	[MaHSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SDT] [varchar](13) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaKieu] [varchar](50) NOT NULL,
	[MaCuaHang] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiNV]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiNV](
	[MaLoaiNV] [varchar](15) NOT NULL,
	[TenLoaiNV] [nvarchar](20) NULL,
 CONSTRAINT [PK_LoaiNV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [varchar](10) NOT NULL,
	[TenLSP] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [varchar](10) NOT NULL,
	[TenLoaiTK] [nchar](10) NOT NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MauSP]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MauSP](
	[MaMau] [varchar](20) NOT NULL,
	[Mau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MauSP] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[MaCuaHang] [varchar](10) NOT NULL,
	[MaLoaiNV] [varchar](15) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](13) NULL,
	[Luong] [decimal](18, 0) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](30) NOT NULL,
	[TenSP] [nvarchar](30) NOT NULL,
	[MaLSP] [varchar](10) NOT NULL,
	[Giá] [decimal](18, 2) NOT NULL,
	[CPU] [nvarchar](100) NOT NULL,
	[Ram] [varchar](10) NULL,
	[BoNhoTrong] [varchar](10) NULL,
	[BoNhoNgoai] [varchar](10) NULL,
	[ManHinh] [nvarchar](30) NULL,
	[DungLuongPin] [nvarchar](10) NULL,
	[Camera] [nvarchar](50) NULL,
	[CardManHinh] [nvarchar](50) NULL,
	[OS] [varchar](20) NULL,
	[Port] [nvarchar](50) NULL,
	[TrongLuong] [varchar](20) NULL,
	[ThongTinKhac] [nchar](10) NULL,
	[MaDSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/19/2018 2:11:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[MaCuaHang] [varchar](10) NOT NULL,
	[MaLoaiTK] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi]) VALUES (N'cs1', N'Galaxy Mobile 1', N'4 Hồ Bá Phấn')
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi]) VALUES (N'cs2', N'Galaxy Mobile 2', N'1268 Định Hòa, Thủ Dầu Một,Tỉnh Bình Dương')
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi]) VALUES (N'ts', N'Galaxy Center', N'1 Võ Văn Ngân, Thủ Đức, Tp.HCM')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'ipX', N'Iphone X', N'apple')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'lnvK', N'Lenovo K', N'lenovo')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'lnvS', N'Lenovo S', N'lenovo')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'lnvVibe', N'Lenovo Vibe', N'lenovo')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'ssA', N'Sam Sung A', N'samsung')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'ssJ', N'SamSung J', N'samsung')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'ssNote', N'SamSung Note', N'samsung')
INSERT [dbo].[DongSanPham] ([MaDSP], [TenDong], [MaHSX]) VALUES (N'ssS', N'SamSung S', N'samsung')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'apple', N'Apple')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'google', N'Google')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'htc', N'HTC')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'lenovo', N'Lenovo')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'lg', N'LG')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'microsoft', N'microsoft')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'oppo', N'Oppo')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'samsung', N'SamSung')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'sony', N'Sony')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'toshiba', N'Toshiba')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'vivo', N'Vivo')
INSERT [dbo].[HSX] ([MaHSX], [TenHSX]) VALUES (N'xiaomi', N'Xiaomi')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'admin', N'Admintrastor')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'bh', N'Nhân viên bán hàng')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'bv', N'Bảo vệ')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'qlch', N'Quản lí cửa hàng')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'qlk', N'Quản lí kho hàng')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'qlns', N'Quản lí nhân sự')
INSERT [dbo].[LoaiNV] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'tn', N'Nhân viên thu ngân')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'dt', N'Điện Thoại')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'lap', N'Laptop')
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'001', N'ts', N'admin', N'Admin', N'nam', NULL, NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'002', N'ts', N'qlk', N'Phan Thanh Nam', N'nam', NULL, N'01232333232', CAST(10000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'003', N'ts', N'qlns', N'Lâm Phước Bảo', N'nam', NULL, N'43432342342', CAST(10000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'004', N'cs1', N'qlch', N'Nguyễn Thiên Quốc', N'nam', NULL, N'12363463453', CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'005', N'cs2', N'qlch', N'Trần Đăng Khôi Nguyên', N'nam', NULL, N'42342342343', CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'006', N'cs1', N'tn', N'Tiểu Vy', N'nữ', NULL, N'32432432432', CAST(2500000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'007', N'cs2', N'tn', N'Nguyễn Thị Nữ', N'nữ', NULL, N'34234234343', CAST(2500000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'008', N'cs1', N'bh', N'Nguyễn Văn A', N'nam', NULL, N'33423343324', CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'009', N'cs2', N'bh', N'Nguyễn Thị  B', N'nữ', NULL, N'53534534634', CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'010', N'cs1', N'bv', N'Nguyễn Văn C', N'nam', NULL, N'12131231434', CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[NhanVien] ([MaNV], [MaCuaHang], [MaLoaiNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [Luong]) VALUES (N'011', N'cs2', N'bv', N'Nguyễn Văn D', N'nam', NULL, N'42342354353', CAST(500000 AS Decimal(18, 0)))
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSP] FOREIGN KEY([MaKieu])
REFERENCES [dbo].[ChiTietSP] ([MaKieu])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietSP]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_MauSP] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSP] ([MaMau])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_MauSP]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham]
GO
ALTER TABLE [dbo].[DongSanPham]  WITH CHECK ADD  CONSTRAINT [FK_DongSanPham_HSX] FOREIGN KEY([MaHSX])
REFERENCES [dbo].[HSX] ([MaHSX])
GO
ALTER TABLE [dbo].[DongSanPham] CHECK CONSTRAINT [FK_DongSanPham_HSX]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD  CONSTRAINT [FK_KhoHang_ChiTietSP] FOREIGN KEY([MaKieu])
REFERENCES [dbo].[ChiTietSP] ([MaKieu])
GO
ALTER TABLE [dbo].[KhoHang] CHECK CONSTRAINT [FK_KhoHang_ChiTietSP]
GO
ALTER TABLE [dbo].[KhoHang]  WITH CHECK ADD  CONSTRAINT [FK_KhoHang_CuaHang] FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[KhoHang] CHECK CONSTRAINT [FK_KhoHang_CuaHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CuaHang] FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CuaHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNV] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNV] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNV]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DongSanPham] FOREIGN KEY([MaDSP])
REFERENCES [dbo].[DongSanPham] ([MaDSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DongSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSP] ([MaLSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_CuaHang] FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_CuaHang]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [GalaxyMobile] SET  READ_WRITE 
GO
