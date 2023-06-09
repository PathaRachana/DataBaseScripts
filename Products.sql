USE [master]
GO
/****** Object:  Database [ProductDB]    Script Date: 09-05-2023 12:18:38 ******/
CREATE DATABASE [ProductDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProductDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ProductDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProductDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProductDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProductDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProductDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProductDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProductDB] SET QUERY_STORE = OFF
GO
USE [ProductDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09-05-2023 12:18:38 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 09-05-2023 12:18:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Cost] [int] NOT NULL,
	[ActualPrice] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Rating] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230212164055_init', N'6.0.12')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (1, N'HP ProBook  PC', N'Electronics', N'https://media.stockinthechannel.com/pic/yGEeSYnxTkKBn5YWMsNCqg.r.jpg', N'This Renewed product is tested to work and look like new with minimal to no signs of wear & tear; the product comes with relevant accessories and is backed by a minimum six month seller warranty; box may be generic$Memory: 16GB DDR4 RAM, Storage: 512GB M.2 SSD (Seal is broken for upgrades Only, Professional Installation Service included)', 49990, 65990, 10, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (2, N'Fire-Boltt', N'Electronics', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/617eiZeFtNL._SX679_.jpg', N'Fire-Boltt is India'' No 1 Wearable Watch Brand Q122 by IDC Worldwide quarterly wearable device tracker Q122.【SPO2/ Oxygen, Heart Rate Monitoring】 - Fire-Boltt Ninja 2 Smatwatch comes with real time 24*7 SPO2 / Blood Oxygen tracking, Track your heart rate on the go with best in class technology.$ 【Upto 7 Day Battery Life】 - Powerful battery to concentrate on the game without stopping. 【Set Up Alarms】- Set alarms and never be late for that meeting.', 1599, 2800, 10, 3)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (3, N'Sitting Stool', N'Furniture', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71nOlLq4pYL._SX679_.jpg', N'nestroots Sitting Stool for Living Room Furniture Ottoman pouffes for Sitting | Metallic Side Table Puffy Foot Stool with Metalic Legs Home Furniture ( 16 inch Wine ).$GOOD HEIGHT & COMFORTABLE METALLIC STOOL FOR LIVING ROOM : Nestroots Metalic Puffy Stool looks perfect in a living room setting, the versatile design, metallic legs colour or good height goes well with both modern & traditional interiors. Superior quality of raw materials and thiker cushion that have been used used make the Ottoman long lasting & durable.', 3295, 6990, 10, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (4, N'E-Furniture Sofa Set', N'Furniture', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/81HiDdKPHDL._SX679_.jpg', N'E-Furniture Home Sofa Set | Sofa Set 3|Living Room Furniture$SEATING CAPACITY: 5 Seater $ WARRANTY: 1 Year Manufacturing Warranty | ASSEMBLY: Required, Provided by Brand$Arm Style: Padded; Seating Capacity: 5.01.0$ Form Factor: Sectional$ Item Shape: Rectangular', 9990, 15000, 10, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (5, N'United Colors Hooded Neck Sweatshirt ', N'Men', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71so+fXxLLL._UY879_.jpg', N'Fleece fabric for warmth and softness$Regular fit$Full sleeve sweatshirt$Pockets on sides help in better functionality', 890, 980, 8, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (6, N'Allen Solly Men''s Regular Fit Polo', N'Men', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71lSkCSRlOL._UY879_.jpg', N'Classic Twill Fabric in Semi cut away collar$Perfect wardrobe essential in 100% Cotton for power dressing$Solid', 690, 800, 6, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (7, N'GoSriKi Women''s Cotton Blend  Kurta ', N'Women', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/61362Rup3XL._UY879_.jpg', N'Kurta Set Fabric: Cotton Blend$Style: Straight ||  Sleeves: 3/4$This three piece set includes kurta dupatta$Ocassion: Traditional wear, Casual Wear, party wear', 490, 690, 12, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (8, N'Stylum Women''s Floral Rayon Kurta', N'Women', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/717c4vneBpL._UY879_.jpg', N'Floral Printed Rayon A-Line Kurta with Wooden Button Detailing$Material:- Rayon || Print & Pattern- Floral Print || Style Type:- A-Line$Neck:- Mandarin Collar', 4999, 6500, 16, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (9, N'L''Oréal Paris Serum,Alcohol Free', N'Beauty Products', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/51+PTxUFjiL._SX679_.jpg', N'Extraordinary Oil Hair Serum: THE L''OREAL PARIS SERUM DEEP NOURISHMENT - L''Oréal Paris Extraordinary Oil Hair Serum gives luscious, lightweight hair oil serum for dry hair, lifeless hair - Apply and experience transformation from the 1st use.$Extraordinary Oil Hair Serum: WITH 6 OIL - COMPLEX FOR DAMAGED HAIR - Blend of 6 rare flower oils such as Rose, Tiare,Lotus,Flax,Chamomile and sunflower,that provides nourishment for hair and seals the hair cuticle - One of the best hair serums for dry and frizzy hair!', 390, 580, 14, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (10, N'Portronics Toad Wireless Mouse ', N'Electronics', N'https://m.media-amazon.com/images/I/41GZoVU8n2L._SX679_.jpg', N'[WIRELESS FREEDOM] : Enjoy up to a 10 - meter wireless connection thanks to Toad 13’s tiny plug - and - forget wireless receiver.No hassle, no software needed.$[CONTOURED DESIGN] : Designed to keep either hand comfortable. Soft side grips and a comfortable shape - ideal for long hours of usage', 560, 880, 9, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (11, N'Cognizant Dell Latitude Laptop ', N'Electronics', N'https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1671098642/Croma%20Assets/Computers%20Peripherals/Laptop/Images/266653_w8sam6.png/mxw_2048,s_webp,f_auto', N'This Renewed product is tested to work and look like new with minimal to no signs of wear & tear; $the product comes with relevant accessories and is backed by a minimum six month seller warranty', 60000, 85990, 3, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (12, N'Zebronics Keyboard and Mouse Set ', N'Electronics', N'https://m.media-amazon.com/images/I/61OQT49xFjS._SX679_.jpg', N'Keyboard Interface USB (Nano receiver) Total No.of Keys 104$Companion 107 is a wireless keyboard and mouse combo that comes with a nano receiver built for home/office use. Plug and Play$Mouse Interface USB (Nano Receiver) Resolution 1200 DPI No. of Buttons 3', 700, 990, 6, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (13, N'Wooden cave Handicraft Shelves', N'Furniture', N'https://m.media-amazon.com/images/I/61iCaM11GrL._SX679_.jpg', N'Decorative intersecting floating shelves Made of durable MDF laminate. Beautiful white finish that suits almost any decor. ', 800, 950, 4, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (14, N'iCare Gifts Home  Wood Furniture', N'Furniture', N'https://m.media-amazon.com/images/I/71vnQqDhd0L._SL1500_.jpg', N'The compact size of 12”x13”x12” perfectly makes a balance between functional and space-saving, making the side table not only a cabriole end table, but also a perfect nightstand.', 430, 500, 8, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (15, N'Brown Art SHOPPEE Home Décor Furniture', N'Furniture', N'https://m.media-amazon.com/images/I/51TGta5uxCL._SX679_.jpg', N'2 Round Table Sets - Fits almost everywhere and be adjusted into vary positions $ Iron bottom frame & MDF surface, and it''s easy to move around and at home', 4390, 5990, 8, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (16, N'Biotique  Brightening Cream ', N'Beauty Products', N'https://m.media-amazon.com/images/I/512lH3gtbFL._SL1000_.jpg', N'Quantity: 75g; Item Form: Cream With regular use, skin reclaims its soft,smooth youthful tone and texture.', 499, 699, 8, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (17, N'Maybelline New York Mascara', N'Beauty Products', N'https://m.media-amazon.com/images/I/41NzDDxXqOL._SX679_.jpg', N'Lashes look 75% more curled, Buildable colour and volume, Wax coats lashes from root to tips', 300, 440, 6, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (18, N'LAKMÉ Perfect Radiance Cream', N'Beauty Products', N'https://m.media-amazon.com/images/I/51P6lnB9z7L._SX679_.jpg', N'Moisturizes and nourishesProvides sun protection.$Dermatologist Gives radiant glowing skin.', 248, 360, 8, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (19, N'Vardha Women''s Kanchipuram Saree', N'Women', N'https://m.media-amazon.com/images/I/71usrU4CNDL._UY879_.jpg', N' Kanchipuram Art Silk fabric with zari work and Traditional print.$ It has a beautiful rich Pallu with a woven Zari design. ', 3200, 3990, 6, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (20, N'FIBREZA Women''s Traditional Dress', N'Women', N'https://m.media-amazon.com/images/I/61FeVPVksPL._UY879_.jpg', N'Care Instructions: Hand Wash Only$Fit Type: Regular$Gown Fabric:- Pure Georgette; Lining Fabric :- Crepe$Style :- Women''s Ethnic Solid Long Western Stylish Gown$Sleeve :- flare Sleeves$Type :- Full Stitched perfect for party and festival and wedding', 900, 990, 3, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (21, N'Lymio Women Chiffon Stylish Top', N'Women', N'https://m.media-amazon.com/images/I/61Fxn7u8yGL._AC_UL480_FMwebp_QL65_.jpg', N'Care Instructions: Dry Clean Only$Fit Type: Regular Fit$To choose the right size- please refer Reguler Fit Tops/Shirt size chart and how to measure image''''$Fabric : Chiffon$Sleeve Type : 3/4th Sleeve$Occasion: Casual wear, Daily wear, Party wear, Evening wear$Women Top.Stylish Top', 390, 490, 8, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (22, N'LEOTUDE Regular Fit Full Sleeve Cotton', N'Men', N'https://m.media-amazon.com/images/I/61iWM4s4XCL._UY879_.jpg', N'Care Instructions: Hand Wash Only$Fit Type: Regular Fit$Color : Navy Blue$Fabric: Cotton Blend$Sleeve Type: Full Sleeve$Neck Style: Round Neck$Pattern : Striped$', 399, 420, 18, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (23, N'Gildan Men''s T-Shirt Multipack', N'Men', N'https://m.media-amazon.com/images/I/710o0VupScL._UX679_.jpg', N'Taped neck and shoulders for durability;$ Tubular rib collar for better stretch and recovery', 4220, 5500, 4, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (24, N'Pure Cotton Arrow Men Shirt', N'Men', N'https://m.media-amazon.com/images/I/81BPmo8mq1L._UY879_.jpg', N'Arrow Men Shirt thick blue with full hands', 1119, 2000, 4, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (25, N'Zeneme Rhodium Plated Jewellery Set', N'Jewellery', N'https://m.media-amazon.com/images/I/61fJVWdKrRL._UY695_.jpg', N'What you get: 1 N Rhodium Plated American Diamond Studded Silver Tone Necklaces With Matching 2 N Earrings adding a hint of raw modern beauty to any look, from the house of Zeneme. The Silver Toned further ensures a long-lasting shine.$Superior - quality Rhodium Plating For Long Lasting Finish with Hand Crafted Design For Contemporary Stylish Trendy & Stunning Look', 859, 940, 3, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (26, N'Yellow Chimes Silver Plated Bracelet', N'Jewellery', N'https://m.media-amazon.com/images/I/61-50mkASXL._UY675_.jpg', N'Sparkling Lovely Charm Bracelet for women with adorable heart shaped hanging on the bracelet for girls Silver toned multi Layered attached in one Bracelet.$Size: Length- 20 cm, Material is Silver Plated and Metal is Alloy, Closure is Lobster Claw.', 290, 390, 8, 4)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (27, N'Zaveri Pearls Dangle Earring ', N'Jewellery', N'https://m.media-amazon.com/images/I/71Q0qgsgueL._UY695_.jpg', N'Stylish Fancy Party Wear Earrings for Women and Girls.$ These Ear Rings can be worn with all kind of Outfits', 150, 190, 5, 3.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (28, N'YouBella Jewellery Bracelets for Women ', N'Jewellery', N'https://m.media-amazon.com/images/I/71vG0xUgbiL._UY695_.jpg', N'Best for Gifting and for personal Use, combine it with matching dress and be the limelight of every Occassion$Plated with High Quality Polish for Long Lasting Finish$Suitable for all occassions', 230, 290, 11, 4.5)
INSERT [dbo].[Product] ([ProductId], [Name], [Category], [Image], [Description], [Cost], [ActualPrice], [Stock], [Rating]) VALUES (29, N'Avimee Herbal Keshpallav Hair Oil ', N'Beauty Products', N'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/51hO-NitLkL._SX679_.jpg', N' Avimee Herbal Keshpallav Hair Oil is Suitable for all hair type.$Ingredients: Cold pressed Coconut oil, Black Sesame seed oil, Flax Seed Oil, Mustard seed oil, Sunflower Seed Oil, Castor oil, and Kalonji oil enriched with more than 50 herbs. Argan oil, Avocado oil, Arnica oil, Almond oil, Apricot kernel oil, Amla oil, Bhringraj oil, Brahmi oil, Bottle gourd oil, Borage seed oil, Bakuchi oil, Bamboo oil, Cucumber oil, Carrot oil, Camellia seed oil, Grapeseed oil, Hibiscus oil, Hemp seed oil, Hazel nut oil, Halim oil, Jojoba oil, Karanja oil', 200, 260, -40, 3.5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [ProductDB] SET  READ_WRITE 
GO
