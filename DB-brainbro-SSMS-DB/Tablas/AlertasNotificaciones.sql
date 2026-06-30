USE BrainBro;
GO

CREATE TABLE [dbo].[AlertasNotificaciones](
	[ID_Alerta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Rol] [varchar](20) NOT NULL,
	[Fecha] [date] NOT NULL,

PRIMARY KEY CLUSTERED 
(
	[ID_Alerta] ASC
)
);
GO

ALTER TABLE [dbo].[AlertasNotificaciones]
WITH CHECK ADD FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
GO