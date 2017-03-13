USE [EXAMPLE_01]
GO
/****** Object:  Table [dbo].[table_01]    Script Date: 13.03.2017 13:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_01](
	[depID] [int] IDENTITY(1,1) NOT NULL,
	[depAdi] [nvarchar](50) NOT NULL,
	[tarih] [date] NULL,
 CONSTRAINT [pk_dep] PRIMARY KEY CLUSTERED 
(
	[depID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_02]    Script Date: 13.03.2017 13:16:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_02](
	[ogrID] [int] IDENTITY(1,1) NOT NULL,
	[ogrAdi] [nvarchar](50) NOT NULL,
	[ogrSoaydi] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_ogrenci] PRIMARY KEY CLUSTERED 
(
	[ogrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
