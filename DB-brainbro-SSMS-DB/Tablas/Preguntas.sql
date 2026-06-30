USE BrainBro;
GO

CREATE TABLE [dbo].[Preguntas](
	[ID_Pregunta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Materia] [varchar](50) NOT NULL,
	[Grado] [varchar](10) NOT NULL,
	[Pregunta] [varchar](500) NOT NULL,
	[FechaCreacion] [date] NULL,

PRIMARY KEY CLUSTERED 
(
	[ID_Pregunta] ASC
)
);
GO

ALTER TABLE [dbo].[Preguntas]
ADD DEFAULT (getdate()) FOR [FechaCreacion];
GO

ALTER TABLE [dbo].[Preguntas]
WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
GO

ALTER TABLE [dbo].[Preguntas]
WITH CHECK ADD CHECK
(
	[Materia]='Espanol'
	OR [Materia]='Matematicas'
	OR [Materia]='Ciencias'
	OR [Materia]='Sistemas'
	OR [Materia]='Emprendimiento'
	OR [Materia]='Sociales'
);
GO