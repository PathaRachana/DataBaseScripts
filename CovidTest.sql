USE [master]
GO
/****** Object:  Database [CovidTestDB]    Script Date: 09-05-2023 12:15:55 ******/
CREATE DATABASE [CovidTestDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CovidTestDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidTestDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CovidTestDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidTestDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CovidTestDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CovidTestDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CovidTestDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CovidTestDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CovidTestDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CovidTestDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CovidTestDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CovidTestDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CovidTestDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CovidTestDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CovidTestDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CovidTestDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CovidTestDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CovidTestDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CovidTestDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CovidTestDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CovidTestDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CovidTestDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CovidTestDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CovidTestDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CovidTestDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CovidTestDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CovidTestDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CovidTestDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CovidTestDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CovidTestDB] SET  MULTI_USER 
GO
ALTER DATABASE [CovidTestDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CovidTestDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CovidTestDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CovidTestDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CovidTestDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CovidTestDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CovidTestDB] SET QUERY_STORE = OFF
GO
USE [CovidTestDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-05-2023 12:15:55 ******/
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
/****** Object:  Table [dbo].[Covidtest]    Script Date: 09-05-2023 12:15:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Covidtest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestType] [nvarchar](max) NOT NULL,
	[DateOfTest] [datetime2](7) NOT NULL,
	[PositiveCases] [int] NOT NULL,
	[NegativeCases] [int] NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Covidtest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221221043758_init', N'6.0.10')
GO
SET IDENTITY_INSERT [dbo].[Covidtest] ON 

INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (1, N'Normal', CAST(N'2020-07-22T00:00:00.0000000' AS DateTime2), 4, 6, N'India', N'Bangalore')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (2, N'Rapid', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 350, 150, N'Dubai', N'Abu dhabi')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (3, N'Normal', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 300, 50, N'Pakistan', N'Sindh')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (4, N'Rapid', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 900, 50, N'Japan', N'Kagawa')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (5, N'Normal', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 700, 150, N'Nepal', N'Bagmati')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (6, N'Rapid', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 600, 150, N'America', N'California')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (7, N'Normal', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 4000, 50, N'Ukraine', N'Cherkasy')
INSERT [dbo].[Covidtest] ([Id], [TestType], [DateOfTest], [PositiveCases], [NegativeCases], [Country], [State]) VALUES (8, N'Rapid', CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2), 100, 50, N'Italy', N'Liguria')
SET IDENTITY_INSERT [dbo].[Covidtest] OFF
GO
USE [master]
GO
ALTER DATABASE [CovidTestDB] SET  READ_WRITE 
GO
