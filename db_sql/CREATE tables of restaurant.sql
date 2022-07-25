USE [restaurant];
GO

CREATE TABLE [position] (
[id_position] int NOT NULL IDENTITY(1,1),
[title] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[salary] money NULL,
[tariff_rate] money NULL,
[is_tariff_rate] bit NULL,
PRIMARY KEY ([id_position]) 
)
GO
CREATE INDEX [idx_id_position] ON [position] ([id_position] ASC)
GO
DBCC CHECKIDENT (N'[position]', RESEED, 1)
GO
ALTER TABLE [position] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [booking] (
[id_booking] int NOT NULL IDENTITY(1,1),
[id_table] int NULL,
[title] varchar(30) NULL,
[phone_number] varchar(12) NULL,
[datetime_booking] datetime NULL,
[duration_hours] int NULL,
[is_confirmed] bit NULL,
[is_canceled] bit NULL,
[description] text COLLATE Cyrillic_General_CI_AS NULL,
PRIMARY KEY ([id_booking]) 
)
GO
CREATE INDEX [idx_id_booking] ON [booking] ([id_booking] ASC)
GO
CREATE INDEX [idx_id_table] ON [booking] ([id_table] ASC)
GO
DBCC CHECKIDENT (N'[booking]', RESEED, 1)
GO
ALTER TABLE [booking] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [client] (
[id_client] int NOT NULL IDENTITY(1,1),
[id_tariff] int NULL,
[lastname] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[middlename] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[firstname] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[phone_number] varchar(12) COLLATE Cyrillic_General_CI_AS NULL,
[address] varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
[card] varchar(12) COLLATE Cyrillic_General_CI_AS NULL,
[sum] money NULL,
PRIMARY KEY ([id_client]) 
)
GO
CREATE INDEX [idx_id_client] ON [client] ([id_client] ASC)
GO
CREATE INDEX [idx_lastname] ON [client] ([lastname] ASC)
GO
CREATE INDEX [idx_card] ON [client] ([card] ASC)
GO
DBCC CHECKIDENT (N'[client]', RESEED, 1)
GO
ALTER TABLE [client] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [dish] (
[id_dish] int NOT NULL IDENTITY(1,1),
[id_unit] int NULL,
[amount] int NULL,
[title] varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
[price] money NULL,
[is_removed] bit NULL,
[description] varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
PRIMARY KEY ([id_dish]) 
)
GO
CREATE UNIQUE INDEX [idx_id_dish] ON [dish] ([id_dish] ASC)
GO
DBCC CHECKIDENT (N'[dish]', RESEED, 1)
GO
ALTER TABLE [dish] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [dish_ingredient] (
[id_dish_ingredient] int NOT NULL IDENTITY(1,1),
[id_dish] int NULL,
[id_ingredient] int NULL,
[amount] int NULL,
PRIMARY KEY ([id_dish_ingredient]) 
)
GO
CREATE INDEX [idx_id_dish] ON [dish_ingredient] ([id_dish] ASC)
GO
CREATE INDEX [idx_id_ingredient] ON [dish_ingredient] ([id_ingredient] ASC)
GO
CREATE INDEX [idx_id_dish_ingredient] ON [dish_ingredient] ([id_dish_ingredient] ASC)
GO
DBCC CHECKIDENT (N'[dish_ingredient]', RESEED, 1)
GO
ALTER TABLE [dish_ingredient] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [ingredient] (
[id_ingredient] int NOT NULL IDENTITY(1,1),
[id_unit] int NULL,
[title] varchar(50) COLLATE Cyrillic_General_CI_AS NULL,
[price] money NULL,
PRIMARY KEY ([id_ingredient]) 
)
GO
CREATE INDEX [idx_id_ingredient] ON [ingredient] ([id_ingredient] ASC)
GO
DBCC CHECKIDENT (N'[ingredient]', RESEED, 1)
GO
ALTER TABLE [ingredient] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [order] (
[id_order] int NOT NULL IDENTITY(1,1),
[id_staff] int NULL,
[id_table] int NULL,
[id_client] int NULL,
[id_tariff] int NULL,
[order_datetime] datetime NULL,
[cost] money NULL,
[is_takeaway] bit NULL,
[is_payed] bit NULL,
[is_canceled] bit NULL,
PRIMARY KEY ([id_order]) 
)
GO
CREATE INDEX [idx_id_order] ON [order] ([id_order] ASC)
GO
CREATE INDEX [idx_id_client] ON [order] ([id_client] ASC)
GO
DBCC CHECKIDENT (N'[order]', RESEED, 1)
GO
ALTER TABLE [order] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [order_dish] (
[id_order_dish] int NOT NULL IDENTITY(1,1),
[id_order] int NULL,
[id_dish] int NULL,
[amount] int NULL,
[is_canceled] bit NULL,
PRIMARY KEY ([id_order_dish]) 
)
GO
CREATE INDEX [idx_id_order_dish] ON [order_dish] ([id_order_dish] ASC)
GO
CREATE INDEX [idx_id_order] ON [order_dish] ([id_order] ASC)
GO
CREATE INDEX [idx_id_dish] ON [order_dish] ([id_dish] ASC)
GO
DBCC CHECKIDENT (N'[order_dish]', RESEED, 1)
GO
ALTER TABLE [order_dish] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [staff] (
[id_staff] int NOT NULL IDENTITY(1,1),
[id_position] int NULL,
[lastname] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[middlename] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[firstname] varchar(30) COLLATE Cyrillic_General_CI_AS NULL,
[phone_number] varchar(12) COLLATE Cyrillic_General_CI_AS NULL,
[is_fired] bit NULL,
PRIMARY KEY ([id_staff]) 
)
GO
CREATE INDEX [idx_id_staff] ON [staff] ([id_staff] ASC)
GO
CREATE INDEX [idx_lastname] ON [staff] ([lastname] ASC)
GO
CREATE INDEX [idx_id_position] ON [staff] ([id_position] ASC)
GO
DBCC CHECKIDENT (N'[staff]', RESEED, 1)
GO
ALTER TABLE [staff] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [table] (
[id_table] int NOT NULL IDENTITY(1,1),
[title] varchar(2) COLLATE Cyrillic_General_CI_AS NULL,
[description] varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
PRIMARY KEY ([id_table]) 
)
GO
CREATE INDEX [idx_id_table] ON [table] ([id_table] ASC)
GO
DBCC CHECKIDENT (N'[table]', RESEED, 1)
GO
ALTER TABLE [table] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [tariff] (
[id_tariff] int NOT NULL IDENTITY(1,1),
[title] varchar(20) COLLATE Cyrillic_General_CI_AS NULL,
[discount] real NULL,
[min_sum] money NULL,
[description] varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
PRIMARY KEY ([id_tariff]) 
)
GO
CREATE INDEX [idx_id_tariff] ON [tariff] ([id_tariff] ASC)
GO
DBCC CHECKIDENT (N'[tariff]', RESEED, 1)
GO
ALTER TABLE [tariff] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [unit] (
[id_unit] int NOT NULL IDENTITY(1,1),
[title] varchar(20) COLLATE Cyrillic_General_CI_AS NULL,
PRIMARY KEY ([id_unit]) 
)
GO
CREATE INDEX [idx_id_unit] ON [unit] ([id_unit] ASC)
GO
DBCC CHECKIDENT (N'[unit]', RESEED, 1)
GO
ALTER TABLE [unit] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [worked] (
[id_worked] int NOT NULL IDENTITY(1,1),
[id_staff] int NULL,
[date_worked] date NULL,
[duration] int NULL,
PRIMARY KEY ([id_worked]) 
)
GO
CREATE INDEX [idx_id_staff] ON [worked] ([id_staff] ASC)
GO
DBCC CHECKIDENT (N'[worked]', RESEED, 1)
GO
ALTER TABLE [worked] SET ( LOCK_ESCALATION = TABLE )
GO

