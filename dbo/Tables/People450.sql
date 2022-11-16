CREATE TABLE [dbo].[People450] (
    [ID]             INT              NOT NULL,
    [PersonType]     NCHAR (2)        NOT NULL,
    [Title]          NVARCHAR (8)     NULL,
    [FirstName]      [dbo].[Name]     NOT NULL,
    [MiddleName]     [dbo].[Name]     NULL,
    [LastName]       [dbo].[Name]     NOT NULL,
    [EmailPromotion] INT              NOT NULL,
    [rowguid]        UNIQUEIDENTIFIER NOT NULL,
    [ModifiedDate]   DATETIME         NOT NULL,
    [EmailAddress]   NVARCHAR (50)    NULL,
    [AddressTypeID]  INT              NOT NULL,
    [AddressType]    [dbo].[Name]     NOT NULL,
    [AddressLine1]   NVARCHAR (60)    NOT NULL,
    [AddressLine2]   NVARCHAR (60)    NULL,
    [City]           NVARCHAR (30)    NOT NULL,
    [PostalCode]     NVARCHAR (15)    NOT NULL,
    [RegionName]     [dbo].[Name]     NOT NULL,
    [Country]        [dbo].[Name]     NOT NULL,
    [BirthDate]      DATE             NULL,
    [Gender]         NCHAR (1)        NULL,
    [MaritalStatus]  NCHAR (1)        NULL
);
GO

CREATE NONCLUSTERED INDEX [IDX_CL_People450_City]
    ON [dbo].[People450]([City] ASC);
GO

CREATE CLUSTERED INDEX [IDX_CL_People450_ID]
    ON [dbo].[People450]([ID] ASC);
GO

CREATE STATISTICS [stat_People450_Firstname]
    ON [dbo].[People450]([FirstName]);
GO

