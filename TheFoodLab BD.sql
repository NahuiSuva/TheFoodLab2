USE [TheFoodLabBD]
GO
/****** Object:  User [alumno]    Script Date: 21/11/2019 07:43:07 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 21/11/2019 07:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[idIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[idIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientesABuscar]    Script Date: 21/11/2019 07:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientesABuscar](
	[idIngredienteABuscar] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[fk_IdIngrediente] [int] NOT NULL,
 CONSTRAINT [PK_IngredientesABuscar] PRIMARY KEY CLUSTERED 
(
	[idIngredienteABuscar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientesXRecetas]    Script Date: 21/11/2019 07:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientesXRecetas](
	[idIngredentesXRecetas] [int] IDENTITY(1,1) NOT NULL,
	[fk_Ingredientes] [int] NOT NULL,
	[fk_Recetas] [int] NOT NULL,
 CONSTRAINT [PK_IngredientesXRecetas] PRIMARY KEY CLUSTERED 
(
	[idIngredentesXRecetas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderadores]    Script Date: 21/11/2019 07:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderadores](
	[idModeradores] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Moderadores] PRIMARY KEY CLUSTERED 
(
	[idModeradores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recetas]    Script Date: 21/11/2019 07:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recetas](
	[idRecetas] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Foto] [varchar](50) NULL,
	[Duracion] [int] NULL,
	[fk_TiposComidas] [int] NOT NULL,
	[fk_Receteros] [int] NOT NULL,
 CONSTRAINT [PK_Recetas] PRIMARY KEY CLUSTERED 
(
	[idRecetas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receteros]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receteros](
	[idReceteros] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[Foto] [varchar](max) NULL,
	[Edad] [int] NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Receteros] PRIMARY KEY CLUSTERED 
(
	[idReceteros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reclamos]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reclamos](
	[idReclamos] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[fk_Receteros] [int] NOT NULL,
 CONSTRAINT [PK_Reclamos] PRIMARY KEY CLUSTERED 
(
	[idReclamos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposComida]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposComida](
	[idTiposComidas] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposComida] PRIMARY KEY CLUSTERED 
(
	[idTiposComidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valoraciones]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valoraciones](
	[idValoraciones] [int] IDENTITY(1,1) NOT NULL,
	[Acumulador] [int] NOT NULL,
	[Contador] [int] NOT NULL,
	[fk_Recetas] [int] NOT NULL,
 CONSTRAINT [PK_Valoraciones] PRIMARY KEY CLUSTERED 
(
	[idValoraciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingredientes] ON 

INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (1, N'Leche')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (2, N'Huevo')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (3, N'Harina')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (4, N'Aceite')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (5, N'Sal')
INSERT [dbo].[Ingredientes] ([idIngrediente], [Nombre]) VALUES (7, N'Azucar')
SET IDENTITY_INSERT [dbo].[Ingredientes] OFF
SET IDENTITY_INSERT [dbo].[IngredientesXRecetas] ON 

INSERT [dbo].[IngredientesXRecetas] ([idIngredentesXRecetas], [fk_Ingredientes], [fk_Recetas]) VALUES (3, 2, 5)
SET IDENTITY_INSERT [dbo].[IngredientesXRecetas] OFF
SET IDENTITY_INSERT [dbo].[Moderadores] ON 

INSERT [dbo].[Moderadores] ([idModeradores], [Username], [Password]) VALUES (1, N'a', N'a')
INSERT [dbo].[Moderadores] ([idModeradores], [Username], [Password]) VALUES (2, N'thefoodlab', N'admin')
SET IDENTITY_INSERT [dbo].[Moderadores] OFF
SET IDENTITY_INSERT [dbo].[Recetas] ON 

INSERT [dbo].[Recetas] ([idRecetas], [Titulo], [Descripcion], [Foto], [Duracion], [fk_TiposComidas], [fk_Receteros]) VALUES (5, N'bbb', N'bbb', N'bbb', 1, 2, 2)
SET IDENTITY_INSERT [dbo].[Recetas] OFF
SET IDENTITY_INSERT [dbo].[Receteros] ON 

INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (1, N'aaa', N'aaa', N'aaa', N'aaa', 11, N'aaa', N'aaa', N'aaa')
INSERT [dbo].[Receteros] ([idReceteros], [Nombre], [Apellido], [Descripcion], [Foto], [Edad], [Email], [Username], [Password]) VALUES (2, N'bbb', N'bbb', N'bbb', N'bbb', 22, N'bbb', N'bbb', N'bbb')
SET IDENTITY_INSERT [dbo].[Receteros] OFF
SET IDENTITY_INSERT [dbo].[Reclamos] ON 

INSERT [dbo].[Reclamos] ([idReclamos], [Descripcion], [fk_Receteros]) VALUES (1, N'aaa', 1)
INSERT [dbo].[Reclamos] ([idReclamos], [Descripcion], [fk_Receteros]) VALUES (3, N'bbb', 2)
SET IDENTITY_INSERT [dbo].[Reclamos] OFF
SET IDENTITY_INSERT [dbo].[TiposComida] ON 

INSERT [dbo].[TiposComida] ([idTiposComidas], [Nombre]) VALUES (1, N'Salado')
INSERT [dbo].[TiposComida] ([idTiposComidas], [Nombre]) VALUES (2, N'Dulce')
SET IDENTITY_INSERT [dbo].[TiposComida] OFF
ALTER TABLE [dbo].[IngredientesXRecetas]  WITH CHECK ADD  CONSTRAINT [FK_IngredientesXRecetas_Ingredientes] FOREIGN KEY([fk_Ingredientes])
REFERENCES [dbo].[Ingredientes] ([idIngrediente])
GO
ALTER TABLE [dbo].[IngredientesXRecetas] CHECK CONSTRAINT [FK_IngredientesXRecetas_Ingredientes]
GO
ALTER TABLE [dbo].[IngredientesXRecetas]  WITH CHECK ADD  CONSTRAINT [FK_IngredientesXRecetas_Recetas] FOREIGN KEY([fk_Recetas])
REFERENCES [dbo].[Recetas] ([idRecetas])
GO
ALTER TABLE [dbo].[IngredientesXRecetas] CHECK CONSTRAINT [FK_IngredientesXRecetas_Recetas]
GO
ALTER TABLE [dbo].[Recetas]  WITH CHECK ADD  CONSTRAINT [FK_Recetas_Receteros] FOREIGN KEY([fk_Receteros])
REFERENCES [dbo].[Receteros] ([idReceteros])
GO
ALTER TABLE [dbo].[Recetas] CHECK CONSTRAINT [FK_Recetas_Receteros]
GO
ALTER TABLE [dbo].[Recetas]  WITH CHECK ADD  CONSTRAINT [FK_Recetas_TiposComida] FOREIGN KEY([fk_TiposComidas])
REFERENCES [dbo].[TiposComida] ([idTiposComidas])
GO
ALTER TABLE [dbo].[Recetas] CHECK CONSTRAINT [FK_Recetas_TiposComida]
GO
ALTER TABLE [dbo].[Reclamos]  WITH CHECK ADD  CONSTRAINT [FK_Reclamos_Receteros] FOREIGN KEY([fk_Receteros])
REFERENCES [dbo].[Receteros] ([idReceteros])
GO
ALTER TABLE [dbo].[Reclamos] CHECK CONSTRAINT [FK_Reclamos_Receteros]
GO
ALTER TABLE [dbo].[Valoraciones]  WITH CHECK ADD  CONSTRAINT [FK_Valoraciones_Recetas] FOREIGN KEY([fk_Recetas])
REFERENCES [dbo].[Recetas] ([idRecetas])
GO
ALTER TABLE [dbo].[Valoraciones] CHECK CONSTRAINT [FK_Valoraciones_Recetas]
GO
/****** Object:  StoredProcedure [dbo].[AltaIngrediente]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AltaIngrediente]  @Nombre nvarchar(50)
 as 
insert into Ingredientes (Nombre) VALUES (@Nombre)
GO
/****** Object:  StoredProcedure [dbo].[AltaReceta]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AltaReceta] @Titulo varchar(100),@Descripcion varchar(500),@Foto varchar(200), @Duracion int, @fk_TiposComidas int, @fk_Receteros int as
insert into Recetas(Titulo, Descripcion, Foto, Duracion, fk_TiposComidas, fk_Receteros) values(@Titulo,@Descripcion,@Foto,@Duracion,@fk_TiposComidas,@fk_Receteros)
GO
/****** Object:  StoredProcedure [dbo].[BajaIngrediente]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BajaIngrediente] @idIng int as 
delete from Ingredientes where idIngrediente=@idIng
GO
/****** Object:  StoredProcedure [dbo].[BajaRecetas]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BajaRecetas] @idReceta int as
delete from IngredientesXRecetas where fk_Recetas=@idReceta
delete from Recetas where idRecetas=@idReceta
GO
/****** Object:  StoredProcedure [dbo].[ModificacionIngrediente]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificacionIngrediente] @idIng int, @Nombre varchar(50) as
Update Ingredientes  SET Nombre=@Nombre where  idIngrediente=@idIng
GO
/****** Object:  StoredProcedure [dbo].[ModificacionRecetas]    Script Date: 21/11/2019 07:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ModificacionRecetas] @Titulo varchar(100),@Descripcion varchar(500),@Foto varchar(200), @Duracion int, @fk_TiposComidas int, @fk_Receteros int as
update Recetas set Titulo = @Titulo,Descripcion=@Descripcion, Foto=@Foto,Duracion=@Duracion,fk_TiposComidas=@fk_TiposComidas,fk_Receteros=@fk_Receteros
GO