CREATE TABLE [order_dish_ingredient] (
[id_order_dish_ingredient] int NOT NULL IDENTITY(1,1),
[id_order_dish] int NULL,
[id_ingredient] int NULL,
[amount] int NULL,
PRIMARY KEY ([id_order_dish_ingredient]) 
)
GO
CREATE INDEX [idx_id_order_dish_ingredient] ON [order_dish_ingredient] ([id_order_dish_ingredient] ASC)
GO
CREATE INDEX [idx_id_order_dish] ON [order_dish_ingredient] ([id_order_dish] ASC)
GO
DBCC CHECKIDENT (N'[order_dish_ingredient]', RESEED, 1)
GO

CREATE TABLE [role] (
[id_role] int NOT NULL IDENTITY(1,1),
[title] varchar(255) NULL,
[description] varchar(255) NULL,
PRIMARY KEY ([id_role]) 
)
GO
DBCC CHECKIDENT (N'[role]', RESEED, 1)
GO

CREATE TABLE [user] (
[id_user] int NOT NULL IDENTITY(1,1),
[id_staff] int NULL,
[title] varchar(255) NULL,
[password] varchar(255) NULL,
PRIMARY KEY ([id_user]) 
)
GO
DBCC CHECKIDENT (N'[user]', RESEED, 1)
GO

