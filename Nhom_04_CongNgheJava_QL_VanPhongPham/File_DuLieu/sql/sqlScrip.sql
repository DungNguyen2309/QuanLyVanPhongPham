USE [master]
GO
/****** Object:  Database [QUANLY_VPP]    Script Date: 4/23/2023 7:47:18 PM ******/
CREATE DATABASE [QUANLY_VPP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLY_VPP', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLY_VPP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLY_VPP_log', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\QUANLY_VPP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUANLY_VPP] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLY_VPP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLY_VPP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLY_VPP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLY_VPP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLY_VPP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLY_VPP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLY_VPP] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLY_VPP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLY_VPP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLY_VPP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLY_VPP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLY_VPP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLY_VPP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLY_VPP', N'ON'
GO
ALTER DATABASE [QUANLY_VPP] SET QUERY_STORE = OFF
GO
USE [QUANLY_VPP]
GO
/****** Object:  Table [dbo].[CHITIETHD]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHD](
	[MACTHD] [int] IDENTITY(1,1) NOT NULL,
	[MAHD] [int] NULL,
	[MASP] [int] NULL,
	[SOLUONG] [int] NULL,
	[THANHTIEN] [money] NULL,
 CONSTRAINT [PK_CHITIETHD] PRIMARY KEY CLUSTERED 
(
	[MACTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MACTPN] [int] IDENTITY(1,1) NOT NULL,
	[MAPN] [int] NULL,
	[MASP] [int] NULL,
	[SOLUONG] [int] NULL,
	[THANHTIEN] [money] NULL,
 CONSTRAINT [PK_CTPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MACTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[MANV] [int] NULL,
	[NGAYLAP] [date] NULL,
	[GIAMGIA] [money] NULL,
	[TONGTIEN] [money] NULL,
 CONSTRAINT [PK_HD] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
	[GIOITINH] [nvarchar](10) NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MALOAISP] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAISP] [nvarchar](200) NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[MALOAISP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](200) NULL,
	[SDT] [varchar](20) NULL,
	[EMAIL] [varchar](100) NULL,
	[DIACHI] [nvarchar](300) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](100) NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[DIACHI] [nvarchar](200) NULL,
	[SDT] [varchar](20) NULL,
	[CHUCVU] [int] NULL,
	[TENDN] [varchar](50) NULL,
	[MK] [varchar](50) NULL,
 CONSTRAINT [PK_NV] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TENDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[MANCC] [int] NULL,
	[MANV] [int] NULL,
	[NGAYLAP] [date] NULL,
	[TONGTIEN] [money] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](200) NULL,
	[MALOAI] [int] NULL,
	[DONGIA] [money] NULL,
	[SOLUONGTON] [int] NULL,
 CONSTRAINT [PK_SP] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CHIIETHD_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CHIIETHD_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHD_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CHITIETHD_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_CTPN] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_CTPN]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_SP_CTPN] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_SP_CTPN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_LOAI_SANPHAM] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISP] ([MALOAISP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_LOAI_SANPHAM]
GO
/****** Object:  StoredProcedure [dbo].[loginSP]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[loginSP]
@username nvarchar(10),
@pass nvarchar(10)
as
begin 
	 if exists (select * from NHANVIEN where TENDN = @Username and MK = @pass and CHUCVU = 1)
        select 1 as code
    else if exists (select * from NHANVIEN where TENDN = @Username and MK = @pass and CHUCVU= 0)
        select 0 as code
    else if exists(select * from NHANVIEN where TENDN = @Username and MK != @pass) 
        select 2 as code
    else select 3 as code
end
GO
/****** Object:  StoredProcedure [dbo].[SearchProduct]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchProduct]
    @keyword NVARCHAR(200)
AS
BEGIN
    SELECT MASP, TENSP, MALOAI, DONGIA, SOLUONGTON
    FROM SANPHAM
    WHERE TENSP LIKE '%'+@keyword+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LayHoaDonTrongKhoangThoiGian]    Script Date: 4/23/2023 7:47:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_LayHoaDonTrongKhoangThoiGian]
    @NgayBatDau DATE,
    @NgayKetThuc DATE
AS
BEGIN
    SELECT *
    FROM HOADON
    WHERE NGAYLAP BETWEEN @NgayBatDau AND @NgayKetThuc
END
GO
USE [master]
GO
ALTER DATABASE [QUANLY_VPP] SET  READ_WRITE 
GO
