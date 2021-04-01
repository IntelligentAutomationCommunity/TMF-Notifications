SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TMF-Listener](
	[id] [uniqueidentifier] NOT NULL,
	[callback] [varchar](max) NOT NULL,
	[query] [varchar](max) NULL,
	[insertTime] [datetime2](7) NOT NULL,
	[deleteTime] [datetime2](7) NULL,
 CONSTRAINT [PK_TMF-Listener] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[TMF-Listener] ADD  CONSTRAINT [DF_TMF-Listeners_id]  DEFAULT (newid()) FOR [id]
GO

ALTER TABLE [dbo].[TMF-Listener] ADD  CONSTRAINT [DF_TMF-Listener_insertTime]  DEFAULT (sysdatetime()) FOR [insertTime]
GO

