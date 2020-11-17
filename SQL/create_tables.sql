if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = N'meters' and TABLE_SCHEMA = N'dbo')
BEGIN
CREATE TABLE [dbo].[meters] (
       id      int IDENTITY(1,1) PRIMARY KEY,
       caption          char(255) NOT NULL
) ON [PRIMARY]
END
go


if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = N'parameters' and TABLE_SCHEMA = N'dbo')
BEGIN
CREATE TABLE [dbo].parameters (
       id      int IDENTITY(1,1) PRIMARY KEY,
       caption          char(255) NOT NULL,
	   measure_units          char(255) NOT NULL
) ON [PRIMARY]
END
go

if not exists (select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME = N'measuring_values' and TABLE_SCHEMA = N'dbo')
BEGIN
CREATE TABLE [dbo].measuring_values (
       id      int IDENTITY(1,1) PRIMARY KEY,
       parametr_id int NOT NULL FOREIGN KEY REFERENCES dbo.parameters(ID),
	   meter_id int NOT NULL FOREIGN KEY REFERENCES dbo.meters(ID),
	   value float, 
	   value_dt datetime NOT NULL 
) ON [PRIMARY]
END
go