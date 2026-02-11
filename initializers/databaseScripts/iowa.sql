create database "ssto-database"




CREATE TABLE [Packages] (
    [Id] uniqueidentifier NOT NULL,
    [ProviderId] uniqueidentifier NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [IconUrl] nvarchar(max) NOT NULL,
    [Price] decimal(18,2) NULL,
    [Currency] nvarchar(max) NOT NULL,
    [CreatedDate] datetime2 NOT NULL,
    [LastUpdated] datetime2 NULL,
    [CreatedById] uniqueidentifier NOT NULL,
    [UpdatedById] uniqueidentifier NULL,
    CONSTRAINT [PK_Packages] PRIMARY KEY ([Id])
);

CREATE TABLE [PaymentHistories] (
    [Id] uniqueidentifier NOT NULL,
    [UserId] uniqueidentifier NOT NULL,
    [PackageId] uniqueidentifier NOT NULL,
    [DiscountId] uniqueidentifier NULL,
    [ChartColor] nvarchar(max) NOT NULL,
    [Price] decimal(18,2) NOT NULL,
    [DiscountedPrice] decimal(18,2) NULL,
    [Currency] nvarchar(max) NOT NULL,
    [PaymentDate] datetime2 NOT NULL,
    [CreatedDate] datetime2 NOT NULL,
    [LastUpdated] datetime2 NULL,
    [CreateById] uniqueidentifier NOT NULL,
    [UpdateById] uniqueidentifier NULL,
    CONSTRAINT [PK_PaymentHistories] PRIMARY KEY ([Id])
);

CREATE TABLE [Providers] (
    [Id] uniqueidentifier NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [IconUrl] nvarchar(max) NOT NULL,
    [WebsiteUrl] nvarchar(max) NOT NULL,
    [CreatedDate] datetime2 NOT NULL,
    [LastUpdated] datetime2 NULL,
    [CreatedById] uniqueidentifier NOT NULL,
    [UpdatedById] uniqueidentifier NULL,
    CONSTRAINT [PK_Providers] PRIMARY KEY ([Id])
);

CREATE TABLE [Subscriptions] (
    [Id] uniqueidentifier NOT NULL,
    [UserId] uniqueidentifier NOT NULL,
    [PackageId] uniqueidentifier NOT NULL,
    [Price] decimal(18,2) NOT NULL,
    [DiscountedPrice] decimal(18,2) NULL,
    [Currency] nvarchar(max) NOT NULL,
    [ChartColor] nvarchar(max) NOT NULL,
    [DiscountId] uniqueidentifier NULL,
    [RenewalDate] datetime2 NOT NULL,
    [IsRecursive] bit NOT NULL,
    [CreatedDate] datetime2 NOT NULL,
    [CreatedById] uniqueidentifier NOT NULL,
    [LastUpdated] datetime2 NULL,
    [UpdatedById] uniqueidentifier NULL,
    CONSTRAINT [PK_Subscriptions] PRIMARY KEY ([Id])
);
