USE [TodoList]
GO

/****** Object:  Table [dbo].[tipo_tarefa]    Script Date: 25/12/2017 23:39:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tipo_tarefa](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dt_criacao] [datetime] NOT NULL,
	[str_nome_tipo] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[tarefa](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dt_criacao] [datetime] NOT NULL,
	[str_texto_tarefa] [nvarchar](2000) NOT NULL,
	[dt_tarefa] [datetime] NOT NULL,
	[enum_status_tarefa] [int] NOT NULL,
	[id_tipo_tarefa] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tarefa]  WITH CHECK ADD  CONSTRAINT [FKBFC0D45891C2760F] FOREIGN KEY([id_tipo_tarefa])
REFERENCES [dbo].[tipo_tarefa] ([id])
GO

ALTER TABLE [dbo].[tarefa] CHECK CONSTRAINT [FKBFC0D45891C2760F]
GO



insert into [tipo_tarefa] values(getdate(), 'Trabalho')
insert into [tipo_tarefa] values(getdate(), 'Escola')
insert into [tipo_tarefa] values(getdate(), 'Lazer')