CREATE TABLE [permission] (
[id_permission] int NOT NULL IDENTITY(1,1),
[title] varchar(255) NULL,
[description] varchar(255) NULL,
PRIMARY KEY ([id_permission]) 
)
GO
DBCC CHECKIDENT (N'[permission]', RESEED, 1)
GO

CREATE TABLE [role_permission] (
[id_role_permission] int NOT NULL IDENTITY(1,1),
[id_role] int NULL,
[id_permission] int NULL,
[description] varchar(255) NULL,
PRIMARY KEY ([id_role_permission]) 
)
GO
DBCC CHECKIDENT (N'[role_permission]', RESEED, 1)
GO

CREATE TABLE [user_role] (
[id_user_role] int NOT NULL IDENTITY(1,1),
[id_user] int NULL,
[id_role] int NULL,
[description] varchar(255) NULL,
PRIMARY KEY ([id_user_role]) 
)
GO
DBCC CHECKIDENT (N'[user_role]', RESEED, 1)
GO


ALTER TABLE [booking] ADD CONSTRAINT [fk_booking_table_1] FOREIGN KEY ([id_table]) REFERENCES [table] ([id_table]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [client] ADD CONSTRAINT [fk_client_tariff_1] FOREIGN KEY ([id_tariff]) REFERENCES [tariff] ([id_tariff]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dish] ADD CONSTRAINT [fk_dish_unit_1] FOREIGN KEY ([id_unit]) REFERENCES [unit] ([id_unit]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dish_ingredient] ADD CONSTRAINT [fk_dish_ingredient_dish_1] FOREIGN KEY ([id_dish]) REFERENCES [dish] ([id_dish]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dish_ingredient] ADD CONSTRAINT [fk_dish_ingredient_ingredient_1] FOREIGN KEY ([id_ingredient]) REFERENCES [ingredient] ([id_ingredient]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [ingredient] ADD CONSTRAINT [fk_ingredient_unit_1] FOREIGN KEY ([id_unit]) REFERENCES [unit] ([id_unit]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order] ADD CONSTRAINT [fk_order_table_1] FOREIGN KEY ([id_table]) REFERENCES [table] ([id_table]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order] ADD CONSTRAINT [fk_order_client_1] FOREIGN KEY ([id_client]) REFERENCES [client] ([id_client]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order] ADD CONSTRAINT [fk_order_staff_1] FOREIGN KEY ([id_staff]) REFERENCES [staff] ([id_staff]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order] ADD CONSTRAINT [fk_order_tariff_1] FOREIGN KEY ([id_tariff]) REFERENCES [tariff] ([id_tariff]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order_dish] ADD CONSTRAINT [fk_order_dish_order_1] FOREIGN KEY ([id_order]) REFERENCES [order] ([id_order]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order_dish] ADD CONSTRAINT [fk_order_dish_dish_1] FOREIGN KEY ([id_dish]) REFERENCES [dish] ([id_dish]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [staff] ADD CONSTRAINT [fk_staff_
position_1] FOREIGN KEY ([id_position]) REFERENCES [position] ([id_position]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [worked] ADD CONSTRAINT [fk_worked_staff_1] FOREIGN KEY ([id_staff]) REFERENCES [staff] ([id_staff]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order_dish_ingredient] ADD CONSTRAINT [fk_order_dish_ingredient_order_dish_1] FOREIGN KEY ([id_order_dish]) REFERENCES [order_dish] ([id_order_dish]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [order_dish_ingredient] ADD CONSTRAINT [fk_order_dish_ingredient_ingredient_1] FOREIGN KEY ([id_ingredient]) REFERENCES [ingredient] ([id_ingredient]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [role_permission] ADD CONSTRAINT [fk_role_permission_role_1] FOREIGN KEY ([id_role]) REFERENCES [role] ([id_role])
GO
ALTER TABLE [role_permission] ADD CONSTRAINT [fk_role_permission_permission_1] FOREIGN KEY ([id_permission]) REFERENCES [permission] ([id_permission])
GO
ALTER TABLE [user_role] ADD CONSTRAINT [fk_user_role_user_1] FOREIGN KEY ([id_user]) REFERENCES [user] ([id_user])
GO
ALTER TABLE [user_role] ADD CONSTRAINT [fk_user_role_role_1] FOREIGN KEY ([id_role]) REFERENCES [role] ([id_role])
GO
ALTER TABLE [user] ADD CONSTRAINT [fk_user_staff_1] FOREIGN KEY ([id_staff]) REFERENCES [staff] ([id_staff])
GO

CREATE 
VIEW [vw_main_content_of_order] AS SELECT
[dbo].[order].[id_order],
[dbo].[dish].[title] AS [dish_title],
[dbo].[dish].[description],
[dbo].[order_dish].[amount] AS [dish_amount],
[dbo].[dish].[price] AS [dish_price],
[dbo].[dish].[amount] AS [dish_unit_amount],
[dbo].[unit].[title] AS [dish_unit_title],
[dbo].[order_dish].[id_order_dish],
[dbo].[dish].[id_dish],
[dbo].[unit].[id_unit]

FROM
[dbo].[order]
INNER JOIN [dbo].[order_dish] ON [dbo].[order_dish].[id_order] = [dbo].[order].[id_order]
INNER JOIN [dbo].[dish] ON [dbo].[order_dish].[id_dish] = [dbo].[dish].[id_dish]
INNER JOIN [dbo].[unit] ON [dbo].[dish].[id_unit] = [dbo].[unit].[id_unit]

GO
CREATE 
VIEW [vw_booking] AS SELECT
[dbo].[booking].[title],
[dbo].[booking].[phone_number],
[dbo].[booking].[datetime_booking],
[dbo].[booking].[duration_hours],
[dbo].[booking].[description],
[dbo].[booking].[is_confirmed],
[dbo].[booking].[is_canceled],
[dbo].[table].[title] AS [table_title],
[dbo].[table].[description] AS [table_description],
[dbo].[booking].[id_booking],
[dbo].[table].[id_table]

FROM
[dbo].[booking]
INNER JOIN [dbo].[table] ON [dbo].[booking].[id_table] = [dbo].[table].[id_table]

GO
CREATE 
VIEW [vw_add_content_to_order] AS SELECT
[dbo].[ingredient].[title] AS [ingredient_titile],
[dbo].[order_dish_ingredient].[amount] AS [ingredient_amount],
[dbo].[ingredient].[price] AS [ingredient_price],
[ingredient_unit].[title] AS [ingredient_unit_title],
[vw_main_content_of_order].[id_order],
[vw_main_content_of_order].[id_dish],
[dbo].[order_dish_ingredient].[id_order_dish],
[dbo].[order_dish_ingredient].[id_order_dish_ingredient],
[dbo].[ingredient].[id_ingredient],
[ingredient_unit].[id_unit]

FROM
[dbo].[order_dish_ingredient]
INNER JOIN [dbo].[ingredient] ON [dbo].[order_dish_ingredient].[id_ingredient] = [dbo].[ingredient].[id_ingredient]
INNER JOIN [dbo].[unit] AS [ingredient_unit] ON [dbo].[ingredient].[id_unit] = [ingredient_unit].[id_unit]
INNER JOIN [vw_main_content_of_order] ON [vw_main_content_of_order].[id_order_dish] = [dbo].[order_dish_ingredient].[id_order_dish]

GO
CREATE 
VIEW [vw_order_base] AS SELECT
[dbo].[table].[title] as [table_title],
[dbo].[order].[order_datetime],
[dbo].[order].[cost],
[dbo].[order].[is_takeaway],
[dbo].[order].[is_payed],
[dbo].[staff].[lastname] AS [staff_lastname],
[dbo].[staff].[middlename] AS [staff_middlename],
[dbo].[staff].[firstname] AS [staff_firstname],
[dbo].[order].[id_order],
[dbo].[order].[id_staff],
[dbo].[order].[id_table],
[dbo].[order].[id_client],
[dbo].[order].[id_tariff]

FROM
[dbo].[order]
INNER JOIN [dbo].[staff] ON [dbo].[order].[id_staff] = [dbo].[staff].[id_staff]
INNER JOIN [dbo].[table] ON [dbo].[order].[id_table] = [dbo].[table].[id_table]

GO
CREATE 
VIEW [vw_order_client] AS SELECT
[dbo].[vw_order_base].[id_order],
[dbo].[vw_order_base].[table_title],
[dbo].[vw_order_base].[order_datetime],
[dbo].[vw_order_base].[cost],
[dbo].[vw_order_base].[is_takeaway],
[dbo].[vw_order_base].[is_payed],
[dbo].[vw_order_base].[staff_lastname],
[dbo].[vw_order_base].[staff_middlename],
[dbo].[vw_order_base].[staff_firstname],
[dbo].[client].[lastname] AS [client_lastname],
[dbo].[client].[middlename] AS [client_middlename],
[dbo].[client].[firstname] AS [client_firstname],
[dbo].[tariff].[title] AS [tariff_title],
[dbo].[tariff].[discount] AS [tariff_discount],
[dbo].[vw_order_base].[id_staff],
[dbo].[vw_order_base].[id_table],
[dbo].[vw_order_base].[id_client],
[dbo].[vw_order_base].[id_tariff]

FROM
[dbo].[client]
INNER JOIN [dbo].[tariff] ON [dbo].[client].[id_tariff] = [dbo].[tariff].[id_tariff]
INNER JOIN [vw_order_base] ON [vw_order_base].[id_client] = [dbo].[client].[id_client]

GO
CREATE 
VIEW [vw_order_anonim] AS SELECT
[dbo].[vw_order_base].[id_order],
[dbo].[vw_order_base].[table_title],
[dbo].[vw_order_base].[order_datetime],
[dbo].[vw_order_base].[cost],
[dbo].[vw_order_base].[is_takeaway],
[dbo].[vw_order_base].[is_payed],
[dbo].[vw_order_base].[staff_lastname],
[dbo].[vw_order_base].[staff_middlename],
[dbo].[vw_order_base].[staff_firstname],
[dbo].[tariff].[title] AS [tariff_title],
[dbo].[tariff].[discount] AS [tariff_discount],
[dbo].[vw_order_base].[id_staff],
[dbo].[vw_order_base].[id_table],
[dbo].[vw_order_base].[id_client],
[dbo].[vw_order_base].[id_tariff]

FROM
[dbo].[vw_order_base] 
LEFT OUTER JOIN [dbo].[tariff] ON [dbo].[vw_order_base].[id_tariff] = [dbo].[tariff].[id_tariff]
WHERE
[dbo].[vw_order_base].[id_client] IS NULL

GO
CREATE 
VIEW [vw_user_role_permission] AS SELECT
[user].[title] AS [user_title],
[role].[title] AS [role_title],
[permission].[title] AS [permission_title],
[dbo].[staff].[firstname],
[dbo].[staff].[middlename],
[dbo].[staff].[lastname],
[user].[id_user] as [user_id_user],
[role].[id_role] as [role_id_role],
[permission].[id_permission],
[role_permission].[id_role_permission],
[user_role].[id_user_role]

FROM
[user]
INNER JOIN [user_role] ON [user_role].[id_user] = [user].[id_user]
INNER JOIN [role] ON [role].[id_role] = [user_role].[id_role]
INNER JOIN [role_permission] ON [role_permission].[id_role] = [role].[id_role]
INNER JOIN [permission] ON [permission].[id_permission] = [role_permission].[id_permission] 
INNER JOIN [dbo].[staff] ON [dbo].[user].[id_staff] = [dbo].[staff].[id_staff]
GO
