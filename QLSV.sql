USE [QL_DIEM_SV_CNTT]
GO
/****** Object:  StoredProcedure [dbo].[LayKhachHangTheoNhom]    Script Date: 5/23/2019 11:24:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayKhachHangTheoNhom]
@maNhom nvarchar(50)
AS
SELECT * FROM KhachHang WHERE MaNhom = @maNhom

GO
/****** Object:  StoredProcedure [dbo].[LayToanBoKhachHang]    Script Date: 5/23/2019 11:24:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayToanBoKhachHang]
AS
SELECT * FROM KhachHang

GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 5/23/2019 11:24:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MSSV] [char](10) NOT NULL,
	[MAMH] [varchar](10) NOT NULL,
	[DIEMGK] [float] NULL,
	[DIEMCK] [float] NULL,
	[DIEM10] [float] NULL,
	[DIEMCHU] [char](1) NULL,
 CONSTRAINT [PK_KQ] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 5/23/2019 11:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [varchar](8) NOT NULL,
	[HEDT] [nvarchar](12) NULL,
	[KHOA] [char](9) NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 5/23/2019 11:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [varchar](10) NOT NULL,
	[TENMH] [nvarchar](70) NULL,
	[SOTC] [int] NULL,
 CONSTRAINT [PK_MH] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 5/23/2019 11:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MSSV] [char](10) NOT NULL,
	[HOTEN] [nvarchar](60) NULL,
	[NGAYSINH] [date] NULL,
	[MALOP] [varchar](8) NULL,
	[NOISINH] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](10) NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140061', N'MH101', 3, 5, 4.2, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140061', N'MH102', 6, 9, 7.8, N'B')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140061', N'MH318', 7, 8, 7.6, N'B')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140062', N'MH314', 7, 3, 4.6, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140062', N'MH317', 7, 3, 4.6, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140064', N'MH217', 7, 3, 4.6, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140064', N'MH314', 7, 3, 4.6, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140065', N'MH217', 7, 3, 4.6, N'D')
INSERT [dbo].[KETQUA] ([MSSV], [MAMH], [DIEMGK], [DIEMCK], [DIEM10], [DIEMCHU]) VALUES (N'1001140067', N'MH217', 4, 3, 3.4, N'F')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'04DHTH1', N'ĐẠI HỌC', N'04       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'04DHTH2', N'ĐẠI HỌC', N'04       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'05DHTH1', N'ĐẠI HỌC', N'05       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'05DHTH2', N'ĐẠI HỌC', N'05       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'05DHTH3', N'ĐẠI HỌC', N'05       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'06DHTH1', N'ĐẠI HỌC', N'06       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'06DHTH2', N'ĐẠI HỌC', N'06       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'07DHTH1', N'ĐẠI HỌC', N'07       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'07DHTH2', N'ĐẠI HỌC', N'07       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'07DHTH3', N'ĐẠI HỌC', N'07       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'07DHTH4', N'ĐẠI HỌC', N'07       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'07DHTH5', N'ĐẠI HỌC', N'07       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'08DHTH1', N'ĐẠI HỌC', N'08       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'08DHTH2', N'ĐẠI HỌC', N'08       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'08DHTH3', N'ĐẠI HỌC', N'08       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'08DHTH4', N'ĐẠI HỌC', N'08       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'08DHTH5', N'ĐẠI HỌC', N'08       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH1', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH2', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH3', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH4', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH5', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH6', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'09DHTH7', N'ĐẠI HỌC', N'09       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'14CDTH1', N'CAO ĐẲNG', N'14       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'14CDTH2', N'CAO ĐẲNG', N'14       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'15CDTH1', N'CAO ĐẲNG', N'15       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'15CDTH2', N'CAO ĐẲNG', N'15       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'16CDTH1', N'CAO ĐẲNG', N'16       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'16CDTH2', N'CAO ĐẲNG', N'16       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'17CDTH1', N'CAO ĐẲNG', N'17       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'17CDTH2', N'CAO ĐẲNG', N'17       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'18CDTH1', N'CAO ĐẲNG', N'18       ')
INSERT [dbo].[LOP] ([MALOP], [HEDT], [KHOA]) VALUES (N'18CDTH2', N'CAO ĐẲNG', N'18       ')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH101', N'Giáo dục quốc phòng - an ninh 1', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH102', N'Kỹ năng ứng dụng Công Nghệ Thông Tin', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH103', N'Những nguyên lý cơ bản của chủ nghĩa Mác-Lênin 1', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH201', N'Anh văn A1', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH202', N'Giáo dục quốc phòng - an ninh 2', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH203', N'Giáo dục quốc phòng - an ninh 3', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH204', N'Lập trình hướng đối tượng', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH205', N'Nhập môn lập trình', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH206', N'Những nguyên lý cơ bản của chủ nghĩa Mác-Lênin 2', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH207', N'Pháp luật đại cương', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH208', N'Thực hành lập trình hướng đối tượng', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH209', N'Thực hành nhập môn lập trình', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH210', N'Toán rời rạc', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH216', N'Kiến trúc máy tính', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH217', N'Lý thuyết thông tin', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH218', N'Toán cao cấp A1', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH219', N'Xác suất thống kê', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH301', N'Anh văn A2', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH302', N'Anh văn B1', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH303', N'Cấu trúc dữ liệu và giải thuật', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH304', N'Cơ sở dữ liệu', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH305', N'Đại số Tuyến tính', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH306', N'Hệ điều hành', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH307', N'Thực hành cấu trúc dữ liệu và giải thuật', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH308', N'Thực hành cơ sở dữ liệu', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH309', N'Tư tưởng Hồ Chí Minh', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH310', N'Giáo dục thể chất 2(bơi)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH311', N'Giáo dục thể chất 2(bóng chuyền)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH312', N'Giáo dục thể chất 2(bóng đá)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH313', N'Giáo dục thể chất 2(cầu lông)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH314', N'Giáo dục thể chất 2(võ thuật)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH315', N'Giáo dục thể chất 2(thể hình)', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH316', N'Giáo dục thể chất 3(bơi)', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH317', N'Giáo dục thể chất 3(bóng chuyền)', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH318', N'Giáo dục thể chất 3(cầu lông)', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH319', N'Giáo dục thể chất 3(võ thuật)', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH320', N'Giáo dục thể chất 3(bóng đá)', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH401', N'Anh văn B2', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH402', N'Công nghệ Java', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH403', N'Hệ quản trị cơ sở dữ liệu', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH404', N'Lập trình Web', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH405', N'Mạng máy tính', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH406', N'Thực hành mạng máy tính', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH407', N'Trí tuệ nhân tạo', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH501', N'Ảo hóa và điện toán đám mây', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH502', N'Công nghệ NET', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH503', N'Công nghệ Web', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH504', N'Khai thác dữ liệu', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH505', N'Xử lý và tính toán song song', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH506', N'Đồ họa máy tính', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH507', N'Hệ quản trị cơ sở dữ liệu Oracle', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH508', N'Kỹ thuật lập trình', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH509', N'Phân tích dữ liệu và dự báo', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH510', N'Quản trị mạng', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH511', N'Thực hành đồ họa máy tính', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH512', N'Thực hành hệ quản trị cơ sở dữ liệu Oracle', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH513', N'Thực hành kỹ thuật lập trình', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH514', N'Thực hành phân tích dữ liệu và dự báo', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH515', N'Thực hành quản trị mạng', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH516', N'Thực hành xử lý ảnh', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH517', N'Xử lý ảnh', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH601', N'Công nghệ phần mềm', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH602', N'Đường lối cách mạng của Đảng Cộng sản việt Nam', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH603', N'Lập trình di động', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH604', N'Phân tích thiết kế hệ thống thông tin', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH605', N'Phát triển phần mềm và ứng dụng thông minh', 3)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH606', N'Thực hành phân tích thiết kế hệ thống thông tin', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH607', N'Hệ thống thông tin địa lý', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH608', N'Kiểm định chất lượng phần mềm', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH609', N'Search engine', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH610', N'Thực hành hệ thống thông tin địa lý', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH611', N'Thực hành kiểm định chất lượng phần mềm', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH612', N'Thực hành search engine', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH613', N'Thực hành Web ngữ nghĩa', 1)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH614', N'Web ngữ nghĩa', 2)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH701', N'Thực tập nghề nghiệp', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH702', N'Đồ án chuyên ngành công nghệ phần mềm', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH703', N'Đồ án tốt nghiệp', 4)
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [SOTC]) VALUES (N'MH704', N'Khóa luận tốt nghiệp', 8)
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140061', N'Phí Minh Long', CAST(0x0E1D0B00 AS Date), N'04DHTH1', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140062', N'Bùi Tiến Dũng', CAST(0xF71D0B00 AS Date), N'04DHTH1', N'Hà Tĩnh', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140063', N'A Hoàng', CAST(0xB81D0B00 AS Date), N'04DHTH1', N'Gia Lai', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140064', N'Lương Xuân Trường', CAST(0x5A1D0B00 AS Date), N'04DHTH1', N'Tuyên Quang', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140065', N'Nguyễn Tuấn Anh', CAST(0x6C1D0B00 AS Date), N'04DHTH1', N'Thái Bình', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140066', N'Trần Minh Vương', CAST(0x3B1D0B00 AS Date), N'04DHTH1', N'Thái Bình', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001140067', N'Nguyễn Công Phượng', CAST(0xF91C0B00 AS Date), N'04DHTH1', N'Nghệ An', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150000', N'Nguyễn Như Hoàng', CAST(0xC3220B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150001', N'Nguyễn Huy Hoàng', CAST(0xC3220B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150002', N'Nguyễn Tuy Hoàng', CAST(0xC3220B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150003', N'Nguyễn Ngọc Hoàng', CAST(0xC3220B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150004', N'Ngu Như Hoàng', CAST(0xC3220B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001150005', N'Nguyễn Tú Nguyên', CAST(0xA9230B00 AS Date), N'04DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350071', N'Trần Văn Kiên', CAST(0xD71E0B00 AS Date), N'05DHTH1', N'Nghệ An', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350072', N'Vũ Văn Thanh', CAST(0xBA1E0B00 AS Date), N'05DHTH1', N'Hải Dương', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350073', N'Đỗ Duy Mạnh', CAST(0xD71E0B00 AS Date), N'05DHTH2', N'Hà Nội', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350074', N'Châu Ngọc Quang', CAST(0x711E0B00 AS Date), N'05DHTH2', N'Thái Bình', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350075', N'Nguyễn Phong Hồng Duy', CAST(0xF61E0B00 AS Date), N'05DHTH2', N'Bình Phước', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1001350076', N'Nguyễn Văn Toàn', CAST(0xB81E0B00 AS Date), N'05DHTH3', N'Hải Dương', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330081', N'Trần Đình Trọng', CAST(0x32200B00 AS Date), N'06DHTH1', N'Hà Nội', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330082', N'Nguyễn Quang Hải', CAST(0x25200B00 AS Date), N'06DHTH1', N'Hà Nội', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330083', N'Nguyễn Thành Chung', CAST(0xBA200B00 AS Date), N'06DHTH1', N'Tuyên Quang', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330084', N'Nguyễn Trọng Đại', CAST(0x20200B00 AS Date), N'06DHTH1', N'Hải Dương', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330085', N'Bùi Tiến Dũng', CAST(0xFA1F0B00 AS Date), N'06DHTH2', N'Thanh Hóa', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330086', N'Trương Văn Thái Quý', CAST(0xA9200B00 AS Date), N'06DHTH2', N'Quảng Trị', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'1003330087', N'Hà Đức Chinh', CAST(0xC8200B00 AS Date), N'06DHTH2', N'Phú Thọ', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170061', N'Võ Thành Luân', CAST(0xFC210B00 AS Date), N'07DHTH1', N'Kiên Giang', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170062', N'Trương Vô Kỵ', CAST(0xEC210B00 AS Date), N'07DHTH1', N'Tiền Giang', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170063', N'Chu Chỉ Nhược', CAST(0xA4210B00 AS Date), N'07DHTH2', N'An Giang', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170064', N'Triệu Mẫn', CAST(0xFA210B00 AS Date), N'07DHTH2', N'Bạc Liêu', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170065', N'Ân Tố Tố', CAST(0x99220B00 AS Date), N'07DHTH2', N'Sóc Trăng', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170066', N'Tiểu Chiêu', CAST(0x57210B00 AS Date), N'07DHTH3', N'Cà Mau', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170067', N'Dương Tiêu', CAST(0x7C210B00 AS Date), N'07DHTH3', N'Vĩnh Long', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170068', N'Phạm Dao', CAST(0x37210B00 AS Date), N'07DHTH3', N'Động Tháp', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170069', N'Dương Bất Hối', CAST(0x92220B00 AS Date), N'07DHTH4', N'Tây Ninh', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170070', N'Trương Tam Phong', CAST(0x2A220B00 AS Date), N'07DHTH4', N'Long An', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170071', N'Lộc Trượng Khác', CAST(0xF4210B00 AS Date), N'07DHTH4', N'Kon Tum', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170072', N'Hạt Bút Ông', CAST(0xED210B00 AS Date), N'07DHTH4', N'Gia Lai', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170073', N'Vi Nhất Tiếu', CAST(0xEB210B00 AS Date), N'07DHTH5', N'Bình Dương', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170074', N'Thành Khôn', CAST(0xCE210B00 AS Date), N'07DHTH5', N'Đồng Nai', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2001170075', N'Tạ Tốn', CAST(0xCF210B00 AS Date), N'07DHTH1', N'Đà Lạt', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270010', N'Âu Dương Phong', CAST(0x63230B00 AS Date), N'08DHTH4', N'Quảng Nam', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270011', N'Tiêu Phong', CAST(0x3B230B00 AS Date), N'08DHTH1', N'Vũng Tàu', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270012', N'Đoàn Dự', CAST(0x3C230B00 AS Date), N'08DHTH1', N'Lâm Đồng', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270013', N'Hư Trúc', CAST(0x3D230B00 AS Date), N'08DHTH1', N'Nha Trang', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270014', N'Quách Tĩnh', CAST(0x1D230B00 AS Date), N'08DHTH2', N'Khánh Hòa', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270015', N'Hoàng Dung', CAST(0xFF220B00 AS Date), N'08DHTH2', N'Phú Yên', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270016', N'Chu Bá Thông', CAST(0x46230B00 AS Date), N'08DHTH2', N'Bình Thuận', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270017', N'Hoàng Dược SƯ', CAST(0xDF220B00 AS Date), N'08DHTH3', N'Dak Lak', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270018', N'Lâm Triều Anh', CAST(0xDD230B00 AS Date), N'08DHTH3', N'Đà Nẵng', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270019', N'Hồng Thất Công', CAST(0xC8230B00 AS Date), N'08DHTH3', N'Quãng Trị', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270021', N'Đoàn Trí Hưng', CAST(0x9A220B00 AS Date), N'08DHTH4', N'TP Hồ Chí Minh', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270022', N'Mai Siêu Phong', CAST(0xF6220B00 AS Date), N'08DHTH4', N'Bình Định', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270023', N'Lý Mạc Sầu', CAST(0xC3220B00 AS Date), N'08DHTH5', N'Hưng Yên', N'Nữ')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270024', N'Vương Trùng Dương', CAST(0xA0230B00 AS Date), N'08DHTH5', N'Lạng Sơn', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'2002270025', N'Dương Khang', CAST(0x97230B00 AS Date), N'08DHTH5', N'Bến Tre', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114002', N'Yêu Lớp', CAST(0xA9230B00 AS Date), N'09DHTH1', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114003', N'Nguyễn Trọng Hiếu', CAST(0xA9230B00 AS Date), N'09DHTH2', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114005', N'Phác Chí Mẫn', CAST(0xA9230B00 AS Date), N'09DHTH3', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114006', N'Kim Tại Hưởng', CAST(0xA9230B00 AS Date), N'09DHTH4', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114007', N'Kim Seok Jin', CAST(0xA9230B00 AS Date), N'09DHTH5', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114008', N'Yêu Trường', CAST(0xA9230B00 AS Date), N'09DHTH7', N'Hà Tây', N'Nam')
INSERT [dbo].[SINHVIEN] ([MSSV], [HOTEN], [NGAYSINH], [MALOP], [NOISINH], [GIOITINH]) VALUES (N'4004114009', N'Yêu Thầy', CAST(0xA9230B00 AS Date), N'09DHTH6', N'Hà Tây', N'Nam')
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SV_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SV_LOP]
GO
/****** Object:  Trigger [dbo].[tG_2]    Script Date: 5/23/2019 11:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tG_2] ON [dbo].[KETQUA] FOR INSERT, UPDATE
AS
BEGIN
UPDATE KETQUA SET DIEM10 = (DIEMGK*4+DIEMCK*6)/10
DECLARE @D FLOAT , @Ma char(10), @mon varchar(10)
set @Ma = (select mssv from inserted)
set @mon = (select mamh from inserted )
SET @D = (SELECT KETQUA.DIEM10 FROM KETQUA,INSERTED WHERE INSERTED.MSSV=KETQUA.MSSV AND INSERTED.MAMH=KETQUA.MAMH )
IF (@D >= 8.5)
UPDATE KETQUA SET DIEMCHU = 'A' where  Mamh = @mon and mssv = @Ma
IF (@D>=7 AND @D<8.5)
UPDATE KETQUA SET DIEMCHU = 'B' where  Mamh = @mon and mssv = @Ma 
IF (@D>=5.5 AND @D<7)
UPDATE KETQUA SET DIEMCHU = 'C' where  Mamh = @mon and mssv = @Ma
IF (@D>=4 AND @D<5.5) UPDATE KETQUA SET DIEMCHU = 'D' where  Mamh = @mon and mssv = @Ma
IF(@D<4) UPDATE KETQUA SET DIEMCHU = 'F'where  Mamh = @mon and mssv = @Ma
END
GO
/****** Object:  Trigger [dbo].[Tr_LOP]    Script Date: 5/23/2019 11:24:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Tr_LOP] ON [dbo].[LOP] FOR INSERT, UPDATE
AS
BEGIN
UPDATE LOP SET HEDT = N'ĐẠI HỌC' WHERE SUBSTRING(MALOP,3,2)='DH'
UPDATE LOP SET HEDT = N'CAO ĐẲNG' WHERE SUBSTRING(MALOP,3,2)='CD'
UPDATE LOP SET KHOA = LEFT(MALOP,2)
END
GO
