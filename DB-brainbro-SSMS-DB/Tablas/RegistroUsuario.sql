USE BrainBro;
GO

CREATE TABLE [dbo].[RegistroUsuario](
	[ID_Usuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Contrasena] [varchar](100) NOT NULL,
	[Rol] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH 
(
	PAD_INDEX = OFF, 
	STATISTICS_NORECOMPUTE = OFF, 
	IGNORE_DUP_KEY = OFF, 
	ALLOW_ROW_LOCKS = ON, 
	ALLOW_PAGE_LOCKS = ON, 
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
) ON [PRIMARY]
) ON [PRIMARY];
GO

ALTER TABLE [dbo].[RegistroUsuario] 
WITH CHECK ADD CHECK  
(
	[Rol]='Padre' 
	OR [Rol]='Profesor' 
	OR [Rol]='Estudiante' 
	OR [Rol]='Coordinador'
);
GO