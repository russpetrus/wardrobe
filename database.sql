USE [master]
GO
/****** Object:  Database [WardrobeProject]    Script Date: 5/1/2017 10:07:37 AM ******/
CREATE DATABASE [WardrobeProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeProject] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeProject]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/1/2017 10:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occasion] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/1/2017 10:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occasion] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/1/2017 10:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nvarchar](50) NOT NULL,
	[OutfitTop] [int] NOT NULL,
	[OutfitBottom] [int] NOT NULL,
	[OutfitShoes] [int] NOT NULL,
	[OutfitAccessory] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/1/2017 10:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occasion] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Shoes_1] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/1/2017 10:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[Season] [nvarchar](20) NOT NULL,
	[Occasion] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (2, N'Fitbit', N'Blue', N'Accessory', N'Any', N'Athletic', N'fitbit.png')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (3, N'Tie', N'Blue', N'Accessory', N'Spring', N'Formal', N'tie.png')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (4, N'Watch', N'Brown', N'Accessory', N'Fall', N'Casual', N'watch.png')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (1, N'Jeans', N'Blue', N'Bottom', N'Fall', N'Casual', N'bluejeans.png')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (2, N'Khaki Shorts', N'Khaki', N'Bottom', N'Spring/Summer', N'Play', N'shorts.png')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (3, N'Athletic Shorts', N'Black', N'Bottom', N'Summer', N'Athletic', N'athleticshorts.png')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (2, N'Athletic Shoes', N'Blue', N'Shoe', N'Spring/Summer', N'Athletic', N'athleticshoes.png')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (3, N'Flip Flops', N'Brown', N'Shoe', N'Summer', N'Casual', N'flipflops.png')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (4, N'Dress Shoes', N'Brown', N'Shoe', N'Fall', N'Formal', N'dressshoes.png')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (5, N'Dock Shoes', N'Tan', N'Shoe', N'Spring/Summer', N'Casual', N'casualshoes.png')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (1, N'Dress Shirt', N'White and Blue', N'Top', N'Any', N'Formal', N'dressshirt.png')
INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (2, N'Polo Shirt', N'Grey', N'Top', N'Spring/Summer', N'Casual', N'poloshirt.png')
INSERT [dbo].[Tops] ([TopID], [Name], [Color], [Type], [Season], [Occasion], [Photo]) VALUES (3, N'Tank Top', N'Grey', N'Top', N'Any', N'Athletic', N'tanktop.png')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([OutfitAccessory])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([OutfitBottom])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([OutfitShoes])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([OutfitTop])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeProject] SET  READ_WRITE 
GO
