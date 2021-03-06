CREATE DATABASE bussiness
GO
USE [bussiness]
GO
/****** Object:  Table [dbo].[t_apply]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_apply](
	[IDENTIFICATION] [bigint] IDENTITY(1,1) NOT NULL,
	[FNAME] [varchar](50) NULL,
	[DESCRIPTION] [varchar](1024) NULL,
	[STATUS] [int] NULL,
	[STRUCTUREID] [varchar](50) NULL,
	[INSTANCEID] [varchar](50) NULL,
	[INSERTDATE] [datetime] NULL,
	[SECRETGRADE] [varchar](50) NULL,
 CONSTRAINT [PK_t_apply] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_org]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_org](
	[IDENTIFICATION] [bigint] IDENTITY(1,1) NOT NULL,
	[ORGNAME] [varchar](50) NULL,
	[ORGCODE] [varchar](50) NULL,
	[PARENTCODE] [varchar](50) NULL,
	[DESCRIPTION] [varchar](50) NULL,
 CONSTRAINT [PK_t_org] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_pending]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_pending](
	[IDENTIFICATION] [bigint] IDENTITY(1,1) NOT NULL,
	[ACTORID] [varchar](50) NULL,
	[NODEID] [varchar](50) NULL,
	[INSTANCEID] [varchar](50) NULL,
	[APPELLATION] [varchar](1024) NULL,
	[CREATEDATETIME] [datetime] NULL,
	[ACTION] [varchar](50) NULL,
 CONSTRAINT [PK_t_pending] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_record]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_record](
	[IDENTIFICATION] [bigint] IDENTITY(1,1) NOT NULL,
	[NODENAME] [varchar](512) NULL,
	[MESSAGE] [varchar](1024) NULL,
	[INSTANCEID] [varchar](50) NULL,
	[INSERTDATE] [datetime] NULL,
 CONSTRAINT [PK_t_record] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_role]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_role](
	[Identification] [bigint] IDENTITY(1,1) NOT NULL,
	[Appellation] [varchar](50) NULL,
 CONSTRAINT [PK_T_ROLE] PRIMARY KEY CLUSTERED 
(
	[Identification] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_structure]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_structure](
	[IDENTIFICATION] [varchar](50) NOT NULL,
	[APPELLATION] [varchar](50) NULL,
	[STRUCTUREXML] [text] NULL,
 CONSTRAINT [PK_T_STRUCTURE] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_umr]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_umr](
	[RID] [bigint] NULL,
	[UUID] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2019/3/3 16:19:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_user](
	[IDENTIFICATION] [bigint] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](50) NULL,
	[USERPWD] [varchar](50) NULL,
	[EMPLOYEENAME] [varchar](50) NULL,
	[ORGCODE] [varchar](50) NULL,
	[ORGNAME] [varchar](50) NULL,
 CONSTRAINT [PK_t_user] PRIMARY KEY CLUSTERED 
(
	[IDENTIFICATION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[t_apply] ADD  CONSTRAINT [DF_t_apply_INSERTDATE]  DEFAULT (getdate()) FOR [INSERTDATE]
GO
ALTER TABLE [dbo].[t_pending] ADD  CONSTRAINT [DF_t_pending_CREATEDATETIME]  DEFAULT (getdate()) FOR [CREATEDATETIME]
GO
ALTER TABLE [dbo].[t_record] ADD  CONSTRAINT [DF_t_record_INSERTDATE]  DEFAULT (getdate()) FOR [INSERTDATE]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键标识 GUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_structure', @level2type=N'COLUMN',@level2name=N'IDENTIFICATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程图模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_structure', @level2type=N'COLUMN',@level2name=N'APPELLATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储描述流程数据结构' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_structure', @level2type=N'COLUMN',@level2name=N'STRUCTUREXML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_structure'
GO
