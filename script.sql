USE [Project_BL5]
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 12/8/2021 10:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[mid] [int] NOT NULL,
	[number_out] [int] NOT NULL,
	[total] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 12/8/2021 10:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[kid] [int] IDENTITY(1,1) NOT NULL,
	[kname] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[kid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 12/8/2021 10:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 12/8/2021 10:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[mname] [nvarchar](150) NOT NULL,
	[product_left] [int] NOT NULL,
	[price] [money] NOT NULL,
	[lid] [int] NOT NULL,
 CONSTRAINT [PK_MatHang] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuatHang]    Script Date: 12/8/2021 10:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatHang](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pdate] [date] NOT NULL,
	[kid] [int] NOT NULL,
 CONSTRAINT [PK_PhieuXuatHang] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuXuat] ON 

INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (4, 1, 2, 10, 1000000.0000)
INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (5, 1, 3, 9, 1100000.0000)
INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (6, 2, 4, 12, 1200000.0000)
INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (7, 2, 5, 13, 1300000.0000)
INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (8, 3, 6, 32, 1400000.0000)
INSERT [dbo].[ChiTietPhieuXuat] ([cid], [pid], [mid], [number_out], [total]) VALUES (9, 3, 7, 11, 1500000.0000)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[Kho] ON 

INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (1, N'Kho 1', 1)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (2, N'Kho 2', 1)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (3, N'Kho 3', 2)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (4, N'Kho 4', 2)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (5, N'Kho 5', 3)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (6, N'Kho 6', 3)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (7, N'Kho 7', 4)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (8, N'Kho 8', 4)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (9, N'Kho 9', 5)
INSERT [dbo].[Kho] ([kid], [kname], [lid]) VALUES (10, N'Kho 10', 5)
SET IDENTITY_INSERT [dbo].[Kho] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHang] ON 

INSERT [dbo].[LoaiHang] ([lid], [lname]) VALUES (1, N'Bánh')
INSERT [dbo].[LoaiHang] ([lid], [lname]) VALUES (2, N'Kẹo')
INSERT [dbo].[LoaiHang] ([lid], [lname]) VALUES (3, N'Đồ Uống')
INSERT [dbo].[LoaiHang] ([lid], [lname]) VALUES (4, N'Văn Phòng Phẩm')
INSERT [dbo].[LoaiHang] ([lid], [lname]) VALUES (5, N'Đồ Sinh Hoạt Cá Nhân')
SET IDENTITY_INSERT [dbo].[LoaiHang] OFF
GO
SET IDENTITY_INSERT [dbo].[MatHang] ON 

INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (2, N'Bánh Gạo', 20, 200000.0000, 1)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (3, N'Chocopie', 14, 140000.0000, 1)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (4, N'Bánh Mỳ', 16, 160000.0000, 1)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (5, N'Bánh Bông Lan', 9, 90000.0000, 1)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (6, N'Bánh Flan', 31, 3100000.0000, 1)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (7, N'Kẹo Dẻo', 34, 3400000.0000, 2)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (8, N'Kẹo Mút', 14, 1400000.0000, 2)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (9, N'Kẹo Cao Su', 19, 1900000.0000, 2)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (10, N'Kẹo Chocola', 16, 1600000.0000, 2)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (11, N'Kẹo Sẽ Gầy', 19, 1700000.0000, 2)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (12, N'Coca', 23, 2300000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (13, N'Bò Húc', 28, 2800000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (14, N'Bia', 19, 1900000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (15, N'Pepsi', 14, 1400000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (16, N'Sting', 34, 3400000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (17, N'C2', 12, 1200000.0000, 3)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (18, N'Thước', 3, 3000000.0000, 4)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (19, N'Bút Bi', 2, 2000000.0000, 4)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (21, N'Tẩy', 4, 4000000.0000, 4)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (22, N'Bút Chì', 2, 2000000.0000, 4)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (23, N'Bỉm', 16, 1600000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (24, N'Bàn Chải Đánh Răng', 11, 1100000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (25, N'Kem Đánh Răng', 16, 1600000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (26, N'Băng Vệ Sinh', 18, 1800000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (27, N'Bao Cao Su', 40, 4000000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (28, N'Dao Cạo', 36, 3600000.0000, 5)
INSERT [dbo].[MatHang] ([mid], [mname], [product_left], [price], [lid]) VALUES (29, N'Nước Rửa Bát', 19, 1900000.0000, 5)
SET IDENTITY_INSERT [dbo].[MatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuXuatHang] ON 

INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (1, CAST(N'2021-12-12' AS Date), 1)
INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (2, CAST(N'2021-11-11' AS Date), 1)
INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (3, CAST(N'2021-10-10' AS Date), 2)
INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (4, CAST(N'2021-09-09' AS Date), 2)
INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (5, CAST(N'2021-08-08' AS Date), 3)
INSERT [dbo].[PhieuXuatHang] ([pid], [pdate], [kid]) VALUES (6, CAST(N'2021-07-07' AS Date), 3)
SET IDENTITY_INSERT [dbo].[PhieuXuatHang] OFF
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_MatHang] FOREIGN KEY([mid])
REFERENCES [dbo].[MatHang] ([mid])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_MatHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuatHang] FOREIGN KEY([pid])
REFERENCES [dbo].[PhieuXuatHang] ([pid])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuatHang]
GO
ALTER TABLE [dbo].[Kho]  WITH CHECK ADD  CONSTRAINT [FK_Kho_LoaiHang] FOREIGN KEY([lid])
REFERENCES [dbo].[LoaiHang] ([lid])
GO
ALTER TABLE [dbo].[Kho] CHECK CONSTRAINT [FK_Kho_LoaiHang]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_LoaiHang] FOREIGN KEY([lid])
REFERENCES [dbo].[LoaiHang] ([lid])
GO
ALTER TABLE [dbo].[MatHang] CHECK CONSTRAINT [FK_MatHang_LoaiHang]
GO
ALTER TABLE [dbo].[PhieuXuatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatHang_Kho] FOREIGN KEY([kid])
REFERENCES [dbo].[Kho] ([kid])
GO
ALTER TABLE [dbo].[PhieuXuatHang] CHECK CONSTRAINT [FK_PhieuXuatHang_Kho]
GO
