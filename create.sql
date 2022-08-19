CREATE DATABASE [CustomerLib_DB]
GO

USE [CustomerLib_DB]
GO

CREATE SCHEMA [s1]
GO

CREATE TABLE [CustomerLib_DB].[s1].[Customers]
(
	id int IDENTITY NOT NULL PRIMARY KEY,
	FirstName nvarchar(50) NULL,
	LastName nvarchar(50) NOT NULL,
	PhoneNumber nvarchar(15) NULL,
	Email nvarchar(50) NOT NULL CHECK (Email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%' AND Email NOT LIKE '%["<>'']%'),
	TotalPurchasesAmount money NULL
);

CREATE TABLE [CustomerLib_DB].[s1].[Notes]
(
	id int IDENTITY NOT NULL PRIMARY KEY,
	CustomerID int REFERENCES [CustomerLib_DB].[s1].[Customers] (id) NOT NULL,
	NoteText nvarchar(200) NULL
);

CREATE TABLE [CustomerLib_DB].[s1].[Addresses]
(
	id int IDENTITY NOT NULL PRIMARY KEY,
	CustomerID int REFERENCES [CustomerLib_DB].[s1].[Customers] (id) NOT NULL,
	AddressLine nvarchar(100) NOT NULL,
	AddressLine2 nvarchar(100) NULL,
	AddressType nvarchar(20) NOT NULL CHECK (AddressType IN('Shipping', 'Billing')),
	City nvarchar(50) NOT NULL,
	PostalCode nvarchar(6) NOT NULL,
	State nvarchar(20) NOT NULL,
	Country nvarchar(20) NOT NULL CHECK (Country IN('United States', 'Canada')) 
);