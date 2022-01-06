IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Nieuws')
BEGIN
	CREATE DATABASE [Nieuws]
END
GO
USE [Nieuws]
GO
/****** Object:  Table [dbo].[Auteur]    Script Date: 06/01/2022 22:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auteur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nieuwsArtikelId] [int] NOT NULL,
	[gebruikerId] [int] NOT NULL,
 CONSTRAINT [PK_39] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 06/01/2022 22:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naam] [varchar](250) NOT NULL,
 CONSTRAINT [PK_78] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gebruiker]    Script Date: 06/01/2022 22:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gebruiker](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[naam] [varchar](100) NOT NULL,
	[voornaam] [varchar](100) NOT NULL,
	[geslacht] [varchar](6) NOT NULL,
	[geboortedatum] [date] NULL,
	[beroep] [varchar](250) NULL,
	[opleiding] [varchar](250) NULL,
	[homepage] [varchar](250) NULL,
	[avatar] [varchar](250) NOT NULL,
	[abonnee] [bit] NOT NULL,
	[email] [varchar](200) NOT NULL,
 CONSTRAINT [PK_5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NieuwsArtikel]    Script Date: 06/01/2022 22:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NieuwsArtikel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titel] [varchar](250) NOT NULL,
	[categorieId] [int] NOT NULL,
	[artikel] [varchar](250) NOT NULL,
	[aangemaaktOp] [datetime] NOT NULL,
	[samenvatting] [varchar](250) NOT NULL,
	[cover] [varchar](250) NOT NULL,
	[plusArtikel] [bit] NOT NULL,
 CONSTRAINT [PK_30] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reactie]    Script Date: 06/01/2022 22:51:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reactie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aangemaaktOp] [datetime] NOT NULL,
	[gebruikerId] [int] NOT NULL,
	[nieuwsArtikelId] [int] NOT NULL,
	[reactie] [varchar](250) NOT NULL,
	[scorePunten] [int] NOT NULL,
 CONSTRAINT [PK_66] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Auteur] ON 
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1004, 1009, 1022)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1005, 1010, 1020)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1006, 1011, 2)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1007, 1012, 1017)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1008, 1013, 1013)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1009, 1014, 1008)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1010, 1015, 1026)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1011, 1016, 1020)
GO
INSERT [dbo].[Auteur] ([id], [nieuwsArtikelId], [gebruikerId]) VALUES (1012, 1017, 1006)
GO
SET IDENTITY_INSERT [dbo].[Auteur] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorie] ON 
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (1, N'Tech')
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (2, N'Nieuws')
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (3, N'Spotlight')
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (1002, N'IT')
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (1003, N'Hobby')
GO
INSERT [dbo].[Categorie] ([id], [naam]) VALUES (1004, N'Natuur')
GO
SET IDENTITY_INSERT [dbo].[Categorie] OFF
GO
SET IDENTITY_INSERT [dbo].[Gebruiker] ON 
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (2, N'Kalman', N'Jan', N'Man', CAST(N'1982-05-05' AS Date), N'quisquam', NULL, N'µzumvordesivevording.com', N'Assets/Images/male-1.jpg', 0, N'dion61@yahoo.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1006, N'Yilmaz', N'Senna', N'Vrouw', CAST(N'1988-01-20' AS Date), N'quia', NULL, N'hofman.nl', N'Assets/Images/female-1.jpg', 1, N'xmoussaoui@yahoo.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1007, N'van Cuijck', N'Tobias', N'Man', CAST(N'1975-08-25' AS Date), N'et', NULL, N'wolters.org', N'Assets/Images/male-2.jpg', 0, N'luka06@delarivebox.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1008, N'de Haan', N'Bas', N'Man', CAST(N'1973-08-06' AS Date), N'labore', NULL, N'bastiaense.com', N'Assets/Images/male-3.jpg', 1, N'ggansnebgenaamdtengnageltotbonkenhave@gmail.com')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1011, N'de Bruin', N'Pepijn', N'Man', CAST(N'1994-02-11' AS Date), N'et', NULL, N'ulrich.org', N'Assets/Images/male-4.jpg', 1, N'bas49@yahoo.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1013, N'Janssen', N'Ravi', N'Man', CAST(N'1977-12-11' AS Date), N'voluptatem', NULL, N'dubbeldemutsvandersluys.com', N'Assets/Images/male-5.jpg', 0, N'hanna.vansuinvorde@yahoo.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1016, N'van Hugenpoth', N'Cornelis', N'Man', CAST(N'1992-08-23' AS Date), N'perferendis', NULL, N'westerburg.nl', N'Assets/Images/male-6.jpg', 1, N'zowranvonranzow.valentijn@mangal.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1017, N'van Dijk', N'Stan', N'Man', CAST(N'1989-09-17' AS Date), N'sunt', NULL, N'fransestorm.nl', N'Assets/Images/male-7.jpg', 0, N'mart.paspoortvangrijpskerkeenpoppendamme@janga.com')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1020, N'Korkmaz', N'Alexa', N'Vrouw', CAST(N'1975-08-22' AS Date), N'voluptatum', NULL, N'blom.nl', N'Assets/Images/female-8.jpg', 0, N'anna20@live.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1021, N'Schouten', N'Elise', N'Vrouw', CAST(N'1994-07-04' AS Date), N'sapiente', NULL, N'rahajoegenaamdengeschreventenkate.com', N'Assets/Images/female-2.jpg', 0, N'kevin20@vanhagen.org')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1022, N'de Pruyssenaere', N'Feline', N'Vrouw', CAST(N'1999-04-17' AS Date), N'impedit', NULL, N'demirel.com', N'Assets/Images/female-3.jpg', 1, N'evy68@unal.com')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1024, N'Klomp', N'Amy', N'Vrouw', CAST(N'1978-10-17' AS Date), N'atque', NULL, N'vandennyeuwenhuysen.nl', N'Assets/Images/female-4.jpg', 0, N'fpaspoortvangrijpskerkeenpoppendamme@live.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1025, N'Vervoort', N'Roos', N'Vrouw', CAST(N'1990-08-22' AS Date), N'sed', NULL, N'simsek.com', N'Assets/Images/female-5.jpg', 1, N'ikijkindevegte@yahoo.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1026, N'Mahabier', N'Evy', N'Vrouw', CAST(N'1998-01-15' AS Date), N'numquam', NULL, N'jonker.com', N'Assets/Images/female-6.jpg', 0, N'evelien.yavuz@live.nl')
GO
INSERT [dbo].[Gebruiker] ([id], [naam], [voornaam], [geslacht], [geboortedatum], [beroep], [opleiding], [homepage], [avatar], [abonnee], [email]) VALUES (1027, N'van Hulten', N'Mirte', N'Vrouw', CAST(N'1976-03-14' AS Date), N'aliquam', NULL, N'tekin.com', N'Assets/Images/female-7.jpg', 1, N'yuksel.anouk@delange.nl')
GO
SET IDENTITY_INSERT [dbo].[Gebruiker] OFF
GO
SET IDENTITY_INSERT [dbo].[NieuwsArtikel] ON 
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1009, N'est velit egestas', 1003, N'Lorem ipsum dolor sit a', CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'malesuada nunc vel risus commodo viverra maecenas', N'Assets/Images/header-1.jpg', 0)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1010, N'Integer eget aliquet nibh praesent', 1004, N'Elit ut aliquam purus sit amet luctus. Sit amet consectetur adipiscing elit ut aliquam purus sit amet. Ipsum consequat nisl vel pretium lectus quam id.', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Elit ut aliquam purus sit amet luctus.', N'Assets/Images/header-2.jpg', 1)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1011, N'Sem fringilla ut morbi', 1002, N' Mattis ullamcorper velit sed ullamcorper morbi. Purus gravida quis', CAST(N'2022-01-12T00:00:00.000' AS DateTime), N'Semper auctor neque vitae tempus quam pellentesque.', N'Assets/Images/header-3.jpg', 0)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1012, N'Eu sem integer vitae', 3, N'Ut consequat semper viverra nam. Risus nec feugiat in fermentum posuere urna nec.', CAST(N'2022-01-15T00:00:00.000' AS DateTime), N'augue interdum velit euismod. M', N'Assets/Images/header-4.jpg', 1)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1013, N't morbi tristique senectus et', 2, N'Nisl purus in mollis nunc. Ut sem viverra aliquet eget sit amet. Aliquam nulla', CAST(N'2022-05-19T00:00:00.000' AS DateTime), N'Quis viverra nibh cras pulvinar mattis nunc', N'Assets/Images/header-6.jpg', 1)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1014, N'Odio eu feugiat pretium nibh', 1, N's molestie nunc. Dui id ornare arcu odio ut. Id diam maecenas ultricies mi eget mauris pharetra et ultrices.', CAST(N'2022-01-02T00:00:00.000' AS DateTime), N'um. Quis viverra nibh cras pulvinar mattis nunc sed', N'Assets/Images/header-7.jpg', 0)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1015, N'Vel eros donec ac', 1003, N'Lobortis elementum nibh tellus molestie nunc non blandit. A cras semper auctor', CAST(N'2022-06-25T00:00:00.000' AS DateTime), N'cies mi quis hendrerit dolor magna', N'Assets/Images/header-8.jpg', 0)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1016, N'iverra aliquet eget sit', 1004, N'Tortor at auctor urna nunc id cursus metus aliquam eleifend. Id semper risus in hendrerit gravida rutrum quisque. Sagittis orci a scelerisque purus ', CAST(N'2022-01-05T00:00:00.000' AS DateTime), N'Nisl condimentum id venenatis a condimentum', N'Assets/Images/header-9.jpg', 1)
GO
INSERT [dbo].[NieuwsArtikel] ([id], [titel], [categorieId], [artikel], [aangemaaktOp], [samenvatting], [cover], [plusArtikel]) VALUES (1017, N'Vel eros donec ac odio', 1002, N'Pretium vulputate sapien nec sagittis. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque. Viver', CAST(N'2022-09-26T00:00:00.000' AS DateTime), N'Et ligula ullamcorper malesuada proin', N'Assets/Images/header-10.jpg', 0)
GO
SET IDENTITY_INSERT [dbo].[NieuwsArtikel] OFF
GO
SET IDENTITY_INSERT [dbo].[Reactie] ON 
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (6, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 2, 1009, N'urpis in eu mi bibendum neque egestas. Pretium vulputate sapien nec', 1)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (7, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 2, 1011, N'pellentesque. Viverra aliquet eget', 0)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (8, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1013, 1015, N'mper auctor neq', 2)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (9, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1025, 1013, N'Ipsum nunc aliquet bibendum enim facilisis.', 5)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (10, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1017, 1013, N'n blandit. A cras semper auctor nequ', 2)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (11, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1027, 1013, N'imentum vitae sapien pellen', 6)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (12, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1026, 1013, N'pulvinar elementum. Ipsum ', 9)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (13, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1011, 1014, N'l condimentum id venenatis a condimentum vitae s', 10)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (14, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1021, 1015, N'Mi sit amet mauris commodo quis. Id consectetur purus ut faucibus', 4)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (15, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1020, 1010, N'Pretium vulputate sapien nec sagittis. Nisl condi', 7)
GO
INSERT [dbo].[Reactie] ([id], [aangemaaktOp], [gebruikerId], [nieuwsArtikelId], [reactie], [scorePunten]) VALUES (16, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 1024, 1012, N'Odio eu feugiat pretium nibh ipsum. Pretiu', 12)
GO
SET IDENTITY_INSERT [dbo].[Reactie] OFF
GO
ALTER TABLE [dbo].[Auteur]  WITH CHECK ADD  CONSTRAINT [FK_40] FOREIGN KEY([nieuwsArtikelId])
REFERENCES [dbo].[NieuwsArtikel] ([id])
GO
ALTER TABLE [dbo].[Auteur] CHECK CONSTRAINT [FK_40]
GO
ALTER TABLE [dbo].[Auteur]  WITH CHECK ADD  CONSTRAINT [FK_61] FOREIGN KEY([gebruikerId])
REFERENCES [dbo].[Gebruiker] ([id])
GO
ALTER TABLE [dbo].[Auteur] CHECK CONSTRAINT [FK_61]
GO
ALTER TABLE [dbo].[NieuwsArtikel]  WITH CHECK ADD  CONSTRAINT [FK_80] FOREIGN KEY([categorieId])
REFERENCES [dbo].[Categorie] ([id])
GO
ALTER TABLE [dbo].[NieuwsArtikel] CHECK CONSTRAINT [FK_80]
GO
ALTER TABLE [dbo].[Reactie]  WITH CHECK ADD  CONSTRAINT [FK_70] FOREIGN KEY([nieuwsArtikelId])
REFERENCES [dbo].[NieuwsArtikel] ([id])
GO
ALTER TABLE [dbo].[Reactie] CHECK CONSTRAINT [FK_70]
GO
ALTER TABLE [dbo].[Reactie]  WITH CHECK ADD  CONSTRAINT [FK_73] FOREIGN KEY([gebruikerId])
REFERENCES [dbo].[Gebruiker] ([id])
GO
ALTER TABLE [dbo].[Reactie] CHECK CONSTRAINT [FK_73]
GO
