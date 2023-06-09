USE [master]
GO
/****** Object:  Database [CovidCasesDB]    Script Date: 09-05-2023 12:14:41 ******/
CREATE DATABASE [CovidCasesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CovidCasesDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidCasesDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CovidCasesDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidCasesDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CovidCasesDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CovidCasesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CovidCasesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CovidCasesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CovidCasesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CovidCasesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CovidCasesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CovidCasesDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CovidCasesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CovidCasesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CovidCasesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CovidCasesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CovidCasesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CovidCasesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CovidCasesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CovidCasesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CovidCasesDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CovidCasesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CovidCasesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CovidCasesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CovidCasesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CovidCasesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CovidCasesDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CovidCasesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CovidCasesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CovidCasesDB] SET  MULTI_USER 
GO
ALTER DATABASE [CovidCasesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CovidCasesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CovidCasesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CovidCasesDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CovidCasesDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CovidCasesDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CovidCasesDB] SET QUERY_STORE = OFF
GO
USE [CovidCasesDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-05-2023 12:14:42 ******/
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
/****** Object:  Table [dbo].[CovidCases]    Script Date: 09-05-2023 12:14:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CovidCases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositiveCases] [int] NOT NULL,
	[RecoveredCases] [int] NOT NULL,
	[Deaths] [int] NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CovidCases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221221043921_init', N'6.0.10')
GO
SET IDENTITY_INSERT [dbo].[CovidCases] ON 

INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (1, 500, 300, 200, N'India', N'Uttar Pradesh', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (2, 300, 100, 400, N'Dubai', N'Abu dhabi', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (3, 300, 300, 200, N'Dubai', N'Sharjah', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (4, 600, 400, 200, N'India', N'Kerala', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (5, 650, 350, 250, N'India', N'Tamil Nadu', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (6, 500, 300, 200, N'India', N'Andhra Pradesh', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (7, 500, 300, 200, N'India', N'Telangana', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (8, 550, 300, 250, N'Pakistan', N'Sindh', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (9, 600, 400, 200, N'Pakistan', N'Punjab', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (10, 800, 600, 200, N'Japan', N'Kagawa', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (11, 750, 400, 350, N'Japan', N'Kyoto', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (12, 500, 300, 200, N'Nepal', N'Bagmati', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (13, 500, 300, 200, N'Nepal', N'Madhesh', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (14, 500, 300, 200, N'America', N'California', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (15, 500, 300, 200, N'America', N'Kensas', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (16, 600, 400, 200, N'Ukraine', N'Cherkasy', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (17, 550, 350, 200, N'Ukraine', N'Ternopil', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (18, 500, 300, 200, N'Italy', N'Liguria', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (19, 700, 500, 200, N'Italy', N'Lazio', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (20, 500, 400, 100, N'Germany', N'Berlin', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[CovidCases] ([Id], [PositiveCases], [RecoveredCases], [Deaths], [CountryName], [State], [Date]) VALUES (21, 500, 200, 300, N'Germany', N'Bremen', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CovidCases] OFF
GO
USE [master]
GO
ALTER DATABASE [CovidCasesDB] SET  READ_WRITE 
GO
