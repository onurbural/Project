USE [tarihCalismasi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024-07-24 08:37:32 ******/
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
/****** Object:  Table [dbo].[KayitBilgileri]    Script Date: 2024-07-24 08:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KayitBilgileri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](max) NOT NULL,
	[BaslangicZaman] [date] NOT NULL,
	[KayitZamani] [datetime] NOT NULL,
	[BaslangicSaat] [time](7) NOT NULL,
 CONSTRAINT [PK_tableonur] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[KayitBilgileri] ADD  DEFAULT ('00:00:00') FOR [BaslangicSaat]
GO



//add data 
INSERT INTO Tableonur (İsim, BaslangicZaman, KayitZamani, BaslangicSaat) VALUES
('Onur', '2024-07-16', '2024-03-06 00:00:00', '14:53:28'),
('Ali', '2022-11-18', '2024-05-05 12:53:47', '22:15:18'),
('Ayşe', '2023-09-12', '2024-02-14 08:23:45', '09:45:32'),
('Mehmet', '2025-01-05', '2024-12-30 13:14:25', '17:23:50'),
('Fatma', '2023-04-20', '2024-01-10 10:12:34', '16:45:00'),
('Ahmet', '2022-06-15', '2024-06-21 05:50:12', '18:30:00'),
('Zeynep', '2023-11-23', '2024-04-17 15:23:47', '20:15:45'),
('Emre', '2023-07-18', '2024-03-03 04:12:18', '23:45:28'),
('Elif', '2022-12-22', '2024-07-19 09:53:28', '12:30:10'),
('Yusuf', '2023-08-09', '2024-05-02 01:11:55', '14:55:20'),
('Merve', '2022-02-10', '2024-01-20 18:22:33', '08:15:30'),
('Kerem', '2023-05-16', '2024-03-15 07:54:44', '11:25:00'),
('Eda', '2024-03-01', '2024-02-25 11:23:21', '13:45:40'),
('Can', '2023-10-30', '2024-04-10 03:34:56', '19:55:55'),
('Nazlı', '2022-07-07', '2024-05-23 02:45:00', '21:15:22');

