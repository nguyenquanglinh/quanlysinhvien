USE [QuanLyDiem]
GO
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](20) NULL,
	[PhanLoaiGV] [nvarchar](20) NULL,
	[Anh] [bit] NULL,
 CONSTRAINT [PK_tblGIANG_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [int] NOT NULL,
	[MaLop] [int] NULL,
	[MaMon] [int] NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[KyHieu] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[MaKhoa] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblKHOA_1] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOGIN]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOGIN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOGIN] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOP]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [int] NULL,
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[KyHieuLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMON]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [int] NULL,
	[HocKi] [nvarchar](10) NULL,
	[MaKhoa] [int] NULL,
	[KyHieuMon] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMON_1] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 5/23/2021 8:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [int] NOT NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblGIANG_VIEN] ON 

INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (1, N'Giảng viên 1', N'nam', N'12345678', N'gv1@gmail.com', N'giỏi', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (2, N'Giảng viên 2', N'nữ', N'12345677', N'gv2@gmail.com', N'xuất sắc', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (3, N'Giảng viên 3', N'nam', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (4, N'Giảng viên 4', N'nữ', NULL, N'gv4@gmail.com', N'khá', NULL)
SET IDENTITY_INSERT [dbo].[tblGIANG_VIEN] OFF
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HocKi], [GhiChu]) VALUES (1, 1, 1, 9, 9, 9, 9, 1, N'tốt')
INSERT [dbo].[tblKET_QUA] ([MaSV], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HocKi], [GhiChu]) VALUES (2, 1, 2, 9, 9, 9, 9, 2, N'tốt')
INSERT [dbo].[tblKET_QUA] ([MaSV], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HocKi], [GhiChu]) VALUES (3, 2, 3, 8, 8, 8, 8, 1, N'khá')
INSERT [dbo].[tblKET_QUA] ([MaSV], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HocKi], [GhiChu]) VALUES (4, 2, 4, 7, 7, 7, 7, 2, N'khá')
GO
SET IDENTITY_INSERT [dbo].[tblKHOA] ON 

INSERT [dbo].[tblKHOA] ([KyHieu], [TenKhoa], [MaKhoa]) VALUES (N'CNTT', N'Công nghệ thông tin', 6)
INSERT [dbo].[tblKHOA] ([KyHieu], [TenKhoa], [MaKhoa]) VALUES (N'CDT', N'Cơ Điện tử', 7)
INSERT [dbo].[tblKHOA] ([KyHieu], [TenKhoa], [MaKhoa]) VALUES (N'CK', N'Cơ khí', 8)
SET IDENTITY_INSERT [dbo].[tblKHOA] OFF
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'abc', N'123', N'', N'', N'(    )    -', N'', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'abcd', N'123', N'khieu', N'Nam', N'(0973) 532-162', N'dinhkhieu@gmail.com', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'admin', N'admin', N'', N'', N'(    )    -', N'', N'Admin	')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'dinhkhieu', N'123', N'Hoàng Đình Khiếu', N'Nam', N'(    )    -', N'', N'Admin')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'huudien', N'123', N'Nguyễn Hữu Diện', N'Nam', N'(    )    -', N'', N'Admin')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'quocvan   ', N'123', N'Đỗ Quốc Văn', N'Nam', N'(    )    -', N'', N'Admin')
GO
SET IDENTITY_INSERT [dbo].[tblLOP] ON 

INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (6, 1, N'Công nghệ thông tin 1', N'CNTT1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (6, 2, N'Công nghệ thông tin 2', N'CNTT2')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (7, 3, N'Cơ điên tử 1', N'CDT1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (7, 4, N'Cơ điện tử 2', N'CDT2')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (8, 11, N'Cơ khí 1', N'CK1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop], [KyHieuLop]) VALUES (8, 12, N'Cơ khí 2', N'CK2')
SET IDENTITY_INSERT [dbo].[tblLOP] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMON] ON 

INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa], [KyHieuMon]) VALUES (1, N'Giải tích 1', 10, 1, N'1', 6, N'GT1')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa], [KyHieuMon]) VALUES (2, N'Giải tích 2', 10, 1, N'2', 6, N'GT2')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa], [KyHieuMon]) VALUES (3, N'Vật lý 1', 10, 2, N'1', 7, N'VL1')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa], [KyHieuMon]) VALUES (4, N'Vật lý 2', 10, 2, N'2', 7, N'VL2')
SET IDENTITY_INSERT [dbo].[tblMON] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSINH_VIEN] ON 

INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (1, N'sinh viên 1', N'1/1/1998', N'nam', N'hà nội', 1)
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (2, N'sinh viên 2', N'1/1/1999', N'nữ', N'bắc giang', 1)
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (3, N'sinh viên 3', N'1/1/1998', N'nữ', N'bắc ninh', 2)
INSERT [dbo].[tblSINH_VIEN] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (4, N'sinh viên 4', N'1/1/1999', N'nam', N'hải dương', 2)
SET IDENTITY_INSERT [dbo].[tblSINH_VIEN] OFF
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblLOP]
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblMON] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMON] ([MaMon])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblMON]
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tblSINH_VIEN] ([MaSV])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN]
GO
ALTER TABLE [dbo].[tblLOP]  WITH CHECK ADD  CONSTRAINT [FK_tblLOP_tblKHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[tblKHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[tblLOP] CHECK CONSTRAINT [FK_tblLOP_tblKHOA]
GO
ALTER TABLE [dbo].[tblMON]  WITH CHECK ADD  CONSTRAINT [FK_tblMON_tblGIANG_VIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGIANG_VIEN] ([MaGV])
GO
ALTER TABLE [dbo].[tblMON] CHECK CONSTRAINT [FK_tblMON_tblGIANG_VIEN]
GO
ALTER TABLE [dbo].[tblSINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_tblSINH_VIEN_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblSINH_VIEN] CHECK CONSTRAINT [FK_tblSINH_VIEN_tblLOP]
GO
