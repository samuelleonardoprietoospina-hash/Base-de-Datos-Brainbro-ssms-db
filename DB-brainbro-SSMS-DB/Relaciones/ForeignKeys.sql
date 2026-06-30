USE BrainBro;
GO

ALTER TABLE [dbo].[Respuestas] ADD CONSTRAINT [FK__Respuesta__ID_Pr__07C12930] FOREIGN KEY ([ID_Pregunta]) REFERENCES [dbo].[Preguntas] ([ID_Pregunta]);
ALTER TABLE [dbo].[Preguntas] ADD CONSTRAINT [FK__Preguntas__ID_Us__03F0984C] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
ALTER TABLE [dbo].[SeguimientoCasos] ADD CONSTRAINT [FK__Seguimien__ID_Us__52593CB8] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
ALTER TABLE [dbo].[AlertasNotificaciones] ADD CONSTRAINT [FK__AlertasNo__ID_Us__534D60F1] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
ALTER TABLE [dbo].[VisualizacionProgreso] ADD CONSTRAINT [FK__Visualiza__ID_Us__5441852A] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
ALTER TABLE [dbo].[Actividades] ADD CONSTRAINT [FK__Actividad__ID_Us__5535A963] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);
ALTER TABLE [dbo].[Actividades] ADD CONSTRAINT [FK__Actividad__ID_Us__5535A963] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[RegistroUsuario] ([ID_Usuario]);

GO