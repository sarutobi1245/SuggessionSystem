USE [scorev1.1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountGroupAccount]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroupAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroupAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountGroupPeriods]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroupPeriods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupId] [int] NOT NULL,
	[PeriodId] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroupPeriods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountGroups]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Position] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[Sequence] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[IsLock] [bit] NOT NULL,
	[AccountTypeId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[Leader] [int] NULL,
	[Manager] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
 CONSTRAINT [PK_AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attitudes]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attitudes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Point] [float] NOT NULL,
 CONSTRAINT [PK_Attitudes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttitudeScore]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttitudeScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Period] [int] NOT NULL,
	[Point] [float] NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[ScoreBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[ScoreType] [nvarchar](50) NULL,
 CONSTRAINT [PK_AttitudeScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[Period] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[ScoreType] [nvarchar](50) NULL,
	[CommentTypeId] [nvarchar](100) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contributions]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contributions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[Period] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[ScoreType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contributions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KPIs]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KPIs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Point] [float] NOT NULL,
 CONSTRAINT [PK_KPIs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KPIScore]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KPIScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Period] [int] NOT NULL,
	[Point] [float] NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[ScoreBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[ScoreType] [nvarchar](50) NULL,
 CONSTRAINT [PK_KPIScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mailings]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mailings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](1000) NULL,
	[Frequency] [nvarchar](255) NULL,
	[Report] [nvarchar](255) NULL,
	[AccountId] [int] NOT NULL,
	[TimeSend] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Mailings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objectives]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objectives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](1000) NULL,
	[Status] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[Date] [datetime2](7) NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Objectives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OC]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Level] [int] NOT NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_OC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OCAccounts]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OCAccounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[OCId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OCAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performances]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjectiveId] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Percentage] [float] NOT NULL,
	[UploadBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Performances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodReportTimes]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodReportTimes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PeriodId] [int] NOT NULL,
	[Months] [nvarchar](max) NULL,
	[PeriodOfYear] [int] NOT NULL,
	[ReportTime] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_PeriodReportTimes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periods]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[Months] [nvarchar](max) NULL,
	[Value] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ReportTime] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[AccountGroupId] [int] NULL,
 CONSTRAINT [PK_Periods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeriodType]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Position] [int] NOT NULL,
	[DisplayBefore] [int] NOT NULL,
 CONSTRAINT [PK_PeriodType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PIC]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjectiveId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_PIC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plans]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](1000) NULL,
	[Status] [bit] NOT NULL,
	[AccountId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Plans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progresses]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Progresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultOfMonth]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultOfMonth](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Month] [int] NOT NULL,
	[ObjectiveId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_ResultOfMonth] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmartScore]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmartScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Point] [float] NOT NULL,
 CONSTRAINT [PK_SmartScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialContributionScore]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialContributionScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Period] [int] NOT NULL,
	[Point] [float] NOT NULL,
	[PeriodTypeId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[ScoreBy] [int] NOT NULL,
	[ScoreType] [nvarchar](50) NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_SpecialContributionScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialScore]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Point] [float] NOT NULL,
 CONSTRAINT [PK_SpecialScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToDoList]    Script Date: 07/17/2021 08:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToDoList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[ObjectiveId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[Level] [int] NOT NULL,
	[ParentId] [int] NULL,
	[Deadline] [datetime2](7) NULL,
	[IsReject] [bit] NOT NULL,
	[IsRelease] [bit] NOT NULL,
 CONSTRAINT [PK_ToDoList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624040928_InitialDb', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624042848_UpdateAccountTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624043312_UpdateAccountv2Tbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624063435_AddDisplayTimePeriodTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210624063922_AddDisplayTimePeriodTypeTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210625014923_AddScoreTypeTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210625023731_AddScoreTypeToCommentTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210625031337_AddDisplayBeforeToPeriodTypeTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210625095133_AddParentIdLevelToToDoListTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210705021428_ModifyAccountTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210707073640_AddDeadlineToToDoListTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210708024738_AddSpecialScoreTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210708081559_AddStatusRejectReleaseToObjectiveTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210708082426_AddSmartScoreTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210709031211_AddSequenceToAccountGroupTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210709073937_AddIsRejectIsReleaseToToDoListTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210712034341_AddScoreTypeToContributionTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210714083309_AddPerformanceTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210714091519_ChangeOCUsersToOCAccountsTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210714092905_UpdateOCAccountsTbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210714093154_UpdateOCAccountsV2Tbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210715063205_UpdatePerformanceV2Tbl', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210715064352_AddCommentTbl', N'5.0.7')
GO
SET IDENTITY_INSERT [dbo].[AccountGroupAccount] ON 

INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (49, 3, 25)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (50, 4, 25)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (58, 1, 27)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (59, 2, 27)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (60, 1, 26)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (61, 2, 26)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (68, 4, 24)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (77, 1, 21)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (78, 2, 21)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (79, 3, 22)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (80, 6, 22)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (81, 2, 22)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (82, 4, 22)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (83, 3, 23)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (84, 6, 23)
SET IDENTITY_INSERT [dbo].[AccountGroupAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountGroups] ON 

INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (1, N'L0', 1, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-24T11:38:10.1106630' AS DateTime2), 1)
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (2, N'L1', 2, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-24T11:38:14.5834508' AS DateTime2), 2)
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (3, N'L2', 3, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-07T23:24:16.9162751' AS DateTime2), 3)
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (4, N'GHR', 5, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-07T23:24:31.4445844' AS DateTime2), 5)
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (6, N'Updater', 4, 0, 0, CAST(N'2021-06-24T11:38:24.0043320' AS DateTime2), CAST(N'2021-07-07T23:37:07.0805966' AS DateTime2), 4)
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Sequence]) VALUES (7, N'GFL', 6, 0, 0, CAST(N'2021-07-05T08:12:52.3515243' AS DateTime2), CAST(N'2021-07-09T10:17:16.5134740' AS DateTime2), 6)
SET IDENTITY_INSERT [dbo].[AccountGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (17, N'admin', N'admin', N'8Azyga8DO7g=', NULL, 0, 1, 1, NULL, CAST(N'2021-06-23T10:42:11.8564345' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (21, N'c63125', N'Henry', N'8Azyga8DO7g=', N'sy.pham@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:36:32.0651647' AS DateTime2), CAST(N'2021-07-09T11:54:37.5692077' AS DateTime2), 26, 22)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (22, N'C90394', N'Swook.Lu', N'8Azyga8DO7g=', N'swook.lu@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:37:06.5719618' AS DateTime2), CAST(N'2021-07-12T10:58:56.3226496' AS DateTime2), 0, 25)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (23, N'C90608', N'Yvonne.Liu', N'8Azyga8DO7g=', N'Yvonne.Hsueh@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:37:24.2671412' AS DateTime2), CAST(N'2021-07-14T17:28:31.8520903' AS DateTime2), 22, 25)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (24, N'C66288', N'Sin.Chen', N'8Azyga8DO7g=', N'sin.chen@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:37:36.9072742' AS DateTime2), CAST(N'2021-07-07T11:22:37.0732653' AS DateTime2), 22, 25)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (25, N'Erick.Chong', N'Erick.Chong', N'8Azyga8DO7g=', N'erick.chong@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:37:55.9449365' AS DateTime2), CAST(N'2021-07-07T10:53:05.5555982' AS DateTime2), NULL, NULL)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (26, N'C60212', N'Peter', N'8Azyga8DO7g=', N'peter.tran@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:39:01.9422707' AS DateTime2), CAST(N'2021-07-07T11:22:16.5938118' AS DateTime2), 22, 25)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountTypeId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Leader], [Manager]) VALUES (27, N'C65105', N'Leo', N'8Azyga8DO7g=', N'leo.doan@shc.ssbshoes.com', 0, 2, 0, 0, CAST(N'2021-06-24T11:39:13.7422840' AS DateTime2), CAST(N'2021-07-07T11:21:53.0435902' AS DateTime2), NULL, 22)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountTypes] ON 

