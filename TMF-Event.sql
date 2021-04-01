SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TMF-Event](
	[id] [uniqueidentifier] NOT NULL,
	[eventType] [varchar](max) NOT NULL,
	[eventTime] [varchar](max) NOT NULL,
	[correlationId] [varchar](max) NULL,
	[domain] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[priority] [varchar](max) NULL,
	[timeOccurred] [varchar](max) NOT NULL,
	[eventObjectType] [varchar](max) NOT NULL,
	[eventObjectId] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TMF-Event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[TMF-Event] ADD  CONSTRAINT [DF_TMF-Event_id]  DEFAULT (newid()) FOR [id]
GO

