/* 
==================================================
Create Database & Schemas
==================================================
Purpose:
	This script creates a new database named 'DataWareHouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the DataWareHouse database namely: 
	1. Bronze
	2. Silver
	3. Gold

WARNING:
	Running this scripts will drop the entire 'DataWareHouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution and
	ensure you have proper backups before running this script.
*/

-- Creating Database "Data Warehouse"
USE master;

-- Drop & recreate the 'DataWareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE NAME = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

-- "Creating a new Database named "DataWareHouse"
CREATE DATABASE DataWareHouse;

USE DataWareHouse;
GO

-- ==========================================
-- Creating Bronze, Silver & Gold Schema
-- =========================================
CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO

