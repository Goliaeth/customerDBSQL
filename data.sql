--Valid cases
INSERT INTO [CustomerLib_DB].[s1].[Customers] (FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES
('Ivan', 'Ivanov', '99744556456', '120@gmail.com', null)

INSERT INTO [CustomerLib_DB].[s1].[Notes] (CustomerID, NoteText)
VALUES
(1, 'Note 1')


INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, 'bla-bla', 'bla-bla-bla', 'Shipping', 'Chicago', 'United States', '555655', 'Some state')

--Invalid cases
INSERT INTO [CustomerLib_DB].[s1].[Customers] (FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES
('Ivan', 'Ivanov', '99744556456', '120ail.com', null)

INSERT INTO [CustomerLib_DB].[s1].[Customers] (FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES
('Ivan', null, '99744556456', '120@gmail.com', null)

INSERT INTO [CustomerLib_DB].[s1].[Notes] (CustomerID, NoteText)
VALUES
(null, 'Note 1')


INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(null, 'bla-bla', 'bla-bla-bla', 'Shipping', 'Chicago', 'United States', '555655', 'Some state')

INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, null, 'bla-bla-bla', 'Zipping', 'Chicago', 'United States', '555655', 'Some state')

INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, 'bla-bla', 'bla-bla-bla', 'Shipping', null, 'United States', '555655', 'Some state')

INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, 'bla-bla', 'bla-bla-bla', 'Shipping', 'Chicago', 'United States', null, 'Some state')

INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, 'bla-bla', 'bla-bla-bla', 'Shipping', 'Chicago', 'United States', '555655', null)

INSERT INTO [CustomerLib_DB].[s1].[Addresses] (CustomerID, AddressLine, AddressLine2, AddressType, City, Country, PostalCode, State)
VALUES
(1, 'bla-bla', 'bla-bla-bla', 'Shipping', 'Chicago', 'Israel', '555655', 'Some state')