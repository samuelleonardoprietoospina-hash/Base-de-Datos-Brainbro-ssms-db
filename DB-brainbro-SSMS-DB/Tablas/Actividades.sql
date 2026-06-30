USE BrainBro;
GO

CREATE TABLE [dbo].[Actividades](
	[ID_Actividad] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Actividad] [varchar](200) NOT NULL,
	[Estado] [varchar](20) NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[ID_Actividad] ASC
)
);
GO

ALTER TABLE [dbo].[Actividades]
WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
GO

ALTER TABLE [dbo].[Actividades]
WITH CHECK ADD CHECK
(
	[Estado]='Realizado'
	OR [Estado]='Pendiente'
);
GO