SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TMF-Notification](
	[id] [uniqueidentifier] NOT NULL,
	[eventid] [uniqueidentifier] NOT NULL,
	[listenerid] [uniqueidentifier] NOT NULL,
	[timeissued] [datetime] NOT NULL,
	[flowid] [varchar](max) NOT NULL,
	[response] [varchar](max) NULL,
 CONSTRAINT [PK_TMF-Notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[TMF-Notification] ADD  CONSTRAINT [DF_TMF-Notification_id]  DEFAULT (newid()) FOR [id]
GO

