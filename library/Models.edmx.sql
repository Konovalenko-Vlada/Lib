
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/10/2017 20:06:37
-- Generated from EDMX file: G:\програм\Университет\library\library\Models.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [G:\програм\Университет\library\library\database.mdf];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BookDeliveryBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookDeliverySet] DROP CONSTRAINT [FK_BookDeliveryBook];
GO
IF OBJECT_ID(N'[dbo].[FK_ReaderBookDelivery]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookDeliverySet] DROP CONSTRAINT [FK_ReaderBookDelivery];
GO
IF OBJECT_ID(N'[dbo].[FK_ReaderVisitReadingRoom]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitReadingRoomSet] DROP CONSTRAINT [FK_ReaderVisitReadingRoom];
GO
IF OBJECT_ID(N'[dbo].[FK_ReadingRoomVisitReadingRoom]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitReadingRoomSet] DROP CONSTRAINT [FK_ReadingRoomVisitReadingRoom];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BookDeliverySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookDeliverySet];
GO
IF OBJECT_ID(N'[dbo].[BookSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookSet];
GO
IF OBJECT_ID(N'[dbo].[ReaderSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReaderSet];
GO
IF OBJECT_ID(N'[dbo].[ReadingRoomSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReadingRoomSet];
GO
IF OBJECT_ID(N'[dbo].[VisitReadingRoomSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VisitReadingRoomSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ReaderSet'
CREATE TABLE [dbo].[ReaderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [type] int  NOT NULL
);
GO

-- Creating table 'BookSet'
CREATE TABLE [dbo].[BookSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [total_count] int  NOT NULL,
    [left_count] int  NOT NULL,
    [knowledge_area] nvarchar(max)  NOT NULL,
    [ReaderId] int  NOT NULL
);
GO

-- Creating table 'ReadingRoomSet'
CREATE TABLE [dbo].[ReadingRoomSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [knowledge_area] nvarchar(max)  NOT NULL,
    [total_count] int  NOT NULL,
    [left_count] int  NOT NULL
);
GO

-- Creating table 'BookDeliverySet'
CREATE TABLE [dbo].[BookDeliverySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [reader] nvarchar(max)  NOT NULL,
    [book] nvarchar(max)  NOT NULL,
    [count] int  NOT NULL,
    [delvery_date] datetime  NOT NULL,
    [return_date] datetime  NOT NULL,
    [ReaderId] int  NOT NULL,
    [Book_Id] int  NOT NULL
);
GO

-- Creating table 'VisitReadingRoomSet'
CREATE TABLE [dbo].[VisitReadingRoomSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [reader] nvarchar(max)  NOT NULL,
    [knowledge_area] nvarchar(max)  NOT NULL,
    [book] nvarchar(max)  NOT NULL,
    [visit_date] datetime  NOT NULL,
    [delvery_time] time  NOT NULL,
    [return_time] time  NOT NULL,
    [ReaderId] int  NOT NULL,
    [ReadingRoomId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ReaderSet'
ALTER TABLE [dbo].[ReaderSet]
ADD CONSTRAINT [PK_ReaderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BookSet'
ALTER TABLE [dbo].[BookSet]
ADD CONSTRAINT [PK_BookSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReadingRoomSet'
ALTER TABLE [dbo].[ReadingRoomSet]
ADD CONSTRAINT [PK_ReadingRoomSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BookDeliverySet'
ALTER TABLE [dbo].[BookDeliverySet]
ADD CONSTRAINT [PK_BookDeliverySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VisitReadingRoomSet'
ALTER TABLE [dbo].[VisitReadingRoomSet]
ADD CONSTRAINT [PK_VisitReadingRoomSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ReaderId] in table 'BookDeliverySet'
ALTER TABLE [dbo].[BookDeliverySet]
ADD CONSTRAINT [FK_ReaderBookDelivery]
    FOREIGN KEY ([ReaderId])
    REFERENCES [dbo].[ReaderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReaderBookDelivery'
CREATE INDEX [IX_FK_ReaderBookDelivery]
ON [dbo].[BookDeliverySet]
    ([ReaderId]);
GO

-- Creating foreign key on [Book_Id] in table 'BookDeliverySet'
ALTER TABLE [dbo].[BookDeliverySet]
ADD CONSTRAINT [FK_BookDeliveryBook]
    FOREIGN KEY ([Book_Id])
    REFERENCES [dbo].[BookSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookDeliveryBook'
CREATE INDEX [IX_FK_BookDeliveryBook]
ON [dbo].[BookDeliverySet]
    ([Book_Id]);
GO

-- Creating foreign key on [ReaderId] in table 'VisitReadingRoomSet'
ALTER TABLE [dbo].[VisitReadingRoomSet]
ADD CONSTRAINT [FK_ReaderVisitReadingRoom]
    FOREIGN KEY ([ReaderId])
    REFERENCES [dbo].[ReaderSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReaderVisitReadingRoom'
CREATE INDEX [IX_FK_ReaderVisitReadingRoom]
ON [dbo].[VisitReadingRoomSet]
    ([ReaderId]);
GO

-- Creating foreign key on [ReadingRoomId] in table 'VisitReadingRoomSet'
ALTER TABLE [dbo].[VisitReadingRoomSet]
ADD CONSTRAINT [FK_ReadingRoomVisitReadingRoom]
    FOREIGN KEY ([ReadingRoomId])
    REFERENCES [dbo].[ReadingRoomSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReadingRoomVisitReadingRoom'
CREATE INDEX [IX_FK_ReadingRoomVisitReadingRoom]
ON [dbo].[VisitReadingRoomSet]
    ([ReadingRoomId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------