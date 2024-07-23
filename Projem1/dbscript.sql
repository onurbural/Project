USE [tarihCalismasi]
GO
/****** Object:  Table [dbo].[tableonur]    Script Date: 2024-07-23 17:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tableonur](
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
ALTER TABLE [dbo].[tableonur] ADD  DEFAULT ('00:00:00') FOR [BaslangicSaat]
GO
