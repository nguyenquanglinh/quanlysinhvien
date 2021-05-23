use master
go
create database Quanlydiem
go
USE Quanlydiem
GO
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [nvarchar](10) NOT NULL,
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
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[MaMon] [nvarchar](10) NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HanhKiem] [nvarchar](20) NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA2]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA2](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemThiLai] [nvarchar](50) NULL,
	[HocKi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA3]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA3](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](5) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemHocLai] [float] NULL,
	[HocKi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[MaKhoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOGIN]    Script Date: 5/23/2021 10:37:35 AM ******/
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
/****** Object:  Table [dbo].[tblLOP]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [nvarchar](10) NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMON]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [nvarchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [nvarchar](10) NULL,
	[HocKi] [nvarchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_tblMON_1] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 5/23/2021 10:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSv] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH13      ', N'Nguyên Văn Nam                ', N'Nam       ', N'(0979) 052-066', N'Quocvanict@gmail.com', N'Cơ Hữu              ', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH3       ', N'Ngô Văn Bình                  ', N'Nam', N'(    )    -', N'                    ', N'Cơ Hữu', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH4       ', N'Nguyễn Thị Lan', N'Nữ', N'(0979) 056-769', N'                    ', N'                    ', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH5       ', N'Lê Văn Pha', N'Nam', N'(    )    -', N'                    ', N'', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH6       ', N'Đỗ Thị Mai', N'Nữ', N'(    )    -', N'                    ', N'                    ', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH7       ', N'Phạm Văn Hoàng', N'Nam', N'(    )    -', N'                    ', N'Cơ hữu              ', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH8       ', N'Đỗ Thị Mơ', N'Nữ', N'(    )    -', N'                    ', N'Thỉnh giảng', NULL)
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH9       ', N'Hoàng Thị Hà', N'Nữ', N'(0988) 232-399', N'                    ', N'Thỉnh giảng', NULL)
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'1', N'Phạm Văn Châu', N'08T2', N'Pascal', 6, 2, NULL, 3.2, N'Tốt', 1, N'Thi lại')
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'3', N'Lý Trung	Đức', N'08T2', N'Pascal', 8, 6, NULL, 6.6, N'Tốt', 1, N'')
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'2', N'Vũ Khắc Chung', N'08T2', N'PPT', 5, 7, NULL, 6.4, N'Khá ', 2, N'')
GO
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'3    ', N'tttttt              ', N'06CT1     ', N'Cấu trúc dữ liệu &giải thuật  ', N'6    ', N'4    ')
GO
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
GO
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin             ')
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'D', N'Điện-điện tử')
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K', N'Kế toán')
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KT', N'Kiến trúc   ')
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'abc', N'123', N'', N'', N'(    )    -', N'', N'Member')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'abcd', N'123', N'khieu', N'Nam', N'(0973) 532-162', N'dinhkhieu@gmail.com', N'Member')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'admin', N'admin', N'', N'', N'(    )    -', N'', N'Admin	')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'dinhkhieu', N'123', N'Hoàng Đình Khiếu', N'Nam', N'(    )    -', N'', N'Admin')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'huudien', N'123', N'Nguyễn Hữu Diện', N'Nam', N'(    )    -', N'', N'Admin')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'quocvan   ', N'123', N'Đỗ Quốc Văn', N'Nam', N'(    )    -', N'', N'Admin')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'06CT1', N'06CT1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'07CT1', N'07CT1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'07T1', N'07T1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'08K1', N'08K1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'08K2', N'08K2')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'08T1', N'08T1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'08T2', N'08T2')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'D', N'D1', N'D1')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'TCNH', N'TCNH1', N'TCNH1')
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'CSDL', N'Cơ Sở Dữ Liêij', 45, N'CH9', N'2', NULL)
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'Pascal', N'Pascal', 45, N'CH4', N'1', N'CNTT      ')
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'PPT', N'Phương Pháp tính ', 45, N'CH3', N'2', N'CNTT      ')
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TCTT', N'Tài chính tiền tệ', 45, N'CH5', N'2', N'K         ')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'1', N'Phạm Văn Châu', N'06/08/1990', N'Nam', N'Bắc Giang', N'08T2')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'2', N'Vũ Khắc Chung', N'05/02/1980', N'Nam', N'Bắc Giang', N'08T2')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'3', N'Lý Trung	Đức', N'19/01/1991', N'Nam', N'Hà Tây', N'08T2')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'4', N'Nguyễn Thị Thu Hiền', N'19/01/1991', N'Nữ', N'Hà Tây', N'08T2')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'5', N'ui', NULL, N'nam', N'ho', N'08t1')
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
REFERENCES [dbo].[tblSINH_VIEN] ([MaSv])
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
