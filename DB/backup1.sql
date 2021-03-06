
USE [eBuy-elctronics]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](225) NULL,
	[BrandDesc] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](225) NULL,
	[CategoryDesc] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CraditCards]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CraditCards](
	[CraditCardsID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[OrderID] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[CcNumber] [nvarchar](50) NULL,
	[CName] [nvarchar](50) NULL,
	[Cvv] [int] NULL,
	[Exp] [nvarchar](50) NULL,
	[Street] [nvarchar](500) NULL,
	[CityID] [int] NULL,
	[StateID] [int] NULL,
	[CountryID] [int] NULL,
	[Zipcode] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CraditCards] PRIMARY KEY CLUSTERED 
(
	[CraditCardsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedbackDesc]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDesc](
	[Feedbackid] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[Brandid] [int] NULL,
	[Categoryid] [int] NULL,
	[Itemid] [int] NULL,
	[Feedbackdesc] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FeedbackDesc] PRIMARY KEY CLUSTERED 
(
	[Feedbackid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[ItemID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InventoryAudit]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryAudit](
	[InventoryAuditID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[ItemID] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[AuditType] [int] NULL,
	[Comments] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_InventoryAudit] PRIMARY KEY CLUSTERED 
(
	[InventoryAuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[ItemName] [nvarchar](225) NULL,
	[ItemDesc] [nvarchar](225) NULL,
	[ImageURL] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemOrder]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemOrder](
	[ItemOrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[ItemID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ItemOrder] PRIMARY KEY CLUSTERED 
(
	[ItemOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loginaudit]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loginaudit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loginid] [int] NULL,
	[Logindate] [datetime] NULL,
	[Logindesc] [nvarchar](225) NULL,
 CONSTRAINT [PK_Loginaudit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logindetails]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logindetails](
	[Loginid] [int] IDENTITY(1,1) NOT NULL,
	[Loginname] [nvarchar](225) NULL,
	[Password] [nvarchar](225) NULL,
	[Firstname] [nvarchar](225) NULL,
	[Lastname] [nvarchar](225) NULL,
	[Logintype] [nvarchar](225) NULL,
	[Squestionid] [int] NULL,
	[Sanswer] [nvarchar](225) NULL,
	[Firstlogin] [int] NULL,
	[Passmodifieddate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Logindetails] PRIMARY KEY CLUSTERED 
(
	[Loginid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loginprofile]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loginprofile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NULL,
	[Birthdate] [datetime] NULL,
	[Hno] [nvarchar](225) NULL,
	[Street] [nvarchar](225) NULL,
	[City] [nvarchar](225) NULL,
	[State] [nvarchar](225) NULL,
	[Country] [nvarchar](225) NULL,
	[Pincode] [nvarchar](225) NULL,
	[ContactNo] [nvarchar](225) NULL,
	[Email] [nvarchar](225) NULL,
	[Locale] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Loginprofile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Query]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[QueryID] [int] IDENTITY(1,1) NOT NULL,
	[LogiID] [int] NULL,
	[QueryDate] [datetime] NULL,
	[Description] [nvarchar](225) NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Query] PRIMARY KEY CLUSTERED 
(
	[QueryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questionbase]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questionbase](
	[Questionid] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[Questiondetail] [nvarchar](225) NULL,
	[CreatedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Questionbase] PRIMARY KEY CLUSTERED 
(
	[Questionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Solution]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solution](
	[SolutionID] [int] IDENTITY(1,1) NOT NULL,
	[QueryId] [int] NULL,
	[SolvedDate] [datetime] NULL,
	[Solution] [nvarchar](225) NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Solution] PRIMARY KEY CLUSTERED 
(
	[SolutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TotalOrders]    Script Date: 8/21/2016 11:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalOrders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[LoginID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[TotalAmount] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_TotalOrders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CraditCards]  WITH CHECK ADD  CONSTRAINT [FK_CraditCards_TotalOrders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[TotalOrders] ([OrderID])
GO
ALTER TABLE [dbo].[CraditCards] CHECK CONSTRAINT [FK_CraditCards_TotalOrders]
GO
ALTER TABLE [dbo].[FeedbackDesc]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackDesc_Logindetails] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Logindetails] ([Loginid])
GO
ALTER TABLE [dbo].[FeedbackDesc] CHECK CONSTRAINT [FK_FeedbackDesc_Logindetails]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Brand]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Category]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Item]
GO
ALTER TABLE [dbo].[InventoryAudit]  WITH CHECK ADD  CONSTRAINT [FK_InventoryAudit_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[InventoryAudit] CHECK CONSTRAINT [FK_InventoryAudit_Brand]
GO
ALTER TABLE [dbo].[InventoryAudit]  WITH CHECK ADD  CONSTRAINT [FK_InventoryAudit_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[InventoryAudit] CHECK CONSTRAINT [FK_InventoryAudit_Category]
GO
ALTER TABLE [dbo].[InventoryAudit]  WITH CHECK ADD  CONSTRAINT [FK_InventoryAudit_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[InventoryAudit] CHECK CONSTRAINT [FK_InventoryAudit_Item]
GO
ALTER TABLE [dbo].[ItemOrder]  WITH CHECK ADD  CONSTRAINT [FK_ItemOrder_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[ItemOrder] CHECK CONSTRAINT [FK_ItemOrder_Brand]
GO
ALTER TABLE [dbo].[ItemOrder]  WITH CHECK ADD  CONSTRAINT [FK_ItemOrder_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[ItemOrder] CHECK CONSTRAINT [FK_ItemOrder_Category]
GO
ALTER TABLE [dbo].[ItemOrder]  WITH CHECK ADD  CONSTRAINT [FK_ItemOrder_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[ItemOrder] CHECK CONSTRAINT [FK_ItemOrder_Item]
GO
ALTER TABLE [dbo].[ItemOrder]  WITH CHECK ADD  CONSTRAINT [FK_ItemOrder_TotalOrders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[TotalOrders] ([OrderID])
GO
ALTER TABLE [dbo].[ItemOrder] CHECK CONSTRAINT [FK_ItemOrder_TotalOrders]
GO
ALTER TABLE [dbo].[Loginaudit]  WITH CHECK ADD  CONSTRAINT [FK_Loginaudit_Logindetails] FOREIGN KEY([Loginid])
REFERENCES [dbo].[Logindetails] ([Loginid])
GO
ALTER TABLE [dbo].[Loginaudit] CHECK CONSTRAINT [FK_Loginaudit_Logindetails]
GO
ALTER TABLE [dbo].[Loginprofile]  WITH CHECK ADD  CONSTRAINT [FK_Loginprofile_Logindetails] FOREIGN KEY([LoginId])
REFERENCES [dbo].[Logindetails] ([Loginid])
GO
ALTER TABLE [dbo].[Loginprofile] CHECK CONSTRAINT [FK_Loginprofile_Logindetails]
GO
ALTER TABLE [dbo].[Query]  WITH CHECK ADD  CONSTRAINT [FK_Query_Logindetails1] FOREIGN KEY([LogiID])
REFERENCES [dbo].[Logindetails] ([Loginid])
GO
ALTER TABLE [dbo].[Query] CHECK CONSTRAINT [FK_Query_Logindetails1]
GO
ALTER TABLE [dbo].[Questionbase]  WITH CHECK ADD  CONSTRAINT [FK_Questionbase_Logindetails] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Logindetails] ([Loginid])
GO
ALTER TABLE [dbo].[Questionbase] CHECK CONSTRAINT [FK_Questionbase_Logindetails]
GO
ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Query] FOREIGN KEY([QueryId])
REFERENCES [dbo].[Query] ([QueryID])
GO
ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Query]
GO
USE [eBuy-elctronics]
GO
ALTER DATABASE [eBuy-elctronics] SET  READ_WRITE 
GO
