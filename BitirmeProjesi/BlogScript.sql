USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 21.04.2015 18:07:06 ******/
CREATE DATABASE [Blog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Blog.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blog_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Blog_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blog] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 21.04.2015 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 21.04.2015 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 21.04.2015 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[AuthorId] [uniqueidentifier] NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Tags] [nvarchar](100) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.04.2015 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XML]    Script Date: 21.04.2015 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XML](
	[FirstName] [nvarchar](30) NULL,
	[Id] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'63491dc4-40d4-44e8-a1d3-2d3ef8f8e135', N'Ramazan', N'Akkaş')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'246c495e-3a45-4e74-b9a3-361fba20f9b6', N'İsmail ', N'Durmuş')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'4434f3a6-0ebd-4c0d-9b7c-4560d2e42d59', N'Nimet ', N'Yarar')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'fae0df0c-0632-4f2f-8d32-68fb91d08cad', N'Erkuthan', N'DOĞAN')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'd92d7431-9f77-4035-8c93-69340370596f', N'Melike2', N'Ekici')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'bd55d84a-bb21-46ab-be05-aed7245781f9', N'Oğuz ', N'Göksu')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'a5384900-9fb1-473d-8a12-b3b60acae8a5', N'Sinan  Furkan', N'Ada')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'612ad1c3-46fc-4e23-b53a-fa017e5fa3eb', N'İsmail EFECAN', N'Durmuş')
INSERT [dbo].[Authors] ([AuthorId], [Name], [Surname]) VALUES (N'0142c60d-17ff-4571-bcd7-fef5a28cbbd7', N'Semih', N'Güven')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (N'975c3db3-1acd-43bf-8e1f-29992a6dec3b', N'ASP.NET')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (N'f3f9a262-5336-4d42-afa1-83cc02a81b30', N'Trigger')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (N'7f202c99-ccb3-4ef3-b6df-8d13c4874f11', N'WPF')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (N'0bdecdbc-9bcb-47a8-9ce5-aacbc28193a2', N'SQL')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'00000000-0000-0000-0000-000000000000', N'sa', N'dada', N'63491dc4-40d4-44e8-a1d3-2d3ef8f8e135', CAST(0x0000A46900D918B6 AS DateTime), N'975c3db3-1acd-43bf-8e1f-29992a6dec3b', NULL)
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'93446213-4cec-4aef-9db8-17bea6cca98a', N'ASP.NET Blog Yapımı', N'Bu Dersimizide Sizinle Blog Yapacağız', N'63491dc4-40d4-44e8-a1d3-2d3ef8f8e135', CAST(0x0000A44600000000 AS DateTime), N'975c3db3-1acd-43bf-8e1f-29992a6dec3b', N'EF,Ado net')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'2e1c8aae-8639-43b1-af33-4f5ac0e3e81c', N'WPF', N'WPF çok önemlidir. Aaştırmanızı Tavsiye Ederim.', N'bd55d84a-bb21-46ab-be05-aed7245781f9', CAST(0x0000A44600000000 AS DateTime), N'7f202c99-ccb3-4ef3-b6df-8d13c4874f11', N'WPF')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'2ea91eb1-7e50-44bc-b232-806e16d3c973', N'SQL Store Procedure', N'Proceture kod parçacıklarıdır. Store Procedure ise bir kere çalıştırıldığında bir daha çalıştırmaya gerek duyulmayan kod parçacıklarıdır', N'4434f3a6-0ebd-4c0d-9b7c-4560d2e42d59', CAST(0x0000A44600000000 AS DateTime), N'0bdecdbc-9bcb-47a8-9ce5-aacbc28193a2', N'Kod,Parçacık')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'98bd3205-bb40-4f86-a60a-8b952ae88aca', N'Trigger', N'Tigger Candır', N'd92d7431-9f77-4035-8c93-69340370596f', CAST(0x0000A44600000000 AS DateTime), N'f3f9a262-5336-4d42-afa1-83cc02a81b30', N'Kod')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'bd4cc1dc-6c7d-47dc-b625-d2008439ba10', N'SQL Transaction', N'Transaction Kullanalım', N'a5384900-9fb1-473d-8a12-b3b60acae8a5', CAST(0x0000A44600000000 AS DateTime), N'0bdecdbc-9bcb-47a8-9ce5-aacbc28193a2', N'Transaction')
INSERT [dbo].[Posts] ([PostId], [Title], [Content], [AuthorId], [PublishDate], [CategoryId], [Tags]) VALUES (N'd88abe7c-a3c7-43ce-ac23-e808039ce7eb', N'hede', N'hödö', N'63491dc4-40d4-44e8-a1d3-2d3ef8f8e135', CAST(0x0000A46900DD22FE AS DateTime), N'975c3db3-1acd-43bf-8e1f-29992a6dec3b', NULL)
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'sfa', N'123')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'sinan', N'4143212')
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Nancy', 1)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Andrew', 2)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Janet', 3)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Margaret', 4)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Steven', 5)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Michael', 6)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Robert', 7)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Laura', 8)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Anne', 9)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Oguz', 11)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Sinan', 12)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Bora', 13)
INSERT [dbo].[XML] ([FirstName], [Id]) VALUES (N'Nimet', 14)
ALTER TABLE [dbo].[Authors] ADD  CONSTRAINT [DF_Authors_AuthorId]  DEFAULT (newid()) FOR [AuthorId]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Categoryıd]  DEFAULT (newid()) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Posts] ADD  CONSTRAINT [DF_Posts_PostId]  DEFAULT (newid()) FOR [PostId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Authors]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Categories]
GO
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
