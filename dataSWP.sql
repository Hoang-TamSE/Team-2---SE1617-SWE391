USE [master]
GO
/****** Object:  Database [SWP391]    Script Date: 7/25/2022 3:44:38 PM ******/
CREATE DATABASE [SWP391]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HOANGTAM\MSSQL\DATA\SWP391.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HOANGTAM\MSSQL\DATA\SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391] SET QUERY_STORE = OFF
GO
USE [SWP391]
GO
/****** Object:  Table [dbo].[tblMajor]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMajor](
	[majorID] [nvarchar](10) NOT NULL,
	[majorName] [nvarchar](50) NOT NULL,
	[linkFLM] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblMajor] PRIMARY KEY CLUSTERED 
(
	[majorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMess]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMess](
	[messID] [int] IDENTITY(1,1) NOT NULL,
	[messText] [nvarchar](max) NOT NULL,
	[messDate] [datetime] NOT NULL,
	[status] [nchar](10) NULL,
	[messTitle] [nvarchar](max) NOT NULL,
	[replyForST] [int] NULL,
 CONSTRAINT [PK_tblMess] PRIMARY KEY CLUSTERED 
(
	[messID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNarrow]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNarrow](
	[narrowID] [nvarchar](10) NOT NULL,
	[narrowName] [nvarchar](50) NOT NULL,
	[linkFLM] [nvarchar](max) NULL,
	[description] [nvarchar](50) NULL,
	[majorID] [nvarchar](10) NULL,
	[status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblNarrow] PRIMARY KEY CLUSTERED 
(
	[narrowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReceive]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReceive](
	[userID] [nvarchar](50) NULL,
	[messID] [int] NULL,
	[status] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegisterNarrow]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegisterNarrow](
	[registerID] [int] IDENTITY(1,1) NOT NULL,
	[majorID] [nvarchar](10) NULL,
	[narrowID] [nvarchar](10) NULL,
	[semesterID] [nvarchar](10) NULL,
	[importDate] [datetime] NULL,
	[usingDate] [datetime] NULL,
	[minQuantity] [int] NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_tblRegisterNarrow] PRIMARY KEY CLUSTERED 
(
	[registerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegisterNarrowDetail]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegisterNarrowDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[importdate] [datetime] NOT NULL,
	[userID] [nvarchar](50) NOT NULL,
	[registerID] [int] NOT NULL,
	[status] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblRegisterNarrowDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleID] [nvarchar](10) NOT NULL,
	[roleName] [nvarchar](50) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSemester]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSemester](
	[semesterID] [nvarchar](10) NOT NULL,
	[semesterName] [nvarchar](50) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_tblSemester] PRIMARY KEY CLUSTERED 
(
	[semesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSend]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSend](
	[userID] [nvarchar](50) NOT NULL,
	[messID] [int] NOT NULL,
	[status] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[userID] [nvarchar](50) NOT NULL,
	[semesterID] [nvarchar](10) NULL,
	[majorID] [nvarchar](10) NULL,
	[narrowID] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSupporter]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSupporter](
	[userID] [nvarchar](50) NOT NULL,
	[majorID] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblSupporter] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 7/25/2022 3:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phoneNumber] [nchar](10) NOT NULL,
	[address] [nvarchar](max) NULL,
	[roleID] [nvarchar](10) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblMajor] ([majorID], [majorName], [linkFLM], [description], [status]) VALUES (N'GD', N'thiết kế đồ họa', N'abcbb', N'đây là abc ', N'true      ')
INSERT [dbo].[tblMajor] ([majorID], [majorName], [linkFLM], [description], [status]) VALUES (N'JP', N'Japanese', N'abc', N'abc22112', N'false     ')
INSERT [dbo].[tblMajor] ([majorID], [majorName], [linkFLM], [description], [status]) VALUES (N'SE', N'Software Engineering', N'https://flm.fpt.edu.vn/gui/role/student/CurriculumDetails?curid=165', NULL, N'true      ')
GO
SET IDENTITY_INSERT [dbo].[tblMess] ON 

INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (1, N'abc', CAST(N'2022-10-10T00:00:00.000' AS DateTime), N'replied   ', N'xyz', NULL)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (17, N'<p>hello</p>
', CAST(N'2022-07-18T01:43:08.917' AS DateTime), N'replied   ', N'hello', NULL)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (18, N'<p>hello</p>
', CAST(N'2022-07-18T04:21:53.153' AS DateTime), N'true      ', N'', NULL)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (19, N'<p>abc hello</p>
', CAST(N'2022-07-18T04:39:39.963' AS DateTime), N'true      ', N'', 17)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (20, N'<p>Ch&agrave;o c&aacute;c bạn</p>
', CAST(N'2022-07-19T14:17:28.483' AS DateTime), N'replied   ', N'Xin chào', 0)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (21, N'<p>Ch&agrave;o c&aacute;c bạn</p>
', CAST(N'2022-07-19T14:48:43.783' AS DateTime), N'replied   ', N'Xin chào', 0)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (22, N'<p>cảm ơn&nbsp;</p>
', CAST(N'2022-07-19T15:01:07.857' AS DateTime), N'true      ', N'', 20)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (23, N'<p>oke bạn</p>
', CAST(N'2022-07-19T16:36:11.533' AS DateTime), N'true      ', N'', 21)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (24, N'<p>xin ch&agrave;o sp</p>
', CAST(N'2022-07-20T16:12:42.643' AS DateTime), N'replied   ', N'hello', 0)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (25, N'<p>ch&agrave;o bạn</p>
', CAST(N'2022-07-20T16:13:06.223' AS DateTime), N'true      ', N'', 24)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (26, N'<p>cảm ơn bạn :v&nbsp;</p>
', CAST(N'2022-07-20T16:33:12.520' AS DateTime), N'replied   ', N'xin chào abc', 0)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (27, N'<p>ch&agrave;o bạn</p>
', CAST(N'2022-07-20T16:34:28.737' AS DateTime), N'true      ', N'', 26)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (28, N'<p>hello</p>
', CAST(N'2022-07-22T02:21:57.707' AS DateTime), N'replied   ', N'xin chào', 0)
INSERT [dbo].[tblMess] ([messID], [messText], [messDate], [status], [messTitle], [replyForST]) VALUES (29, N'<p>oke</p>
', CAST(N'2022-07-22T02:25:29.307' AS DateTime), N'true      ', N'', 28)
SET IDENTITY_INSERT [dbo].[tblMess] OFF
GO
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'.NET', N' Phát triển ứng dụng cross-platform với .NET', N' abc', N' xyz', N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'abc', N' abaaaaaa', N' abcaâ', N' <p>aba</p>', N'GD', N'false     ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'AC', N'Autonomous Car', NULL, NULL, N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'AI', N'AI with Tensor Flow', NULL, NULL, N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'DA', N'Data analysiz', N'abc', N'xyz', N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'DL', N'Design Logo', N'abc', N'xyz', N'GD', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'JS', N'Kỹ sư cầu nối Nhật', NULL, NULL, N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'N/A', N'Not Available', NULL, NULL, N'SE', N'false     ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'NJS', N'NodeJS', NULL, NULL, N'SE', N'true      ')
INSERT [dbo].[tblNarrow] ([narrowID], [narrowName], [linkFLM], [description], [majorID], [status]) VALUES (N'UI/UX', N'Thiết kế giao diện người dùng', N'abc', N'<p>abc</p>
', N'GD', N'true      ')
GO
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 1, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 20, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 25, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 26, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 28, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 29, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 18, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 27, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 22, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 23, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 17, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SE150003', 19, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 21, N'true      ')
INSERT [dbo].[tblReceive] ([userID], [messID], [status]) VALUES (N'SP00002', 24, N'true      ')
GO
SET IDENTITY_INSERT [dbo].[tblRegisterNarrow] ON 

INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (2, N'SE', N'.NET', N'SU22', CAST(N'2022-07-19T17:52:00.000' AS DateTime), CAST(N'2022-07-24T17:52:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (3, N'SE', N'AC', N'SU22', CAST(N'2022-07-10T00:53:00.000' AS DateTime), CAST(N'2022-07-22T17:52:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (4, N'SE', N'AI', N'SU22', CAST(N'2022-07-10T00:53:00.000' AS DateTime), CAST(N'2022-07-22T17:52:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (5, N'SE', N'.NET', N'SP22', CAST(N'2022-07-01T08:33:00.000' AS DateTime), CAST(N'2022-07-08T07:37:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (6, N'SE', N'AC', N'SP22', CAST(N'2022-07-01T08:33:00.000' AS DateTime), CAST(N'2022-07-08T07:37:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (7, N'SE', N'DA', N'SP22', CAST(N'2022-07-07T03:36:00.000' AS DateTime), CAST(N'2022-07-10T03:37:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (9, N'SE', N'.NET', N'FA22', CAST(N'2022-07-05T06:21:00.000' AS DateTime), CAST(N'2022-07-08T06:21:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (10, N'SE', N'AI', N'FA22', CAST(N'2022-07-05T06:21:00.000' AS DateTime), CAST(N'2022-07-08T06:21:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (14, N'SE', N'AC', N'FA22', CAST(N'2022-07-02T17:40:00.000' AS DateTime), CAST(N'2022-07-09T17:40:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (15, N'SE', N'AI', N'SP22', CAST(N'2022-07-08T17:41:00.000' AS DateTime), CAST(N'2022-07-09T17:41:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (16, N'GD', N'DL', N'SU22', CAST(N'2022-07-10T00:53:00.000' AS DateTime), CAST(N'2022-07-15T00:53:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (17, N'SE', N'DA', N'SU22', CAST(N'2022-07-06T15:46:00.000' AS DateTime), CAST(N'2022-07-22T17:52:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (18, N'SE', N'JS', N'SU22', CAST(N'2022-07-06T15:46:00.000' AS DateTime), CAST(N'2022-07-15T15:47:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (25, N'GD', N'DL', N'FA22', CAST(N'2022-07-05T16:16:00.000' AS DateTime), CAST(N'2022-07-15T16:16:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (26, N'SE', N'DA', N'FA22', CAST(N'2022-07-05T16:16:00.000' AS DateTime), CAST(N'2022-07-15T16:16:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (27, N'SE', N'JS', N'FA22', CAST(N'2022-07-05T16:16:00.000' AS DateTime), CAST(N'2022-07-15T16:16:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (28, N'GD', N'DL', N'SU23', CAST(N'2022-07-12T14:39:00.000' AS DateTime), CAST(N'2022-07-20T14:39:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (32, N'SE', N'DA', N'SU23', CAST(N'2022-07-13T18:27:00.000' AS DateTime), CAST(N'2022-07-17T18:27:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (33, N'SE', N'AI', N'SU23', CAST(N'2022-07-13T18:27:00.000' AS DateTime), CAST(N'2022-07-17T18:27:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (36, N'SE', N'.NET', N'SU23', CAST(N'2022-07-13T18:33:00.000' AS DateTime), CAST(N'2022-07-16T18:33:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (37, N'SE', N'AC', N'SU23', CAST(N'2022-07-13T18:33:00.000' AS DateTime), CAST(N'2022-07-16T18:33:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (38, N'SE', N'JS', N'SU23', CAST(N'2022-07-13T21:34:00.000' AS DateTime), CAST(N'2022-07-15T18:34:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (39, N'SE', N'.NET', N'SU25', CAST(N'2022-07-23T02:48:00.000' AS DateTime), CAST(N'2022-07-27T02:48:00.000' AS DateTime), 20, N'true      ')
INSERT [dbo].[tblRegisterNarrow] ([registerID], [majorID], [narrowID], [semesterID], [importDate], [usingDate], [minQuantity], [status]) VALUES (40, N'SE', N'AC', N'SU25', CAST(N'2022-07-23T02:48:00.000' AS DateTime), CAST(N'2022-07-27T02:48:00.000' AS DateTime), 20, N'true      ')
SET IDENTITY_INSERT [dbo].[tblRegisterNarrow] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRegisterNarrowDetail] ON 

INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (5, CAST(N'2022-07-12T20:42:45.703' AS DateTime), N'SE140005', 2, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (9, CAST(N'2022-07-12T20:42:45.703' AS DateTime), N'SE140334  ', 2, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (11, CAST(N'2022-07-12T20:42:45.703' AS DateTime), N'SE140911', 3, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (13, CAST(N'2022-07-12T20:42:45.703' AS DateTime), N'SE150012  ', 3, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (21, CAST(N'2022-07-20T16:26:46.810' AS DateTime), N'SE150003', 2, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (1019, CAST(N'2022-07-20T16:26:46.810' AS DateTime), N'SE150590', 16, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (1021, CAST(N'2022-07-20T16:26:46.810' AS DateTime), N'SE150593', 16, N'accepted')
INSERT [dbo].[tblRegisterNarrowDetail] ([id], [importdate], [userID], [registerID], [status]) VALUES (1024, CAST(N'2022-07-20T16:26:46.810' AS DateTime), N'SE150032  ', 4, N'rejected')
SET IDENTITY_INSERT [dbo].[tblRegisterNarrowDetail] OFF
GO
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'AD', N'admin', N'true      ')
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'SP', N'supporter', N'true      ')
INSERT [dbo].[tblRole] ([roleID], [roleName], [status]) VALUES (N'ST', N'student', N'true      ')
GO
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'FA22', N'FA 2022', N'true      ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SP22', N'Spring 2022', N'true      ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SP23', N'Spring 2023', N'false     ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SP24', N'Spring 2024', N'false     ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SU22', N'Summmer 2022', N'true      ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SU23', N'Summer 2023', N'true      ')
INSERT [dbo].[tblSemester] ([semesterID], [semesterName], [status]) VALUES (N'SU25', N'Summer 2025', N'true      ')
GO
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 1, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 20, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 25, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 26, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 28, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 29, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 18, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 27, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 22, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 23, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 17, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SP00002', 19, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 21, N'true      ')
INSERT [dbo].[tblSend] ([userID], [messID], [status]) VALUES (N'SE150003', 24, N'true      ')
GO
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE1400012', N'SU22', N'GD', N'DL')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE140005', N'SU22', N'SE', N'.NET')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE140334  ', N'SU22      ', N'SE        ', N'.NET')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE140534  ', N'SU22      ', N'GD', N'DL')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE140911', N'SP22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE15000', N'SU22', N'GD', N'DL')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150003', N'SU22', N'SE', N'.NET')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150012  ', N'SP22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150032  ', N'SU22      ', N'SE        ', N'N/A')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150166', N'SU22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150233', N'SU22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150584', N'SU22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150590', N'SU22', N'GD', N'DL')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150593', N'SU22', N'GD', N'DL')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150594', N'SU22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150601  ', N'SU22      ', N'SE        ', N'.NET      ')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150611  ', N'SU22      ', N'SE        ', N'.NET      ')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150622', N'SU22', N'SE', N'AC')
INSERT [dbo].[tblStudent] ([userID], [semesterID], [majorID], [narrowID]) VALUES (N'SE150633', N'SU22', N'SE', N'N/A')
GO
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'abc', N'GD')
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'abccc11', N'GD')
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'SE150600', N'SE        ')
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'SP00001', N'GD')
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'SP00002', N'SE        ')
INSERT [dbo].[tblSupporter] ([userID], [majorID]) VALUES (N'SP00004', N'GD')
GO
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'0912193322', N'abc', N'SE150234', N'SU22      ', N'SE', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'abc', N'hangaaaaab', N'ys@fpt.edu.vn', N'0912113344', N'abc', N'SP', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'abccc11', N'abaabbbaa', N'abccsss@fpt.edu.vn', N'0912133445', N'abccaaa', N'SP', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'AD130004', N'Hoàng Tâm', N'tuandtse150388@fpt.edu.vn', N'0912233111', N'avc ', N'AD', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE1400012', N'abc âss aaa', N'abxzzz@fpt.edu.vn', N'0912112211', N'abc', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE140005', N'Hoang Tam', N'abxcss@fpt.edu.vn', N'0912193355', N'abc xyz 122', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE140334  ', N'Lê Đăng Trường', N'truongldse140334', N'0912111111', N'abcxzy', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE140534  ', N'Phạm Đức Thắng', N'thangpdse140534	', N'0912111111', N'abcxzy', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE140911', N'Nguyen Van C', N'abc@fpt.edu.vn', N'0912193344', N'Avccc', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE15000', N'Hoang Tam', N'abcxyz@fpt.edu.vn', N'0912123344', N'abcxyz', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150003', N'Hoàng Tâm', N'tamlnhse150611@fpt.edu.vn', N'0912193322', N'abc xyz177', N'AD', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150012  ', N'Hoang Tam', N'abc@fpt.edu.vn', N'0912193355', N'abc xyz', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150032  ', N'Phương Anh', N'anhdnpse150032	', N'0912111111', N'xin chào mọi người', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150166', N'Nguyễn Nguyên An', N'annnse150166@fpt.edu.vn', N'0912345678', N'abcxyz', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150233', N'Hoàng Triều', N'abcxyz@fpt.edu.vn', N'0912132212', N'Ninh Hòa, Khánh Hòa', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150584', N'Nguyễn Việt Hùng', N'hungnvse150584@fpt.edu.vn', N'0912345679', N'abcxyz', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150590', N'Phạm Hữu Phúc', N'phucphse150590@fpt.edu.vn', N'0912345680', N'abcxyz', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150593', N'Trần Quốc Longgg', N'longtqse150593@fpt.edu.vn', N'0912345681', N'abcxyz', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150594', N'Lê Thái Bảo Toàn', N'toanltbse150594@fpt.edu.vn', N'0912345682', N'abcxyz', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150600  ', N'Hoàng Tâm 123', N'tamlnhse150610@fpt.edu.vn', N'0912193397', N'agasv', N'SP', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150601  ', N'Hoàng Tâm', N'a', N'0914036464', N'abcxyz', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150611  ', N'Hoàng Tâm', N'a', N'0912193387', N'642 Trần Quý Cáp', N'ST', N'false     ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150622', N'abc xyz â', N'abcxxx@fpt.edu.vn', N'0912112223', N'abv', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SE150633', N'abc xyz â', N'abxzz2z@fpt.edu.vn', N'0912113322', N'abc', N'ST', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SP00001', N'Supporter 1', N'abcxyaa@fpt.edu.vn', N'0922113322', N'abc', N'SP', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SP00002   ', N'Hoang tam', N'phatntse150133@fpt.edu.vn', N'0912319334', N'abc', N'SP', N'true      ')
INSERT [dbo].[tblUser] ([userID], [name], [email], [phoneNumber], [address], [roleID], [status]) VALUES (N'SP00004', N'abc xyz â', N'abccsss2@fpt.edu.vn', N'0912211223', N'abc', N'SP', N'true      ')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblRegisterNarrowDetail]    Script Date: 7/25/2022 3:44:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblRegisterNarrowDetail] ON [dbo].[tblRegisterNarrowDetail]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblNarrow]  WITH CHECK ADD  CONSTRAINT [FK_tblNarrow_tblMajor] FOREIGN KEY([majorID])
REFERENCES [dbo].[tblMajor] ([majorID])
GO
ALTER TABLE [dbo].[tblNarrow] CHECK CONSTRAINT [FK_tblNarrow_tblMajor]
GO
ALTER TABLE [dbo].[tblReceive]  WITH CHECK ADD  CONSTRAINT [FK_tblReceive_tblMess] FOREIGN KEY([messID])
REFERENCES [dbo].[tblMess] ([messID])
GO
ALTER TABLE [dbo].[tblReceive] CHECK CONSTRAINT [FK_tblReceive_tblMess]
GO
ALTER TABLE [dbo].[tblReceive]  WITH CHECK ADD  CONSTRAINT [FK_tblReceive_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblReceive] CHECK CONSTRAINT [FK_tblReceive_tblUser]
GO
ALTER TABLE [dbo].[tblRegisterNarrow]  WITH CHECK ADD  CONSTRAINT [FK_tblRegisterNarrow_tblMajor] FOREIGN KEY([majorID])
REFERENCES [dbo].[tblMajor] ([majorID])
GO
ALTER TABLE [dbo].[tblRegisterNarrow] CHECK CONSTRAINT [FK_tblRegisterNarrow_tblMajor]
GO
ALTER TABLE [dbo].[tblRegisterNarrow]  WITH CHECK ADD  CONSTRAINT [FK_tblRegisterNarrow_tblNarrow] FOREIGN KEY([narrowID])
REFERENCES [dbo].[tblNarrow] ([narrowID])
GO
ALTER TABLE [dbo].[tblRegisterNarrow] CHECK CONSTRAINT [FK_tblRegisterNarrow_tblNarrow]
GO
ALTER TABLE [dbo].[tblRegisterNarrow]  WITH CHECK ADD  CONSTRAINT [FK_tblRegisterNarrow_tblSemester] FOREIGN KEY([semesterID])
REFERENCES [dbo].[tblSemester] ([semesterID])
GO
ALTER TABLE [dbo].[tblRegisterNarrow] CHECK CONSTRAINT [FK_tblRegisterNarrow_tblSemester]
GO
ALTER TABLE [dbo].[tblRegisterNarrowDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblRegisterNarrowDetail_tblRegisterNarrow] FOREIGN KEY([registerID])
REFERENCES [dbo].[tblRegisterNarrow] ([registerID])
GO
ALTER TABLE [dbo].[tblRegisterNarrowDetail] CHECK CONSTRAINT [FK_tblRegisterNarrowDetail_tblRegisterNarrow]
GO
ALTER TABLE [dbo].[tblRegisterNarrowDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblRegisterNarrowDetail_tblStudent] FOREIGN KEY([userID])
REFERENCES [dbo].[tblStudent] ([userID])
GO
ALTER TABLE [dbo].[tblRegisterNarrowDetail] CHECK CONSTRAINT [FK_tblRegisterNarrowDetail_tblStudent]
GO
ALTER TABLE [dbo].[tblSend]  WITH CHECK ADD  CONSTRAINT [FK_tblSend_tblMess] FOREIGN KEY([messID])
REFERENCES [dbo].[tblMess] ([messID])
GO
ALTER TABLE [dbo].[tblSend] CHECK CONSTRAINT [FK_tblSend_tblMess]
GO
ALTER TABLE [dbo].[tblSend]  WITH CHECK ADD  CONSTRAINT [FK_tblSend_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblSend] CHECK CONSTRAINT [FK_tblSend_tblUser]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblMajor1] FOREIGN KEY([majorID])
REFERENCES [dbo].[tblMajor] ([majorID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblMajor1]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblNarrow] FOREIGN KEY([narrowID])
REFERENCES [dbo].[tblNarrow] ([narrowID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblNarrow]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblSemester] FOREIGN KEY([semesterID])
REFERENCES [dbo].[tblSemester] ([semesterID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblSemester]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblUser]
GO
ALTER TABLE [dbo].[tblSupporter]  WITH CHECK ADD  CONSTRAINT [FK_tblSupporter_tblMajor] FOREIGN KEY([majorID])
REFERENCES [dbo].[tblMajor] ([majorID])
GO
ALTER TABLE [dbo].[tblSupporter] CHECK CONSTRAINT [FK_tblSupporter_tblMajor]
GO
ALTER TABLE [dbo].[tblSupporter]  WITH CHECK ADD  CONSTRAINT [FK_tblSupporter_tblUser] FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblSupporter] CHECK CONSTRAINT [FK_tblSupporter_tblUser]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblRole] FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRole] ([roleID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblRole]
GO
USE [master]
GO
ALTER DATABASE [SWP391] SET  READ_WRITE 
GO
