USE BrainBro;
GO

CREATE TABLE [dbo].[SeguimientoCasos](
	[ID_Seguimiento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Nota] [int] NOT NULL,
	[Materia] [varchar](50) NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[ID_Seguimiento] ASC
)
);
GO

ALTER TABLE [dbo].[SeguimientoCasos]
WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
GO

ALTER TABLE [dbo].[SeguimientoCasos]
WITH CHECK ADD CHECK
(
	[Materia]='Sociales'
	OR [Materia]='Emprendimiento'
	OR [Materia]='Sistemas'
	OR [Materia]='Ciencias'
	OR [Materia]='Matematicas'
	OR [Materia]='Espanol'
);
GO

ALTER TABLE [dbo].[SeguimientoCasos]
WITH CHECK ADD CHECK
(
	[Nota]=100
	OR [Nota]=90
	OR [Nota]=80
	OR [Nota]=70
	OR [Nota]=60
	OR [Nota]=50
	OR [Nota]=40
	OR [Nota]=30
	OR [Nota]=20
	OR [Nota]=10
);
GO