INSERT [dbo].[AccountTypes] ([Id], [Name], [Code]) VALUES (1, N'System Management', N'SYSTEM')
INSERT [dbo].[AccountTypes] ([Id], [Name], [Code]) VALUES (2, N'Members', N'MEMBER')
SET IDENTITY_INSERT [dbo].[AccountTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Attitudes] ON 

INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (1, 10)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (2, 9)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (3, 8)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (4, 7)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (5, 6)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (6, 5)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (7, 4)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (8, 3)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (9, 2)
INSERT [dbo].[Attitudes] ([Id], [Point]) VALUES (10, 1)
SET IDENTITY_INSERT [dbo].[Attitudes] OFF
GO
SET IDENTITY_INSERT [dbo].[AttitudeScore] ON 

INSERT [dbo].[AttitudeScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (33, 2, 8, 3, 21, 26, CAST(N'2021-07-13T15:36:58.7853577' AS DateTime2), NULL, N'FunctionalLeader')
INSERT [dbo].[AttitudeScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (34, 2, 9, 3, 21, 22, CAST(N'2021-07-13T15:38:41.0645640' AS DateTime2), NULL, N'L1')
INSERT [dbo].[AttitudeScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (35, 2, 9, 3, 21, 22, CAST(N'2021-07-13T15:40:05.0204744' AS DateTime2), NULL, N'L2')
SET IDENTITY_INSERT [dbo].[AttitudeScore] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (62, N'Bad!', 22, 21, 2, 2, NULL, CAST(N'2021-07-13T15:24:51.7026807' AS DateTime2), CAST(N'2021-07-15T15:59:29.3778727' AS DateTime2), N'GHR', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (63, N'Goob job!', 26, 21, 3, 2, NULL, CAST(N'2021-07-13T15:36:58.7855485' AS DateTime2), NULL, N'FunctionalLeader', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (64, N'Amazing!', 22, 21, 2, 2, NULL, CAST(N'2021-07-13T15:38:05.7955370' AS DateTime2), NULL, N'L1', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (65, N'Wonderful!', 22, 21, 3, 2, NULL, CAST(N'2021-07-13T15:38:41.0798265' AS DateTime2), NULL, N'L1', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (66, N'Keep up the good work', 22, 21, 2, 2, NULL, CAST(N'2021-07-13T15:39:25.9417036' AS DateTime2), NULL, N'L2', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (67, N'You''re working great!', 22, 21, 3, 2, NULL, CAST(N'2021-07-13T15:40:05.0214516' AS DateTime2), NULL, N'L2', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (68, N'Congratulation!', 22, 21, 2, 1, NULL, CAST(N'2021-07-13T15:43:39.7358669' AS DateTime2), NULL, N'L1', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (69, N'Nice!', 22, 21, 2, 1, NULL, CAST(N'2021-07-13T15:46:47.6058905' AS DateTime2), NULL, N'L2', N'Comment')
INSERT [dbo].[Comments] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType], [CommentTypeId]) VALUES (74, N'Self - Evaluation 自我評價', 21, 21, 2, 2, NULL, CAST(N'2021-07-15T14:33:24.4862728' AS DateTime2), NULL, N'L0', N'Self Evaluation')
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contributions] ON 

INSERT [dbo].[Contributions] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (12, NULL, 22, 21, 3, 2, NULL, CAST(N'2021-07-13T15:38:41.0681088' AS DateTime2), NULL, N'L1')
INSERT [dbo].[Contributions] ([Id], [Content], [CreatedBy], [AccountId], [PeriodTypeId], [Period], [ModifiedBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (13, NULL, 22, 21, 3, 2, NULL, CAST(N'2021-07-13T15:40:05.0298734' AS DateTime2), NULL, N'L2')
SET IDENTITY_INSERT [dbo].[Contributions] OFF
GO
SET IDENTITY_INSERT [dbo].[KPIs] ON 

INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (12, 0)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (13, 0.1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (14, 0.2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (15, 0.3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (16, 0.4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (17, 0.5)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (18, 0.6)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (19, 0.7)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (20, 0.8)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (21, 0.9)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (22, 1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (23, 1.1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (24, 1.2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (25, 1.3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (26, 1.4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (27, 1.5)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (28, 1.6)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (29, 1.7)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (30, 1.8)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (31, 1.9)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (32, 2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (33, 2.1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (34, 2.2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (35, 2.3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (36, 2.4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (37, 2.5)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (38, 2.6)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (39, 2.7)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (40, 2.8)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (41, 2.9)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (42, 3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (43, 3.1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (44, 3.2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (45, 3.3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (46, 3.4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (47, 3.5)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (48, 3.6)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (49, 3.7)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (50, 3.8)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (51, 3.9)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (52, 4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (53, 4.1)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (54, 4.2)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (55, 4.3)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (56, 4.4)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (57, 4.5)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (58, 4.6)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (59, 4.7)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (60, 4.8)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (61, 4.9)
INSERT [dbo].[KPIs] ([Id], [Point]) VALUES (62, 5)
SET IDENTITY_INSERT [dbo].[KPIs] OFF
GO
SET IDENTITY_INSERT [dbo].[KPIScore] ON 

INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (63, 2, 4, 2, 21, 22, CAST(N'2021-07-13T15:25:36.9859309' AS DateTime2), CAST(N'2021-07-15T15:51:40.7350005' AS DateTime2), N'GHR')
INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (64, 2, 4, 2, 21, 21, CAST(N'2021-07-13T15:37:21.1108831' AS DateTime2), CAST(N'2021-07-15T14:33:24.4948937' AS DateTime2), N'L0')
INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (65, 2, 4.2, 2, 21, 22, CAST(N'2021-07-13T15:38:05.7943429' AS DateTime2), NULL, N'L1')
INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (66, 2, 4.8, 2, 21, 22, CAST(N'2021-07-13T15:39:25.9428227' AS DateTime2), NULL, N'L2')
INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (67, 1, 5, 2, 21, 22, CAST(N'2021-07-13T15:43:39.7357304' AS DateTime2), NULL, N'L1')
INSERT [dbo].[KPIScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [CreatedTime], [ModifiedTime], [ScoreType]) VALUES (68, 1, 5, 2, 21, 22, CAST(N'2021-07-13T15:46:47.6047934' AS DateTime2), NULL, N'L2')
SET IDENTITY_INSERT [dbo].[KPIScore] OFF
GO
SET IDENTITY_INSERT [dbo].[Objectives] ON 

INSERT [dbo].[Objectives] ([Id], [Topic], [Status], [CreatedBy], [ModifiedBy], [Date], [CreatedTime], [ModifiedTime]) VALUES (29, N'Digital Mixing Room', 0, 22, NULL, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-13T15:22:35.4766397' AS DateTime2), NULL)
INSERT [dbo].[Objectives] ([Id], [Topic], [Status], [CreatedBy], [ModifiedBy], [Date], [CreatedTime], [ModifiedTime]) VALUES (30, N'A4 KPI', 0, 22, NULL, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-13T15:22:46.7602221' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Objectives] OFF
GO
SET IDENTITY_INSERT [dbo].[OC] ON 

INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (1, N'ssb', 1, NULL)
INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (2, N'shc', 2, 1)
INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (3, N'FHO', 3, 2)
INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (4, N'Lab', 4, 3)
INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (5, N'Lab A', 5, 4)
INSERT [dbo].[OC] ([Id], [Name], [Level], [ParentId]) VALUES (6, N'Lab A1', 6, 5)
SET IDENTITY_INSERT [dbo].[OC] OFF
GO
SET IDENTITY_INSERT [dbo].[OCAccounts] ON 

INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (14, 22, 3, 0, CAST(N'2021-07-14T16:32:19.8473018' AS DateTime2), NULL)
INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (15, 26, 4, 0, CAST(N'2021-07-14T16:45:00.5285386' AS DateTime2), NULL)
INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (16, 23, 4, 0, CAST(N'2021-07-14T16:45:00.6673392' AS DateTime2), NULL)
INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (17, 27, 5, 0, CAST(N'2021-07-14T16:45:11.4994490' AS DateTime2), NULL)
INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (18, 21, 5, 0, CAST(N'2021-07-14T16:45:11.5451581' AS DateTime2), NULL)
INSERT [dbo].[OCAccounts] ([Id], [AccountId], [OCId], [Status], [CreatedTime], [ModifiedTime]) VALUES (19, 24, 5, 0, CAST(N'2021-07-14T16:45:11.5780822' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[OCAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Performances] ON 

INSERT [dbo].[Performances] ([Id], [ObjectiveId], [Month], [Percentage], [UploadBy], [CreatedTime], [ModifiedTime]) VALUES (3, 29, 7, 1, 23, CAST(N'2021-07-15T13:33:07.9894838' AS DateTime2), NULL)
INSERT [dbo].[Performances] ([Id], [ObjectiveId], [Month], [Percentage], [UploadBy], [CreatedTime], [ModifiedTime]) VALUES (4, 30, 7, 2, 23, CAST(N'2021-07-15T13:33:11.2822745' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Performances] OFF
GO
SET IDENTITY_INSERT [dbo].[Periods] ON 

INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (1, 1, NULL, 3, N'Mar.', CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (2, 2, N'11,12,1', 4, N'Q4', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (3, 2, N'8,9,10', 3, N'Q3', CAST(N'2021-11-11T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (4, 2, N'5,6,7', 2, N'Q2', CAST(N'2021-08-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (5, 2, N'2,3,4', 1, N'Q1', CAST(N'2021-05-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (6, 1, NULL, 12, N'Dec.', CAST(N'2021-12-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (7, 1, NULL, 11, N'Nov.', CAST(N'2021-11-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (8, 1, NULL, 10, N'Oct.', CAST(N'2021-10-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (9, 1, NULL, 9, N'Sep.', CAST(N'2021-09-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (10, 1, NULL, 8, N'Aug.', CAST(N'2021-08-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (11, 1, NULL, 7, N'Jul.', CAST(N'2021-07-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (12, 1, NULL, 6, N'Jun.', CAST(N'2021-06-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (13, 1, NULL, 5, N'May.', CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (14, 1, NULL, 4, N'Apr.', CAST(N'2021-04-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (15, 1, NULL, 1, N'Jan.', CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (16, 1, NULL, 2, N'Feb.', CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (17, 3, N'1,2,3,4,5,6', 1, N'H1', CAST(N'2021-07-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Periods] ([Id], [PeriodTypeId], [Months], [Value], [Title], [ReportTime], [ModifiedBy], [CreatedTime], [ModifiedTime], [AccountGroupId]) VALUES (18, 3, N'7,8,9,10,11,12', 2, N'H2', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Periods] OFF
GO
SET IDENTITY_INSERT [dbo].[PeriodType] ON 

INSERT [dbo].[PeriodType] ([Id], [Code], [Name], [Position], [DisplayBefore]) VALUES (1, N'Monthly', N'Monthly', 1, 2)
INSERT [dbo].[PeriodType] ([Id], [Code], [Name], [Position], [DisplayBefore]) VALUES (2, N'Quarterly', N'Quarterly', 2, 7)
INSERT [dbo].[PeriodType] ([Id], [Code], [Name], [Position], [DisplayBefore]) VALUES (3, N'HalfYear', N'Q2 and Q4', 3, 7)
SET IDENTITY_INSERT [dbo].[PeriodType] OFF
GO
SET IDENTITY_INSERT [dbo].[PIC] ON 

INSERT [dbo].[PIC] ([Id], [ObjectiveId], [AccountId]) VALUES (45, 29, 21)
INSERT [dbo].[PIC] ([Id], [ObjectiveId], [AccountId]) VALUES (46, 30, 21)
SET IDENTITY_INSERT [dbo].[PIC] OFF
GO
SET IDENTITY_INSERT [dbo].[ResultOfMonth] ON 

INSERT [dbo].[ResultOfMonth] ([Id], [Title], [Month], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (20, N'Done', 7, 29, 21, NULL, CAST(N'2021-07-13T15:25:56.8202044' AS DateTime2), NULL)
INSERT [dbo].[ResultOfMonth] ([Id], [Title], [Month], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (21, N'Complete', 7, 30, 21, NULL, CAST(N'2021-07-13T15:26:03.8568297' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[ResultOfMonth] OFF
GO
SET IDENTITY_INSERT [dbo].[SmartScore] ON 

INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (1, 0.1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (2, 0.2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (3, 0.3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (4, 0.4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (5, 0.5)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (6, 0.6)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (7, 0.7)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (8, 0.8)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (9, 0.9)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (10, 1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (11, 1.1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (12, 1.2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (13, 1.3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (14, 1.4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (15, 1.5)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (16, 1.6)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (17, 1.7)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (18, 1.8)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (19, 1.9)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (20, 2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (21, 2.1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (22, 2.2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (23, 2.3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (24, 2.4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (25, 2.5)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (26, 2.6)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (27, 2.7)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (28, 2.8)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (29, 2.9)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (30, 3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (31, 3.1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (32, 3.2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (33, 3.3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (34, 3.4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (35, 3.5)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (36, 3.6)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (37, 3.7)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (38, 3.8)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (39, 3.9)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (40, 4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (41, 4.1)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (42, 4.2)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (43, 4.3)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (44, 4.4)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (45, 4.5)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (46, 4.6)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (47, 4.7)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (48, 4.8)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (49, 4.9)
INSERT [dbo].[SmartScore] ([Id], [Point]) VALUES (50, 5)
SET IDENTITY_INSERT [dbo].[SmartScore] OFF
GO
SET IDENTITY_INSERT [dbo].[SpecialContributionScore] ON 

INSERT [dbo].[SpecialContributionScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [ScoreType], [CreatedTime], [ModifiedTime]) VALUES (11, 2, 0, 3, 21, 22, N'L1', CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[SpecialContributionScore] ([Id], [Period], [Point], [PeriodTypeId], [AccountId], [ScoreBy], [ScoreType], [CreatedTime], [ModifiedTime]) VALUES (12, 2, 0, 3, 21, 22, N'L2', CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[SpecialContributionScore] OFF
GO
SET IDENTITY_INSERT [dbo].[SpecialScore] ON 

INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (1, -5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (2, -4.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (3, -4.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (4, -4.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (5, -4.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (6, -4.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (7, -4.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (8, -4.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (9, -4.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (10, -4.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (11, -4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (12, -3.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (13, -3.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (14, -3.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (15, -3.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (16, -3.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (17, -3.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (18, -3.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (19, -3.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (20, -3.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (21, -3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (22, -2.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (23, -2.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (24, -2.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (25, -2.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (26, -2.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (27, -2.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (28, -2.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (29, -2.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (30, -2.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (31, -2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (32, -1.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (33, -1.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (34, -1.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (35, -1.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (36, -1.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (37, -1.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (38, -1.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (39, -1.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (40, -1.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (41, -1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (42, -0.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (43, -0.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (44, -0.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (45, -0.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (46, -0.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (47, -0.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (48, -0.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (49, -0.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (50, -0.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (51, 0)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (52, 0.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (53, 0.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (54, 0.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (55, 0.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (56, 0.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (57, 0.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (58, 0.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (59, 0.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (60, 0.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (61, 1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (62, 1.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (63, 1.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (64, 1.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (65, 1.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (66, 1.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (67, 1.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (68, 1.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (69, 1.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (70, 1.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (71, 2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (72, 2.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (73, 2.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (74, 2.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (75, 2.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (76, 2.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (77, 2.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (78, 2.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (79, 2.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (80, 2.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (81, 3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (82, 3.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (83, 3.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (84, 3.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (85, 3.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (86, 3.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (87, 3.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (88, 3.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (89, 3.8)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (90, 3.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (91, 4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (92, 4.1)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (93, 4.2)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (94, 4.3)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (95, 4.4)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (96, 4.5)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (97, 4.6)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (98, 4.7)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (99, 4.8)
GO
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (100, 4.9)
INSERT [dbo].[SpecialScore] ([Id], [Point]) VALUES (101, 5)
SET IDENTITY_INSERT [dbo].[SpecialScore] OFF
GO
SET IDENTITY_INSERT [dbo].[ToDoList] ON 

INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (134, N'Demo', N'', 29, 21, NULL, CAST(N'2021-07-13T15:23:44.9883966' AS DateTime2), CAST(N'2021-07-13T15:25:17.5952656' AS DateTime2), 1, NULL, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (135, N'95%', N'', 29, 21, NULL, CAST(N'2021-07-13T15:23:45.0019198' AS DateTime2), CAST(N'2021-07-15T15:59:29.4001582' AS DateTime2), 2, 134, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), 1, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (136, N'Action 1', N'', 29, 21, NULL, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-13T15:25:17.6316616' AS DateTime2), 3, 135, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (137, N'Action 2', N'', 29, 21, NULL, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-13T15:25:17.6316632' AS DateTime2), 3, 135, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (138, N'Action 3', N'', 29, 21, NULL, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-13T15:25:17.6316641' AS DateTime2), 3, 135, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (139, N'Testing', N'', 30, 21, NULL, CAST(N'2021-07-13T15:24:07.0832547' AS DateTime2), NULL, 1, NULL, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (140, N'90%', N'', 30, 21, NULL, CAST(N'2021-07-13T15:24:07.0926213' AS DateTime2), CAST(N'2021-07-13T15:25:36.9901851' AS DateTime2), 2, 139, CAST(N'2021-07-13T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (141, N'Action a', N'', 30, 21, NULL, CAST(N'2021-07-13T15:24:07.1091894' AS DateTime2), NULL, 3, 140, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (142, N'Action b', N'', 30, 21, NULL, CAST(N'2021-07-13T15:24:07.1091934' AS DateTime2), NULL, 3, 140, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (143, N'Action c', N'', 30, 21, NULL, CAST(N'2021-07-13T15:24:07.1091938' AS DateTime2), NULL, 3, 140, NULL, 0, 0)
INSERT [dbo].[ToDoList] ([Id], [Action], [Remark], [ObjectiveId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Level], [ParentId], [Deadline], [IsReject], [IsRelease]) VALUES (144, N'Action 4', N'', 29, 21, NULL, CAST(N'2021-07-13T15:25:17.6316558' AS DateTime2), NULL, 3, 135, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ToDoList] OFF
GO
ALTER TABLE [dbo].[AccountGroups] ADD  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[PeriodType] ADD  DEFAULT ((0)) FOR [DisplayBefore]
GO
ALTER TABLE [dbo].[ToDoList] ADD  DEFAULT ((0)) FOR [Level]
GO
ALTER TABLE [dbo].[ToDoList] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsReject]
GO
ALTER TABLE [dbo].[ToDoList] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsRelease]
GO
ALTER TABLE [dbo].[AccountGroupAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupAccount_AccountGroups_AccountGroupId] FOREIGN KEY([AccountGroupId])
REFERENCES [dbo].[AccountGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupAccount] CHECK CONSTRAINT [FK_AccountGroupAccount_AccountGroups_AccountGroupId]
GO
ALTER TABLE [dbo].[AccountGroupAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupAccount_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupAccount] CHECK CONSTRAINT [FK_AccountGroupAccount_Accounts_AccountId]
GO
ALTER TABLE [dbo].[AccountGroupPeriods]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupPeriods_AccountGroups_AccountGroupId] FOREIGN KEY([AccountGroupId])
REFERENCES [dbo].[AccountGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupPeriods] CHECK CONSTRAINT [FK_AccountGroupPeriods_AccountGroups_AccountGroupId]
GO
ALTER TABLE [dbo].[AccountGroupPeriods]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupPeriods_Periods_PeriodId] FOREIGN KEY([PeriodId])
REFERENCES [dbo].[Periods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupPeriods] CHECK CONSTRAINT [FK_AccountGroupPeriods_Periods_PeriodId]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_AccountTypes_AccountTypeId] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountTypes] ([Id])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_AccountTypes_AccountTypeId]
GO
ALTER TABLE [dbo].[AttitudeScore]  WITH CHECK ADD  CONSTRAINT [FK_AttitudeScore_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttitudeScore] CHECK CONSTRAINT [FK_AttitudeScore_Accounts_AccountId]
GO
ALTER TABLE [dbo].[AttitudeScore]  WITH CHECK ADD  CONSTRAINT [FK_AttitudeScore_Accounts_ScoreBy] FOREIGN KEY([ScoreBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[AttitudeScore] CHECK CONSTRAINT [FK_AttitudeScore_Accounts_ScoreBy]
GO
ALTER TABLE [dbo].[AttitudeScore]  WITH CHECK ADD  CONSTRAINT [FK_AttitudeScore_Periods_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[Periods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttitudeScore] CHECK CONSTRAINT [FK_AttitudeScore_Periods_PeriodTypeId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts_AccountId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_PeriodType_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[PeriodType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_PeriodType_PeriodTypeId]
GO
ALTER TABLE [dbo].[Contributions]  WITH CHECK ADD  CONSTRAINT [FK_Contributions_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Contributions] CHECK CONSTRAINT [FK_Contributions_Accounts_AccountId]
GO
ALTER TABLE [dbo].[Contributions]  WITH CHECK ADD  CONSTRAINT [FK_Contributions_PeriodType_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[PeriodType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contributions] CHECK CONSTRAINT [FK_Contributions_PeriodType_PeriodTypeId]
GO
ALTER TABLE [dbo].[KPIScore]  WITH CHECK ADD  CONSTRAINT [FK_KPIScore_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KPIScore] CHECK CONSTRAINT [FK_KPIScore_Accounts_AccountId]
GO
ALTER TABLE [dbo].[KPIScore]  WITH CHECK ADD  CONSTRAINT [FK_KPIScore_Accounts_ScoreBy] FOREIGN KEY([ScoreBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[KPIScore] CHECK CONSTRAINT [FK_KPIScore_Accounts_ScoreBy]
GO
ALTER TABLE [dbo].[KPIScore]  WITH CHECK ADD  CONSTRAINT [FK_KPIScore_PeriodType_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[PeriodType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KPIScore] CHECK CONSTRAINT [FK_KPIScore_PeriodType_PeriodTypeId]
GO
ALTER TABLE [dbo].[Mailings]  WITH CHECK ADD  CONSTRAINT [FK_Mailings_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mailings] CHECK CONSTRAINT [FK_Mailings_Accounts_AccountId]
GO
ALTER TABLE [dbo].[Objectives]  WITH CHECK ADD  CONSTRAINT [FK_Objectives_Accounts_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Objectives] CHECK CONSTRAINT [FK_Objectives_Accounts_CreatedBy]
GO
ALTER TABLE [dbo].[OCAccounts]  WITH CHECK ADD  CONSTRAINT [FK_OCAccounts_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[OCAccounts] CHECK CONSTRAINT [FK_OCAccounts_Accounts_AccountId]
GO
ALTER TABLE [dbo].[OCAccounts]  WITH CHECK ADD  CONSTRAINT [FK_OCAccounts_OC_OCId] FOREIGN KEY([OCId])
REFERENCES [dbo].[OC] ([Id])
GO
ALTER TABLE [dbo].[OCAccounts] CHECK CONSTRAINT [FK_OCAccounts_OC_OCId]
GO
ALTER TABLE [dbo].[Performances]  WITH CHECK ADD  CONSTRAINT [FK_Performances_Accounts_UploadBy] FOREIGN KEY([UploadBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Performances] CHECK CONSTRAINT [FK_Performances_Accounts_UploadBy]
GO
ALTER TABLE [dbo].[Performances]  WITH CHECK ADD  CONSTRAINT [FK_Performances_Objectives_ObjectiveId] FOREIGN KEY([ObjectiveId])
REFERENCES [dbo].[Objectives] ([Id])
GO
ALTER TABLE [dbo].[Performances] CHECK CONSTRAINT [FK_Performances_Objectives_ObjectiveId]
GO
ALTER TABLE [dbo].[PeriodReportTimes]  WITH CHECK ADD  CONSTRAINT [FK_PeriodReportTimes_Periods_PeriodId] FOREIGN KEY([PeriodId])
REFERENCES [dbo].[Periods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PeriodReportTimes] CHECK CONSTRAINT [FK_PeriodReportTimes_Periods_PeriodId]
GO
ALTER TABLE [dbo].[Periods]  WITH CHECK ADD  CONSTRAINT [FK_Periods_AccountGroups_AccountGroupId] FOREIGN KEY([AccountGroupId])
REFERENCES [dbo].[AccountGroups] ([Id])
GO
ALTER TABLE [dbo].[Periods] CHECK CONSTRAINT [FK_Periods_AccountGroups_AccountGroupId]
GO
ALTER TABLE [dbo].[Periods]  WITH CHECK ADD  CONSTRAINT [FK_Periods_PeriodType_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[PeriodType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Periods] CHECK CONSTRAINT [FK_Periods_PeriodType_PeriodTypeId]
GO
ALTER TABLE [dbo].[PIC]  WITH CHECK ADD  CONSTRAINT [FK_PIC_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[PIC] CHECK CONSTRAINT [FK_PIC_Accounts_AccountId]
GO
ALTER TABLE [dbo].[PIC]  WITH CHECK ADD  CONSTRAINT [FK_PIC_Objectives_ObjectiveId] FOREIGN KEY([ObjectiveId])
REFERENCES [dbo].[Objectives] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PIC] CHECK CONSTRAINT [FK_PIC_Objectives_ObjectiveId]
GO
ALTER TABLE [dbo].[Plans]  WITH CHECK ADD  CONSTRAINT [FK_Plans_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Plans] CHECK CONSTRAINT [FK_Plans_Accounts_AccountId]
GO
ALTER TABLE [dbo].[ResultOfMonth]  WITH CHECK ADD  CONSTRAINT [FK_ResultOfMonth_Accounts_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[ResultOfMonth] CHECK CONSTRAINT [FK_ResultOfMonth_Accounts_CreatedBy]
GO
ALTER TABLE [dbo].[ResultOfMonth]  WITH CHECK ADD  CONSTRAINT [FK_ResultOfMonth_Objectives_ObjectiveId] FOREIGN KEY([ObjectiveId])
REFERENCES [dbo].[Objectives] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ResultOfMonth] CHECK CONSTRAINT [FK_ResultOfMonth_Objectives_ObjectiveId]
GO
ALTER TABLE [dbo].[SpecialContributionScore]  WITH CHECK ADD  CONSTRAINT [FK_SpecialContributionScore_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[SpecialContributionScore] CHECK CONSTRAINT [FK_SpecialContributionScore_Accounts_AccountId]
GO
ALTER TABLE [dbo].[SpecialContributionScore]  WITH CHECK ADD  CONSTRAINT [FK_SpecialContributionScore_Accounts_ScoreBy] FOREIGN KEY([ScoreBy])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[SpecialContributionScore] CHECK CONSTRAINT [FK_SpecialContributionScore_Accounts_ScoreBy]
GO
ALTER TABLE [dbo].[SpecialContributionScore]  WITH CHECK ADD  CONSTRAINT [FK_SpecialContributionScore_Periods_PeriodTypeId] FOREIGN KEY([PeriodTypeId])
REFERENCES [dbo].[Periods] ([Id])
GO
ALTER TABLE [dbo].[SpecialContributionScore] CHECK CONSTRAINT [FK_SpecialContributionScore_Periods_PeriodTypeId]
GO
ALTER TABLE [dbo].[ToDoList]  WITH CHECK ADD  CONSTRAINT [FK_ToDoList_Objectives_ObjectiveId] FOREIGN KEY([ObjectiveId])
REFERENCES [dbo].[Objectives] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ToDoList] CHECK CONSTRAINT [FK_ToDoList_Objectives_ObjectiveId]
GO
