CREATE TABLE [Sales].[CountryRegionCurrency] (
    [CountryRegionCode] NVARCHAR (3) NOT NULL,
    [CurrencyCode]      NCHAR (3)    NOT NULL,
    [ModifiedDate]      DATETIME     NOT NULL
);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO code for countries and regions. Foreign key to CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard currency code. Foreign key to Currency.CurrencyCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'ModifiedDate';
GO

ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [DF_CountryRegionCurrency_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'DF_CountryRegionCurrency_ModifiedDate';
GO

CREATE NONCLUSTERED INDEX [IX_CountryRegionCurrency_CurrencyCode]
    ON [Sales].[CountryRegionCurrency]([CurrencyCode] ASC);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'INDEX', @level2name = N'IX_CountryRegionCurrency_CurrencyCode';
GO

ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode] FOREIGN KEY ([CurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode]);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.CurrencyCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_Currency_CurrencyCode';
GO

ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode] FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode]);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_CountryRegion_CountryRegionCode';
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping ISO currency codes to a country or region.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency';
GO

ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode] PRIMARY KEY CLUSTERED ([CountryRegionCode] ASC, [CurrencyCode] ASC);
GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode';
GO

