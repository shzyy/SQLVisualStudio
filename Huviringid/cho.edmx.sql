
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 13:06:18
-- Generated from EDMX file: C:\Users\opilane\source\repos\Huviringid\Huviringid\cho.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HuviringidUL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HuviringidSet'
CREATE TABLE [dbo].[HuviringidSet] (
    [HuviringidID] int IDENTITY(1,1) NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL,
    [Vanusruhm] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'juhendajaSet'
CREATE TABLE [dbo].[juhendajaSet] (
    [JuhendajaID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Tel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HuviringJyhendajaSet'
CREATE TABLE [dbo].[HuviringJyhendajaSet] (
    [HuviringJuhendayaID] nvarchar(max)  NOT NULL,
    [juhendaja_JuhendajaID] int  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- Creating table 'ToimusaegSet'
CREATE TABLE [dbo].[ToimusaegSet] (
    [ToimusaegID] int IDENTITY(1,1) NOT NULL,
    [Paev] nvarchar(max)  NOT NULL,
    [AlgusAeg] nvarchar(max)  NOT NULL,
    [LoppAeg] nvarchar(max)  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL,
    [Ruhm_RuhmID] int  NOT NULL,
    [Ruum_RuumId] int  NOT NULL
);
GO

-- Creating table 'RuumSet'
CREATE TABLE [dbo].[RuumSet] (
    [RuumId] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL,
    [KohtadeAeg] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UritusSet'
CREATE TABLE [dbo].[UritusSet] (
    [UritusID] int IDENTITY(1,1) NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL,
    [Kuupaev] nvarchar(max)  NOT NULL,
    [ToimusAeg] nvarchar(max)  NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UritusHuviringSet'
CREATE TABLE [dbo].[UritusHuviringSet] (
    [UritusHuviringID] nvarchar(max)  NOT NULL,
    [UritusUritusHuviring_UritusHuviring_UritusID] int  NOT NULL,
    [HuviringidUritusHuviring_UritusHuviring_HuviringidID] int  NOT NULL,
    [Uritus_UritusID] int  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- Creating table 'RegistreerimineSet'
CREATE TABLE [dbo].[RegistreerimineSet] (
    [RegistreerimineID] int IDENTITY(1,1) NOT NULL,
    [AlgusKuupaev] nvarchar(max)  NOT NULL,
    [LoppPaev] nvarchar(max)  NOT NULL,
    [Osaleja_OsalejaID] int  NOT NULL,
    [Ruhm_RuhmID] int  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- Creating table 'OsalejaSet'
CREATE TABLE [dbo].[OsalejaSet] (
    [OsalejaID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Tel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OsalemineSet'
CREATE TABLE [dbo].[OsalemineSet] (
    [OsalemineID] int IDENTITY(1,1) NOT NULL,
    [ToimusAeg] nvarchar(max)  NOT NULL,
    [Kuupaev] nvarchar(max)  NOT NULL,
    [Kohal] nvarchar(max)  NOT NULL,
    [Registreerimine_RegistreerimineID] int  NOT NULL
);
GO

-- Creating table 'ArveSet'
CREATE TABLE [dbo].[ArveSet] (
    [ArveID] int IDENTITY(1,1) NOT NULL,
    [Summa] nvarchar(max)  NOT NULL,
    [Makse_Stat] nvarchar(max)  NOT NULL,
    [Registreerimine_RegistreerimineID] int  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- Creating table 'RuhmSet'
CREATE TABLE [dbo].[RuhmSet] (
    [RuhmID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Vanus] nvarchar(max)  NOT NULL,
    [Maks_Osalejate] nvarchar(max)  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [HuviringidID] in table 'HuviringidSet'
ALTER TABLE [dbo].[HuviringidSet]
ADD CONSTRAINT [PK_HuviringidSet]
    PRIMARY KEY CLUSTERED ([HuviringidID] ASC);
GO

-- Creating primary key on [JuhendajaID] in table 'juhendajaSet'
ALTER TABLE [dbo].[juhendajaSet]
ADD CONSTRAINT [PK_juhendajaSet]
    PRIMARY KEY CLUSTERED ([JuhendajaID] ASC);
GO

-- Creating primary key on [HuviringJuhendayaID] in table 'HuviringJyhendajaSet'
ALTER TABLE [dbo].[HuviringJyhendajaSet]
ADD CONSTRAINT [PK_HuviringJyhendajaSet]
    PRIMARY KEY CLUSTERED ([HuviringJuhendayaID] ASC);
GO

-- Creating primary key on [ToimusaegID] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [PK_ToimusaegSet]
    PRIMARY KEY CLUSTERED ([ToimusaegID] ASC);
GO

-- Creating primary key on [RuumId] in table 'RuumSet'
ALTER TABLE [dbo].[RuumSet]
ADD CONSTRAINT [PK_RuumSet]
    PRIMARY KEY CLUSTERED ([RuumId] ASC);
GO

-- Creating primary key on [UritusID] in table 'UritusSet'
ALTER TABLE [dbo].[UritusSet]
ADD CONSTRAINT [PK_UritusSet]
    PRIMARY KEY CLUSTERED ([UritusID] ASC);
GO

-- Creating primary key on [UritusHuviringID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [PK_UritusHuviringSet]
    PRIMARY KEY CLUSTERED ([UritusHuviringID] ASC);
GO

-- Creating primary key on [RegistreerimineID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [PK_RegistreerimineSet]
    PRIMARY KEY CLUSTERED ([RegistreerimineID] ASC);
GO

-- Creating primary key on [OsalejaID] in table 'OsalejaSet'
ALTER TABLE [dbo].[OsalejaSet]
ADD CONSTRAINT [PK_OsalejaSet]
    PRIMARY KEY CLUSTERED ([OsalejaID] ASC);
GO

-- Creating primary key on [OsalemineID] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [PK_OsalemineSet]
    PRIMARY KEY CLUSTERED ([OsalemineID] ASC);
GO

-- Creating primary key on [ArveID] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [PK_ArveSet]
    PRIMARY KEY CLUSTERED ([ArveID] ASC);
GO

-- Creating primary key on [RuhmID] in table 'RuhmSet'
ALTER TABLE [dbo].[RuhmSet]
ADD CONSTRAINT [PK_RuhmSet]
    PRIMARY KEY CLUSTERED ([RuhmID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [juhendaja_JuhendajaID] in table 'HuviringJyhendajaSet'
ALTER TABLE [dbo].[HuviringJyhendajaSet]
ADD CONSTRAINT [FK_juhendajaHuviringJyhendaja]
    FOREIGN KEY ([juhendaja_JuhendajaID])
    REFERENCES [dbo].[juhendajaSet]
        ([JuhendajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_juhendajaHuviringJyhendaja'
CREATE INDEX [IX_FK_juhendajaHuviringJyhendaja]
ON [dbo].[HuviringJyhendajaSet]
    ([juhendaja_JuhendajaID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [FK_HuviringidToimusaeg]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidToimusaeg'
CREATE INDEX [IX_FK_HuviringidToimusaeg]
ON [dbo].[ToimusaegSet]
    ([Huviringid_HuviringidID]);
GO

-- Creating foreign key on [Ruhm_RuhmID] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [FK_RuhmToimusaeg]
    FOREIGN KEY ([Ruhm_RuhmID])
    REFERENCES [dbo].[RuhmSet]
        ([RuhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuhmToimusaeg'
CREATE INDEX [IX_FK_RuhmToimusaeg]
ON [dbo].[ToimusaegSet]
    ([Ruhm_RuhmID]);
GO

-- Creating foreign key on [Ruum_RuumId] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [FK_RuumToimusaeg]
    FOREIGN KEY ([Ruum_RuumId])
    REFERENCES [dbo].[RuumSet]
        ([RuumId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuumToimusaeg'
CREATE INDEX [IX_FK_RuumToimusaeg]
ON [dbo].[ToimusaegSet]
    ([Ruum_RuumId]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'RuhmSet'
ALTER TABLE [dbo].[RuhmSet]
ADD CONSTRAINT [FK_HuviringidRuhm]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidRuhm'
CREATE INDEX [IX_FK_HuviringidRuhm]
ON [dbo].[RuhmSet]
    ([Huviringid_HuviringidID]);
GO

-- Creating foreign key on [UritusUritusHuviring_UritusHuviring_UritusID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_UritusUritusHuviring]
    FOREIGN KEY ([UritusUritusHuviring_UritusHuviring_UritusID])
    REFERENCES [dbo].[UritusSet]
        ([UritusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UritusUritusHuviring'
CREATE INDEX [IX_FK_UritusUritusHuviring]
ON [dbo].[UritusHuviringSet]
    ([UritusUritusHuviring_UritusHuviring_UritusID]);
GO

-- Creating foreign key on [HuviringidUritusHuviring_UritusHuviring_HuviringidID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_HuviringidUritusHuviring]
    FOREIGN KEY ([HuviringidUritusHuviring_UritusHuviring_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidUritusHuviring'
CREATE INDEX [IX_FK_HuviringidUritusHuviring]
ON [dbo].[UritusHuviringSet]
    ([HuviringidUritusHuviring_UritusHuviring_HuviringidID]);
GO

-- Creating foreign key on [Osaleja_OsalejaID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_OsalejaRegistreerimine]
    FOREIGN KEY ([Osaleja_OsalejaID])
    REFERENCES [dbo].[OsalejaSet]
        ([OsalejaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OsalejaRegistreerimine'
CREATE INDEX [IX_FK_OsalejaRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Osaleja_OsalejaID]);
GO

-- Creating foreign key on [Ruhm_RuhmID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_RuhmRegistreerimine]
    FOREIGN KEY ([Ruhm_RuhmID])
    REFERENCES [dbo].[RuhmSet]
        ([RuhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuhmRegistreerimine'
CREATE INDEX [IX_FK_RuhmRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Ruhm_RuhmID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_HuviringidRegistreerimine]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidRegistreerimine'
CREATE INDEX [IX_FK_HuviringidRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Huviringid_HuviringidID]);
GO

-- Creating foreign key on [Registreerimine_RegistreerimineID] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [FK_RegistreerimineArve]
    FOREIGN KEY ([Registreerimine_RegistreerimineID])
    REFERENCES [dbo].[RegistreerimineSet]
        ([RegistreerimineID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistreerimineArve'
CREATE INDEX [IX_FK_RegistreerimineArve]
ON [dbo].[ArveSet]
    ([Registreerimine_RegistreerimineID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [FK_HuviringidArve]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidArve'
CREATE INDEX [IX_FK_HuviringidArve]
ON [dbo].[ArveSet]
    ([Huviringid_HuviringidID]);
GO

-- Creating foreign key on [Registreerimine_RegistreerimineID] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [FK_RegistreerimineOsalemine]
    FOREIGN KEY ([Registreerimine_RegistreerimineID])
    REFERENCES [dbo].[RegistreerimineSet]
        ([RegistreerimineID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistreerimineOsalemine'
CREATE INDEX [IX_FK_RegistreerimineOsalemine]
ON [dbo].[OsalemineSet]
    ([Registreerimine_RegistreerimineID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'HuviringJyhendajaSet'
ALTER TABLE [dbo].[HuviringJyhendajaSet]
ADD CONSTRAINT [FK_HuviringidHuviringJyhendaja]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidHuviringJyhendaja'
CREATE INDEX [IX_FK_HuviringidHuviringJyhendaja]
ON [dbo].[HuviringJyhendajaSet]
    ([Huviringid_HuviringidID]);
GO

-- Creating foreign key on [Uritus_UritusID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_UritusUritusHuviring1]
    FOREIGN KEY ([Uritus_UritusID])
    REFERENCES [dbo].[UritusSet]
        ([UritusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UritusUritusHuviring1'
CREATE INDEX [IX_FK_UritusUritusHuviring1]
ON [dbo].[UritusHuviringSet]
    ([Uritus_UritusID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_HuviringidUritusHuviring1]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidUritusHuviring1'
CREATE INDEX [IX_FK_HuviringidUritusHuviring1]
ON [dbo].[UritusHuviringSet]
    ([Huviringid_HuviringidID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------