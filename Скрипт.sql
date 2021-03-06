USE [18ip1]
GO
/****** Object:  Table [dbo].[Categorii]    Script Date: 02.10.2021 12:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorii](
	[ID_categorii] [int] IDENTITY(1,1) NOT NULL,
	[Nazmanie_categorii] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categorii] PRIMARY KEY CLUSTERED 
(
	[ID_categorii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 02.10.2021 12:08:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[ID_ingredient] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie_ingredienta] [nvarchar](max) NULL,
	[Nalichie] [int] NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[ID_ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02.10.2021 12:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_product] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie_tovara] [nvarchar](max) NULL,
	[ID_categorii] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Opisanie] [text] NULL,
	[Ves] [float] NULL,
	[Stoimost] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsIngredient]    Script Date: 02.10.2021 12:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsIngredient](
	[ID_productsIngredient] [int] IDENTITY(1,1) NOT NULL,
	[ID_product] [int] NOT NULL,
	[ID_ingredient] [int] NOT NULL,
 CONSTRAINT [PK_ProductsIngredient] PRIMARY KEY CLUSTERED 
(
	[ID_productsIngredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categorii] FOREIGN KEY([ID_categorii])
REFERENCES [dbo].[Categorii] ([ID_categorii])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categorii]
GO
ALTER TABLE [dbo].[ProductsIngredient]  WITH CHECK ADD  CONSTRAINT [FK_ProductsIngredient_Ingredient] FOREIGN KEY([ID_ingredient])
REFERENCES [dbo].[Ingredient] ([ID_ingredient])
GO
ALTER TABLE [dbo].[ProductsIngredient] CHECK CONSTRAINT [FK_ProductsIngredient_Ingredient]
GO
ALTER TABLE [dbo].[ProductsIngredient]  WITH CHECK ADD  CONSTRAINT [FK_ProductsIngredient_Products] FOREIGN KEY([ID_product])
REFERENCES [dbo].[Products] ([ID_product])
GO
ALTER TABLE [dbo].[ProductsIngredient] CHECK CONSTRAINT [FK_ProductsIngredient_Products]
GO
