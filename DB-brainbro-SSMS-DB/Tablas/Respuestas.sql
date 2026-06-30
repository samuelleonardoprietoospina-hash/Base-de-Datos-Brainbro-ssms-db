USE BrainBro;
GO

CREATE TABLE [dbo].[Respuestas](
	[ID_Respuesta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pregunta] [int] NOT NULL,
	[Respuesta] [varchar](300) NOT NULL,
	[EsCorrecta] [bit] NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[ID_Respuesta] ASC
)
);
GO

ALTER TABLE [dbo].[Respuestas]
WITH CHECK ADD FOREIGN KEY([ID_Pregunta])
REFERENCES [dbo].[Preguntas] ([ID_Pregunta]);
GO