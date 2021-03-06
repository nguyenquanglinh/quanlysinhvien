use master
go
create database [QuanLyDiemSinhVien]
go
USE [QuanLyDiemSinhVien]
GO
/****** Object:  Table [dbo].[ChiTietKhieuNai]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhieuNai](
	[MaCTKN] [int] IDENTITY(1,1) NOT NULL,
	[MaKN] [int] NOT NULL,
	[YKienSinhVien] [int] NULL,
	[YKienGiaoVien] [int] NULL,
	[TrangThaiSinhVien] [bit] NULL,
	[TrangThaiGiaoVien] [bit] NULL,
 CONSTRAINT [PK_ChiTietKhieuNai] PRIMARY KEY CLUSTERED 
(
	[MaCTKN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietMonHoc]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietMonHoc](
	[MaGV] [int] NOT NULL,
	[MaMon] [int] NOT NULL,
	[PhongHoc] [nvarchar](50) NULL,
	[ThoiGianHoc] [nvarchar](50) NULL,
	[MaChiTietMon] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GiaoVien_MonHoc_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTietMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[QueQuan] [nvarchar](50) NULL,
	[ChoOHienTai] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[BangCap] [nvarchar](50) NULL,
	[ChungChi] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [int] NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[SoTinChi] [int] NULL,
	[SoTiet] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTri](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NULL,
	[Quyen] [nvarchar](4) NULL,
 CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[TenSinhVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[TenLop] [nvarchar](50) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
	[PassWord] [nchar](10) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[ChoOHienTai] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien_ChiTietMonHoc]    Script Date: 5/25/2021 12:54:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien_ChiTietMonHoc](
	[MaSV] [int] NOT NULL,
	[MaChiTietMon] [int] NOT NULL,
	[DiemCC] [float] NULL,
	[DiemTX] [float] NULL,
	[DiemCK] [float] NULL,
	[MaDiemChiTietMonHoc] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SinhVien_ChiTietMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaDiemChiTietMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[ChiTietMonHoc] CHECK CONSTRAINT [FK_GiaoVien_MonHoc_GiaoVien]
GO
ALTER TABLE [dbo].[ChiTietMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc_MonHoc] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
GO
ALTER TABLE [dbo].[ChiTietMonHoc] CHECK CONSTRAINT [FK_GiaoVien_MonHoc_MonHoc]
GO
ALTER TABLE [dbo].[SinhVien_ChiTietMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_ChiTietMonHoc_ChiTietMonHoc] FOREIGN KEY([MaChiTietMon])
REFERENCES [dbo].[ChiTietMonHoc] ([MaChiTietMon])
GO
ALTER TABLE [dbo].[SinhVien_ChiTietMonHoc] CHECK CONSTRAINT [FK_SinhVien_ChiTietMonHoc_ChiTietMonHoc]
GO
ALTER TABLE [dbo].[SinhVien_ChiTietMonHoc]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_ChiTietMonHoc_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[SinhVien_ChiTietMonHoc] CHECK CONSTRAINT [FK_SinhVien_ChiTietMonHoc_SinhVien]
GO
