USE [master]
GO
/****** Object:  Database [CovidVaccinationDB]    Script Date: 09-05-2023 12:17:00 ******/
CREATE DATABASE [CovidVaccinationDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CovidVaccinationDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidVaccinationDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CovidVaccinationDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CovidVaccinationDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CovidVaccinationDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CovidVaccinationDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CovidVaccinationDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CovidVaccinationDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CovidVaccinationDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CovidVaccinationDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CovidVaccinationDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CovidVaccinationDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CovidVaccinationDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CovidVaccinationDB] SET  MULTI_USER 
GO
ALTER DATABASE [CovidVaccinationDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CovidVaccinationDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CovidVaccinationDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CovidVaccinationDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CovidVaccinationDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CovidVaccinationDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CovidVaccinationDB] SET QUERY_STORE = OFF
GO
USE [CovidVaccinationDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-05-2023 12:17:00 ******/
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
/****** Object:  Table [dbo].[Vaccination]    Script Date: 09-05-2023 12:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VaccinationName] [nvarchar](max) NOT NULL,
	[DateOfVaccination] [datetime2](7) NOT NULL,
	[AgeGroup] [int] NOT NULL,
	[Dose1] [int] NOT NULL,
	[Dose2] [int] NOT NULL,
	[Dose3] [int] NOT NULL,
	[Booster] [int] NOT NULL,
	[Cost] [int] NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Vaccination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221221043702_init', N'6.0.10')
GO
SET IDENTITY_INSERT [dbo].[Vaccination] ON 

INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (1, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1000, 600, 250, 200, 600, N'India', N'Andhra Pradesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (2, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 1500, 999, 470, 290, 500, N'India', N'Arunachal Pradesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (3, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 1200, 900, 450, 200, 400, N'India', N'Assam')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (4, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1500, 600, 450, 290, 300, N'India', N'Chhattisgarh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (5, N'Covavax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1200, 900, 450, 200, 200, N'India', N'Goa')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (6, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1400, 800, 500, 300, 600, N'India', N'Gujarat')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (7, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1400, 960, 750, 400, 500, N'India', N'Haryana')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (8, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 1200, 850, 450, 200, 400, N'India', N'Himachal Pradesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (9, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 1500, 800, 550, 300, 300, N'India', N'Jammu and Kashmir')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (10, N'Covavax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1600, 900, 650, 400, 200, N'India', N'Jharkhand')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (11, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1200, 900, 450, 200, 600, N'India', N'Karnataka')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (12, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1300, 800, 650, 250, 500, N'India', N'Kerala')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (13, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 1600, 800, 450, 300, 400, N'India', N'MadhyaPradesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (14, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 1500, 900, 550, 200, 300, N'India', N'Maharashtra')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (15, N'Covavax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1700, 800, 450, 320, 200, N'India', N'Manipur')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (16, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1200, 900, 450, 600, 600, N'India', N'Meghalaya')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (17, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1500, 700, 650, 400, 500, N'India', N'Mizoram')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (18, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 2000, 900, 450, 400, 400, N'India', N'Nagaland')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (19, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 2000, 800, 550, 200, 300, N'India', N'Odisha')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (20, N'Covovax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1200, 900, 450, 200, 200, N'India', N'Punjab')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (21, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1500, 800, 350, 200, 600, N'India', N'Rajasthan')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (22, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1200, 900, 450, 500, 500, N'India', N'Sikkim')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (23, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 1200, 900, 450, 400, 400, N'India', N'TamilNadu')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (24, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 1300, 1000, 550, 300, 300, N'India', N'Telangana')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (25, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1200, 900, 450, 600, 400, N'India', N'Tripura')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (26, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1100, 800, 450, 250, 500, N'India', N'UttarPradesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (27, N'Covovax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1400, 850, 450, 200, 200, N'India', N'UttaraKhand')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (28, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 1800, 900, 450, 200, 500, N'India', N'West Bengal')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (29, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 2000, 900, 650, 300, 600, N'Ukraine', N'Ternopil')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (30, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 3000, 1500, 950, 600, 500, N'Ukraine', N'Cherkasy')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (31, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1500, 1200, 750, 500, 400, N'America', N'Kansas')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (32, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 2200, 1000, 650, 400, 300, N'America', N'California')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (33, N'Covovax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 2200, 1000, 650, 400, 200, N'Nepal', N'Bagmati')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (34, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 2300, 1500, 950, 400, 600, N'Nepal', N'Madhesh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (35, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 1200, 800, 650, 300, 500, N'Pakistan', N'Sindh')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (36, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 1800, 950, 650, 350, 400, N'Pakistan', N'Punjab')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (37, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 1000, 500, 350, 350, 300, N'Italy', N'Lazio')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (38, N'Covovax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 2000, 900, 650, 400, 200, N'Italy', N'Liguria')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (39, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 2200, 1000, 650, 400, 600, N'Japan', N'Kagawa')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (40, N'Covaxin', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 4, 2200, 1000, 650, 400, 500, N'Japan', N'Kyoto')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (41, N'Sputnik V', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 5, 2200, 230, 650, 400, 400, N'Germany', N'Bremen')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (42, N'Corbevax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 1, 2200, 1000, 650, 400, 300, N'Germany', N'Berlin')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (43, N'Covovax', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 2, 2200, 1000, 650, 400, 200, N'France', N'Lower Normandy')
INSERT [dbo].[Vaccination] ([Id], [VaccinationName], [DateOfVaccination], [AgeGroup], [Dose1], [Dose2], [Dose3], [Booster], [Cost], [CountryName], [State]) VALUES (44, N'Covishield', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), 3, 2200, 1000, 650, 400, 600, N'France', N'Picardy')
SET IDENTITY_INSERT [dbo].[Vaccination] OFF
GO
USE [master]
GO
ALTER DATABASE [CovidVaccinationDB] SET  READ_WRITE 
GO
