USE [master]
GO
/****** Object:  Database [LoginDB]    Script Date: 09-05-2023 12:18:13 ******/
CREATE DATABASE [LoginDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LoginDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LoginDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LoginDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LoginDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LoginDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoginDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoginDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoginDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoginDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoginDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LoginDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoginDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoginDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoginDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoginDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoginDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoginDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoginDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoginDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LoginDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoginDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoginDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoginDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoginDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoginDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LoginDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoginDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LoginDB] SET  MULTI_USER 
GO
ALTER DATABASE [LoginDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoginDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoginDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoginDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LoginDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LoginDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LoginDB] SET QUERY_STORE = OFF
GO
USE [LoginDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-05-2023 12:18:13 ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 09-05-2023 12:18:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230102095803_init', N'6.0.9')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (1, N'Ravali', N'P', N'Ravali@gmail.com', N'Ravali123', N'sdJvVrpBMtKoSzHgILvhsF2gM89xl+Ah7jE5543w8aYjm+A1', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (2, N'ghkh', N'uyui', N'Natraj@gmail.com', N'Natraj123', N'ft4rRiL9EkKZ8GGpbC9z6z/nol7K9U9vQF6HlJDL8wJYOpyD', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (3, N'Bharath', N'Bellam', N'bharath@gmail.com', N'Bharath', N'QipBtX47F6EapTjYOMX3DUORKwRzE92Llzj4bXPMqXc9DTkz', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (4, N'Sravan', N'Sudam', N'Sravan@gmail.com', N'Sravan123', N'tG8GM2wVTivIAsKsAg3UUxTG1cAJNNMuvBXm3X+tynu7GmC/', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (5, N'Sai', N'Sudam', N'Sai@gmail.com', N'Sai123', N'abTNOfTD9fqSdaJ72WzXgM68ok19mnNB4SzSsnXyHYPK+D6a', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (6, N'Usha', N'Durgam', N'Usha@gmail.com', N'Usha123', N'FmkvFRdtm4wnbTLgpAwBA/L3nGLfrXvje4d24/cBCI7fO35l', N'Admin', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (7, N'Anil', N'Byri', N'Anil@gmail.com', N'Anil123', N'L1CNhvAdFb9SBlgRPy8b8hWZ8zsohmS0l5Xua0DypveAFv+j', N'Value for Item 2', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (8, N'Navya', N'Gadapa', N'Navya@gmail.com', N'Navya123', N'OdlGU2Qi2OTHePqyEhE9H541cSZrrv98LOrBusHaomtPYha9', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (9, N'Rachana', N'Patha', N'Rachana@gmail.com', N'Rachana123', N'fH9HLKun0HukYmecvbgoZsbnvy5Lh6/dl7R3feAwBK8zjoQl', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (10, N'Karthikeya', N'Sheela', N'Candy@gmail.com', N'Candy123', N'aYQAh/U84agUeyVdAPNLuCuDiiUyc8IHFzNJzwfggcDEGXsz', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (11, N'Karthikeya', N'Sheela', N'Candy@gmail.com', N'Candy123', N'd/uS4Sl538dnlyYM2Pjoy8KI+m53KCe869xMuxQSo/fn0/N2', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (12, N'Bunny', N'N', N'bn@gmail.com', N'Bunny', N'xCdiWm2ZdJvrTi9oTDPg1ffaI+PGfWhjJoTT1Nb5CJbdm7+X', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (13, N'Naimisha', N'Alladi', N'Naimu123@gmail.com', N'Naimisha', N'0hvx26gGvDVsY0K7zzLVSMCaTY+PiqZ+MmNde1uqzQHqp/LR', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (14, N'Naimisha', N'Alladi', N'Naimu123@gmail.com', N'Naimisha', N'gQ8f0nJhoKvkYXC2dvesGULHdma6Vpxknc34mLaxWXXtae0I', N'User', N' ')
INSERT [dbo].[users] ([UserId], [FirstName], [LastName], [Email], [UserName], [Password], [Role], [Token]) VALUES (15, N'Bhavana', N'Puri', N'bhavana@gmail.com', N'Bhavana', N'A+LtRAW+AaMRwyPXeQViY4B41EAUYzskDKsepLFxEK/d7y/A', N'User', N' ')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
USE [master]
GO
ALTER DATABASE [LoginDB] SET  READ_WRITE 
GO
