USE [ClientAgent]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 24.06.2023 0:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[DealShare] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 24.06.2023 0:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](max) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[AgentId] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (41, N'Додонов', N'Илья', N'Геннадьевич', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (42, N'Мухтаруллин', N'Руслан', N'Расыхович', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (43, N'Мосеева', N'Любовь', N'Александровна', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (44, N'Киселев', N'Алексей', N'Геннадьевич', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (45, N'Клюйков', N'Евгений', N'Николаевич', CAST(50.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (46, N'Жданова', N'Галина', N'Николаевна', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (47, N'Басырова', N'Елена', N'Азатовна', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (48, N'Швецов', N'Виталий', N'Олегович', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (52, N'rebreb', N'rber', N'ebt', NULL)
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (53, N'reew', N'erewr', N'erer', CAST(4.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (54, N'sadfasd', N'asdasd', N'asd', CAST(32.00 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (55, N'asd', N'asdasd', N'asd', NULL)
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (56, N'dfgh', N'dfgh', N'jfghj', NULL)
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (57, N'hahsdh', N'hasdhahsdh', N'hhashdha', CAST(12.27 AS Decimal(5, 2)))
INSERT [dbo].[Agent] ([Id], [FirstName], [LastName], [Patronymic], [DealShare]) VALUES (58, N'аааааааа', N'аааааа', N'ааааааааа', CAST(4.50 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (2, N'Денисова', N'Олеся', N'Леонидовна', N'88', N'dammy@email.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (3, N'Сафронов', N'Алексей', N'Вячеславович', N'', N'client@esoft.tech', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (4, N'Кудряшов', N'Александр', N'Витальевич', N'551988', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (5, N'Фёдоров', N'Алексей', N'Николаевич', N'', N'fedorov@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (6, N'Пелымская', N'Светлана', N'Александровна', N'83452112233', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (7, N'Коновальчик', N'Татьяна', N'Геннадьевна', N'', N'dummy@email.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (8, N'Молоковская', N'Светлана', N'Михайловна', N'898489848', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (9, N'Моторина', N'Анастасия', N'Сергеевна', N'895159848', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (10, N'Поспелова', N'Ольга', N'Александровна', N'', N'angel@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (11, N'Жиляков', N'Владимир', N'Владимирович', N'445588', N'445588@email.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (12, N'Ефремов', N'Владислав', N'Николаевич', N'', N'parampampam@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (13, N'Баль', N'Валентина', N'Сергеевна', N'7998888444', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (14, N'Стрелков', N'Артем', N'Николаевич', N'', N'test@test.test', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (15, N'Луканин', N'Павел', N'Валерьевич', N'', N'foo@bar.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (16, N'Шарипова', N'Эльвира', N'Закирчановна', N'12345678910', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (17, N'Фомина', N'Маргарита', N'Николаевна', N'', N'fomina@email.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (18, N'Кремлев', N'Владислав', N'Юрьевич', N'777', N'kremlevvu@gmail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (19, N'Пономарева', N'Елена', N'Сергеевна', N'', N'ponomareva@gmail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (20, N'Шелест', N'Тамара', N'Васильевна', N'112', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (21, N'Шарипов', N'Рустам', N'Владимирович', N'', N'sharipov@yandex.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (22, N'Романов', N'Сергей', N'Федорович', N'02', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (23, N'Кручинин', N'Иван', N'Андреевич', N'', N'kruch@list.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (24, N'Алферов', N'Алексей', N'Николаевич', N'688899444', N'', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (25, N'Попов ', N'Алексей', N'Николаевич', N'489848565', N'popovan@bik.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (26, N'Неезжала', N'Наталья', N'Леонидовна', N'', N'neez@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (27, N'Иванов', N'Иван', N'Иванович', N'12345427', NULL, NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (33, N'swq', N'drf', N'cfsr', N'098789045', N'@@@@2@@@@fD545', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (34, N'р', N'о', N'ор', N'567', N'dmmy@email.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (35, N'lkjhgfcx', N'mjhgcx', N'uytfd', N'898489848', N'client@esoft.tech', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (37, N'ааааааа', N'xcvbвк', N'кxcv', N'66666666666', N'shrpov@yandex.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (38, N'ааааааа', N'xcvbвк', N'кxcv', N'66666666666', N'shrpov@yandex.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (40, N'', N'GgGGGGGGG', N'FFFFFFFFFF', N'4546', N'ggdg@email.com', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (41, N'GGGGG', N'cbcghfh', N'fhfhhh', N'666', N'cvcbc@gmial.com', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (42, NULL, NULL, NULL, NULL, N'папвав@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (43, NULL, NULL, NULL, N'89173951924', NULL, NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (44, NULL, NULL, NULL, NULL, N'ddd@mail.ru', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (45, N'gdfgdfd', NULL, NULL, N'89173951924', NULL, NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (46, NULL, NULL, NULL, N'89173951924', NULL, NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (47, NULL, NULL, NULL, NULL, N'мпмпмп@email.com', NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (48, NULL, NULL, NULL, N'89376194647', NULL, NULL)
INSERT [dbo].[Client] ([Id], [FirstName], [LastName], [Patronymic], [Phone], [Email], [AgentId]) VALUES (49, N'а', N'аааа', N'аааа', N'444', N'ыы@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Agent] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Agent]
GO
