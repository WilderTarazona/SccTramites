USE [SccTramitesDb]
GO
/** Object:  Schema [SCSTRAMITES]    Script Date: 18/03/2019 11:21:47 a.m. **/
CREATE SCHEMA [SCSTRAMITES]
GO
/** Object:  Table [SCSTRAMITES].[Actividad]    Script Date: 18/03/2019 11:21:47 a.m. **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [SCSTRAMITES].[Actividad](
	[IdActividad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Actividad] PRIMARY KEY CLUSTERED 
(
	[IdActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Actividad_Rol]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Actividad_Rol](
	[IdRol] [int] NOT NULL,
	[IdActividad] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Actividad_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC,
	[IdActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Alumno]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Alumno](
	[Codigo] [varchar](9) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[CelularPersonal] [varchar](11) NOT NULL,
	[CorreoPersonal] [varchar](50) NOT NULL,
	[CodigoModalidad] [varchar](50) NOT NULL,
	[NombreModalidad] [varchar](50) NOT NULL,
	[CodigoCampus] [varchar](10) NOT NULL,
	[Campus] [varchar](50) NOT NULL,
	[CodigoCarrera] [varchar](10) NOT NULL,
	[Carrera] [varchar](50) NOT NULL,
	[Condicion] [varchar](50) NOT NULL,
	[EstadoAlumno] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Categoria]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdModalidad] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Estado]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Estado](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Modalidad]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Modalidad](
	[IdModalidad] [int] IDENTITY(1,1) NOT NULL,
	[IdOrganizacion] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Modalidad] PRIMARY KEY CLUSTERED 
(
	[IdModalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Modalidad_Sede]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Modalidad_Sede](
	[IdModalidad] [int] NOT NULL,
	[IdSede] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Modalidad_Sede] PRIMARY KEY CLUSTERED 
(
	[IdModalidad] ASC,
	[IdSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Organizacion]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Organizacion](
	[IdOrganizacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Organizacion] PRIMARY KEY CLUSTERED 
(
	[IdOrganizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Rol]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Sede]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Sede](
	[IdSede] [int] IDENTITY(1,1) NOT NULL,
	[IdOrganizacion] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[IdSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Solicitud]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Solicitud](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdModalidad] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdSubcategoria] [int] NOT NULL,
	[IdTramite] [int] NOT NULL,
	[IdSede] [int] NOT NULL,
	[IdOrganizacion] [int] NOT NULL,
	[CodAlumno] [varchar](9) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[NumeroContacto] [varchar](11) NOT NULL,
	[DireccionCourier] [varchar](500) NOT NULL,
	[CorreoContacto] [varchar](50) NOT NULL,
	[OtroNumeroContacto] [varchar](11) NULL,
	[OtroCorreoContacto] [varchar](50) NULL,
	[Motivo] [varchar](2000) NULL,
	[Agente] [varchar](50) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Solicitud_Historial]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Solicitud_Historial](
	[IdHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitud] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[Agente] [varchar](50) NULL,
	[Activo] [bit] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_SolicitudHistorial] PRIMARY KEY CLUSTERED 
(
	[IdHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[SubCategoria]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[SubCategoria](
	[IdSubCategoria] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_SubCategoria] PRIMARY KEY CLUSTERED 
(
	[IdSubCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Tramite]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Tramite](
	[IdTramite] [int] IDENTITY(1,1) NOT NULL,
	[IdSubcategoria] [int] NOT NULL,
	[IdSede] [int] NOT NULL,
	[IdModalidad] [int] NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
	[Codigo] [varchar](9) NULL,
	[Courier] [varchar](1) NOT NULL,
	[PlazoPago] [varchar](50) NULL,
	[PlazoAtencion] [varchar](50) NULL,
	[Requisito] [varchar](1000) NULL,
	[Output] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Tramite] PRIMARY KEY CLUSTERED 
(
	[IdTramite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SCSTRAMITES].[Tramite_Historial]    Script Date: 19/03/2019 09:39:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SCSTRAMITES].[Tramite_Historial](
	[IdTramiteHistorial] [int] IDENTITY(1,1) NOT NULL,
	[IdTramite] [int] NOT NULL,
	[Precio] [decimal](5, 2) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Tramite_Historial] PRIMARY KEY CLUSTERED 
(
	[IdTramiteHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [SCSTRAMITES].[Actividad_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_Rol_Actividad] FOREIGN KEY([IdActividad])
REFERENCES [SCSTRAMITES].[Actividad] ([IdActividad])
GO
ALTER TABLE [SCSTRAMITES].[Actividad_Rol] CHECK CONSTRAINT [FK_Actividad_Rol_Actividad]
GO
ALTER TABLE [SCSTRAMITES].[Actividad_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_Rol_Rol] FOREIGN KEY([IdRol])
REFERENCES [SCSTRAMITES].[Rol] ([IdRol])
GO
ALTER TABLE [SCSTRAMITES].[Actividad_Rol] CHECK CONSTRAINT [FK_Actividad_Rol_Rol]
GO
ALTER TABLE [SCSTRAMITES].[Categoria]  WITH CHECK ADD  CONSTRAINT [FK__Categoria__IdMod__503BEA1C] FOREIGN KEY([IdModalidad])
REFERENCES [SCSTRAMITES].[Modalidad] ([IdModalidad])
GO
ALTER TABLE [SCSTRAMITES].[Categoria] CHECK CONSTRAINT [FK__Categoria__IdMod__503BEA1C]
GO
ALTER TABLE [SCSTRAMITES].[Modalidad]  WITH CHECK ADD  CONSTRAINT [FK__Modalidad__IdOrg__5BAD9CC8] FOREIGN KEY([IdOrganizacion])
REFERENCES [SCSTRAMITES].[Organizacion] ([IdOrganizacion])
GO
ALTER TABLE [SCSTRAMITES].[Modalidad] CHECK CONSTRAINT [FK__Modalidad__IdOrg__5BAD9CC8]
GO
ALTER TABLE [SCSTRAMITES].[Modalidad_Sede]  WITH CHECK ADD FOREIGN KEY([IdModalidad])
REFERENCES [SCSTRAMITES].[Modalidad] ([IdModalidad])
GO
ALTER TABLE [SCSTRAMITES].[Modalidad_Sede]  WITH CHECK ADD FOREIGN KEY([IdSede])
REFERENCES [SCSTRAMITES].[Sede] ([IdSede])
GO
ALTER TABLE [SCSTRAMITES].[Sede]  WITH CHECK ADD  CONSTRAINT [FK__Sede__IdOrganiza__5CA1C101] FOREIGN KEY([IdOrganizacion])
REFERENCES [SCSTRAMITES].[Organizacion] ([IdOrganizacion])
GO
ALTER TABLE [SCSTRAMITES].[Sede] CHECK CONSTRAINT [FK__Sede__IdOrganiza__5CA1C101]
GO
ALTER TABLE [SCSTRAMITES].[Solicitud]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdEst__71D1E811] FOREIGN KEY([IdEstado])
REFERENCES [SCSTRAMITES].[Estado] ([IdEstado])
GO
ALTER TABLE [SCSTRAMITES].[Solicitud] CHECK CONSTRAINT [FK__Solicitud__IdEst__71D1E811]
GO
ALTER TABLE [SCSTRAMITES].[Solicitud]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdTra__29221CFB] FOREIGN KEY([IdTramite])
REFERENCES [SCSTRAMITES].[Tramite] ([IdTramite])
GO
ALTER TABLE [SCSTRAMITES].[Solicitud] CHECK CONSTRAINT [FK__Solicitud__IdTra__29221CFB]
GO
ALTER TABLE [SCSTRAMITES].[Solicitud_Historial]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdEst__6442E2C9] FOREIGN KEY([IdEstado])
REFERENCES [SCSTRAMITES].[Estado] ([IdEstado])
GO
ALTER TABLE [SCSTRAMITES].[Solicitud_Historial] CHECK CONSTRAINT [FK__Solicitud__IdEst__6442E2C9]
GO
ALTER TABLE [SCSTRAMITES].[Solicitud_Historial]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdSol__32AB8735] FOREIGN KEY([IdSolicitud])
REFERENCES [SCSTRAMITES].[Solicitud] ([IdSolicitud])
GO
ALTER TABLE [SCSTRAMITES].[Solicitud_Historial] CHECK CONSTRAINT [FK__Solicitud__IdSol__32AB8735]
GO
ALTER TABLE [SCSTRAMITES].[SubCategoria]  WITH CHECK ADD  CONSTRAINT [FK__SubCatego__IdCat__3C69FB99] FOREIGN KEY([IdCategoria])
REFERENCES [SCSTRAMITES].[Categoria] ([IdCategoria])
GO
ALTER TABLE [SCSTRAMITES].[SubCategoria] CHECK CONSTRAINT [FK__SubCatego__IdCat__3C69FB99]
GO
ALTER TABLE [SCSTRAMITES].[Tramite]  WITH CHECK ADD  CONSTRAINT [FK__Tramite__IdModal__5535A963] FOREIGN KEY([IdModalidad])
REFERENCES [SCSTRAMITES].[Modalidad] ([IdModalidad])
GO
ALTER TABLE [SCSTRAMITES].[Tramite] CHECK CONSTRAINT [FK__Tramite__IdModal__5535A963]
GO
ALTER TABLE [SCSTRAMITES].[Tramite]  WITH CHECK ADD  CONSTRAINT [FK__Tramite__IdSede__6A30C649] FOREIGN KEY([IdSede])
REFERENCES [SCSTRAMITES].[Sede] ([IdSede])
GO
ALTER TABLE [SCSTRAMITES].[Tramite] CHECK CONSTRAINT [FK__Tramite__IdSede__6A30C649]
GO
ALTER TABLE [SCSTRAMITES].[Tramite]  WITH CHECK ADD  CONSTRAINT [FK__Tramite__IdSubca__6754599E] FOREIGN KEY([IdSubcategoria])
REFERENCES [SCSTRAMITES].[SubCategoria] ([IdSubCategoria])
GO
ALTER TABLE [SCSTRAMITES].[Tramite] CHECK CONSTRAINT [FK__Tramite__IdSubca__6754599E]
GO
ALTER TABLE [SCSTRAMITES].[Tramite_Historial]  WITH CHECK ADD  CONSTRAINT [FK__Tramite_H__IdTra__76969D2E] FOREIGN KEY([IdTramite])
REFERENCES [SCSTRAMITES].[Tramite] ([IdTramite])
GO
ALTER TABLE [SCSTRAMITES].[Tramite_Historial] CHECK CONSTRAINT [FK__Tramite_H__IdTra__76969D2E]
GO
