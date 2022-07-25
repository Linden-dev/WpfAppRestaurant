USE [restaurant];
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_client_tariff_1')
ALTER TABLE [dbo].[client] DROP CONSTRAINT [fk_client_tariff_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_booking_table_1')
ALTER TABLE [dbo].[booking] DROP CONSTRAINT [fk_booking_table_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_dish_order_1')
ALTER TABLE [dbo].[order_dish] DROP CONSTRAINT [fk_order_dish_order_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_dish_dish_1')
ALTER TABLE [dbo].[order_dish] DROP CONSTRAINT [fk_order_dish_dish_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_dish_ingredient_dish_1')
ALTER TABLE [dbo].[dish_ingredient] DROP CONSTRAINT [fk_dish_ingredient_dish_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_ingredient_unit_1')
ALTER TABLE [dbo].[ingredient] DROP CONSTRAINT [fk_ingredient_unit_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_worked_staff_1')
ALTER TABLE [dbo].[worked] DROP CONSTRAINT [fk_worked_staff_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_table_1')
ALTER TABLE [dbo].[order] DROP CONSTRAINT [fk_order_table_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_client_1')
ALTER TABLE [dbo].[order] DROP CONSTRAINT [fk_order_client_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_staff_1')
ALTER TABLE [dbo].[order] DROP CONSTRAINT [fk_order_staff_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_tariff_1')
ALTER TABLE [dbo].[order] DROP CONSTRAINT [fk_order_tariff_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_staff_position_1')
ALTER TABLE [dbo].[staff] DROP CONSTRAINT [fk_staff_position_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_dish_ingredient_ingredient_1')
ALTER TABLE [dbo].[dish_ingredient] DROP CONSTRAINT [fk_dish_ingredient_ingredient_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_dish_ingredient_order_dish_1')
ALTER TABLE [dbo].[order_dish_ingredient] DROP CONSTRAINT [fk_order_dish_ingredient_order_dish_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_dish_ingredient_ingredient_1')
ALTER TABLE [dbo].[order_dish_ingredient] DROP CONSTRAINT [fk_order_dish_ingredient_ingredient_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_order_dish_ingredient_ingredient_1')
ALTER TABLE [dbo].[order_dish_ingredient] DROP CONSTRAINT [fk_order_dish_ingredient_ingredient_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_role_permission_role_1')
ALTER TABLE [dbo].[role_permission] DROP CONSTRAINT [fk_role_permission_role_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_role_permission_permission_1')
ALTER TABLE [dbo].[role_permission] DROP CONSTRAINT [fk_role_permission_permission_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_user_role_user_1')
ALTER TABLE [dbo].[user_role] DROP CONSTRAINT [fk_user_role_user_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_user_role_role_1')
ALTER TABLE [dbo].[user_role] DROP CONSTRAINT [fk_user_role_role_1]
GO
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME ='fk_user_staff_1')
ALTER TABLE [dbo].[user] DROP CONSTRAINT [fk_user_staff_1]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[staff]') AND type in (N'U'))
DROP TABLE [dbo].[staff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[position]') AND type in (N'U'))
DROP TABLE [dbo].[position]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type in (N'U'))
DROP TABLE [dbo].[order]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_dish]') AND type in (N'U'))
DROP TABLE [dbo].[order_dish]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dish]') AND type in (N'U'))
DROP TABLE [dbo].[dish]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unit]') AND type in (N'U'))
DROP TABLE [dbo].[unit]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[table]') AND type in (N'U'))
DROP TABLE [dbo].[table]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[booking]') AND type in (N'U'))
DROP TABLE [dbo].[booking]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client]') AND type in (N'U'))
DROP TABLE [dbo].[client]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tariff]') AND type in (N'U'))
DROP TABLE [dbo].[tariff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[ingredient]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dish_ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[dish_ingredient]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[worked]') AND type in (N'U'))
DROP TABLE [dbo].[worked]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_dish_ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[order_dish_ingredient]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_dish_ingredient]') AND type in (N'U'))
DROP TABLE [dbo].[order_dish_ingredient]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission]') AND type in (N'U'))
DROP TABLE [dbo].[permission]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_role]') AND type in (N'U'))
DROP TABLE [dbo].[user_role]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role_permission]') AND type in (N'U'))
DROP TABLE [dbo].[role_permission]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_order]') AND type in (N'V'))
DROP VIEW [dbo].[vw_order]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_main_content_of_order]') AND type in (N'V'))
DROP VIEW [dbo].vw_main_content_of_order
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_add_content_to_order]') AND type in (N'V'))
DROP VIEW [dbo].vw_add_content_to_order
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_order_base]') AND type in (N'V'))
DROP VIEW [dbo].vw_order_base
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_order_anonim]') AND type in (N'V'))
DROP VIEW [dbo].vw_order_anonim
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_order_client]') AND type in (N'V'))
DROP VIEW [dbo].vw_order_client
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_user_role_permission]') AND type in (N'V'))
DROP VIEW [dbo].vw_user_role_permission
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vw_booking]') AND type in (N'V'))
DROP VIEW [dbo].vw_booking
GO