USE [MovieDb]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](45) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Duration] [nvarchar](10) NULL,
	[ImageUrl] [nvarchar](45) NULL,
	[Trailer] [nvarchar](45) NULL,
	[DirectorId] [int] NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Category]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Category](
	[MovideId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Movie_Category] PRIMARY KEY CLUSTERED 
(
	[MovideId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Star]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Star](
	[MovieId] [int] NOT NULL,
	[StarId] [int] NOT NULL,
 CONSTRAINT [PK_Movie_Star] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC,
	[StarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieDetail]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieDetail](
	[id] [int] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Publish_date] [datetime] NOT NULL,
 CONSTRAINT [PK_MovieDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Star]    Script Date: 4.08.2020 13:16:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Star](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Star] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Name]) VALUES (1, N'Macera                                       ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (2, N'Romantik                                     ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (3, N'Bilim Kurgu                                  ')
INSERT [dbo].[Category] ([id], [Name]) VALUES (4, N'Korku                                        ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([id], [Name], [Surname]) VALUES (1, N'Yönetmen name 1', N'Yönetmen 1 surname')
INSERT [dbo].[Director] ([id], [Name], [Surname]) VALUES (2, N'Yönetmen name 2', N'Yönetmen 2 surname')
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([id], [Name], [Description], [Duration], [ImageUrl], [Trailer], [DirectorId]) VALUES (1, N'Film 1', N'Film 1 açıklama', N'120', N'1.jpg', N'1.mp4', 1)
INSERT [dbo].[Movie] ([id], [Name], [Description], [Duration], [ImageUrl], [Trailer], [DirectorId]) VALUES (3, N'Film 2', N'Film 2 açıklama', N'90', N'2.jpg', N'2.mp4', 2)
SET IDENTITY_INSERT [dbo].[Movie] OFF
GO
INSERT [dbo].[Movie_Category] ([MovideId], [CategoryId]) VALUES (1, 1)
INSERT [dbo].[Movie_Category] ([MovideId], [CategoryId]) VALUES (1, 3)
INSERT [dbo].[Movie_Category] ([MovideId], [CategoryId]) VALUES (3, 1)
GO
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (1, 1)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (1, 2)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (3, 1)
GO
INSERT [dbo].[MovieDetail] ([id], [Country], [Publish_date]) VALUES (1, N'Türkiye', CAST(N'2020-08-04T13:08:28.150' AS DateTime))
INSERT [dbo].[MovieDetail] ([id], [Country], [Publish_date]) VALUES (3, N'Türkiye', CAST(N'2020-08-04T13:08:48.480' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Star] ON 

INSERT [dbo].[Star] ([id], [Name], [Surname]) VALUES (1, N'Oyuncu 1 name', N'Oyuncu 2 surname')
INSERT [dbo].[Star] ([id], [Name], [Surname]) VALUES (2, N'Oyuncu 2 name', N'Oyuncu 2 surname')
SET IDENTITY_INSERT [dbo].[Star] OFF
GO
ALTER TABLE [dbo].[MovieDetail] ADD  CONSTRAINT [DF_MovieDetail_Publish_date]  DEFAULT (getdate()) FOR [Publish_date]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Director] FOREIGN KEY([DirectorId])
REFERENCES [dbo].[Director] ([id])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Director]
GO
ALTER TABLE [dbo].[Movie_Category]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Category_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Movie_Category] CHECK CONSTRAINT [FK_Movie_Category_Category]
GO
ALTER TABLE [dbo].[Movie_Category]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Category_Movie] FOREIGN KEY([MovideId])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[Movie_Category] CHECK CONSTRAINT [FK_Movie_Category_Movie]
GO
ALTER TABLE [dbo].[Movie_Star]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Star_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[Movie_Star] CHECK CONSTRAINT [FK_Movie_Star_Movie]
GO
ALTER TABLE [dbo].[Movie_Star]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Star_Star] FOREIGN KEY([StarId])
REFERENCES [dbo].[Star] ([id])
GO
ALTER TABLE [dbo].[Movie_Star] CHECK CONSTRAINT [FK_Movie_Star_Star]
GO
ALTER TABLE [dbo].[MovieDetail]  WITH CHECK ADD  CONSTRAINT [FK_MovieDetail_Movie] FOREIGN KEY([id])
REFERENCES [dbo].[Movie] ([id])
GO
ALTER TABLE [dbo].[MovieDetail] CHECK CONSTRAINT [FK_MovieDetail_Movie]
GO
