
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/28/2024 10:50:26
-- Generated from EDMX file: C:\Users\Some User\OneDrive - Atlantic TU\OOD\DatabaseCreating\DatabaseCreating\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [bandsdb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AlbumBand]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_AlbumBand];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Albums]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Albums];
GO
IF OBJECT_ID(N'[dbo].[Bands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bands];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Released] nvarchar(max)  NOT NULL,
    [Sales] nvarchar(max)  NOT NULL,
    [AlbumImage] nvarchar(max)  NOT NULL,
    [BandId] int  NOT NULL
);
GO

-- Creating table 'Bands'
CREATE TABLE [dbo].[Bands] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [YearFormed] nvarchar(max)  NOT NULL,
    [LeadSinger] nvarchar(max)  NOT NULL,
    [BandImage] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bands'
ALTER TABLE [dbo].[Bands]
ADD CONSTRAINT [PK_Bands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BandId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_AlbumBand]
    FOREIGN KEY ([BandId])
    REFERENCES [dbo].[Bands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlbumBand'
CREATE INDEX [IX_FK_AlbumBand]
ON [dbo].[Albums]
    ([BandId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------