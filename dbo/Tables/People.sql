CREATE TABLE [dbo].[People] (
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

ALTER TABLE [dbo].[People]
    ADD CONSTRAINT [DF_People_ID] DEFAULT (NEXT VALUE FOR [PeopleID]) FOR [ID];
GO

CREATE CLUSTERED INDEX [IDX_CL_People_ID]
    ON [dbo].[People]([ID] ASC);
GO

CREATE NONCLUSTERED INDEX [IDX_NCL_People_City]
    ON [dbo].[People]([City] ASC);
GO

