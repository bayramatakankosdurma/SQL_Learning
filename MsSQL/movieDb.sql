USE [MovieDb]
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
SET IDENTITY_INSERT [dbo].[Star] ON 

INSERT [dbo].[Star] ([id], [Name], [Surname]) VALUES (1, N'Oyuncu 1 name', N'Oyuncu 2 surname')
INSERT [dbo].[Star] ([id], [Name], [Surname]) VALUES (2, N'Oyuncu 2 name', N'Oyuncu 2 surname')
SET IDENTITY_INSERT [dbo].[Star] OFF
GO
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (1, 1)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (1, 2)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (3, 1)
GO
INSERT [dbo].[MovieDetail] ([id], [Country], [Publish_date]) VALUES (1, N'Türkiye', CAST(N'2020-08-04T13:08:28.150' AS DateTime))
INSERT [dbo].[MovieDetail] ([id], [Country], [Publish_date]) VALUES (3, N'Türkiye', CAST(N'2020-08-04T13:08:48.480' AS DateTime))
GO
