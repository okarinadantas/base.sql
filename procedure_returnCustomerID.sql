-------------------------------------------
/*
PROCEDURE 
*/
-------------------------------------------

use NORTHWND

go 

drop procedure if exists dbo.insertCostumer;

go

create procedure dbo.insertCostumer
(
@CostumerID nvarchar (5)
,@CompanyName nvarchar(40)
,@ContactName nvarchar (30) 
,@ContactTitle nvarchar(30) 
,@Address nvarchar(60) 
,@City nvarchar(15) 
,@Region nvarchar(15) 
,@PostalCode nvarchar(10) 
,@Country nvarchar (24) 
,@Phone nvarchar (24) 
,@Fax nvarchar (24) 
)
as
begin;


declare @Customer_ID nvarchar(5);
set nocount on

insert into [dbo].[Customers] (
[CustomerID]
,[CompanyName]
,[ContactName]
,[ContactTitle]
,[Address]
,[City]
,[Region]
,[PostalCode]
,[Country]
,[Phone]
,[Fax]
)
values 
(
@CostumerID
,@CompanyName
,@ContactName
,@ContactTitle
,@Address
,@City
,@Region
,@PostalCode
,@Country
,@Phone
,@Fax)

select [Customer_ID] = SCOPE_IDENTITY();
select 
[CustomerID]
,[CompanyName]
,[ContactName]
,[ContactTitle]
,[Address]
,[City]
,[Region]
,[PostalCode]
,[Country]
,[Phone]
,[Fax]
,[Customer_ID]
from 
[dbo].[Customers] 
where Customer_ID = @Customer_ID;

set nocount off

end;

-------------------------------------------
/*
DECLARE VARIABLES
*/
-------------------------------------------


--declare @CustomerID nvarchar;
exec dbo.insertCostumer
@CostumerID = 'FFGF'
,@CompanyName = 'Teste Teste'
,@ContactName = 'Thomas Hardy'
,@ContactTitle = 'Owner'
,@Address = 'Cerrito 333'
,@City  = 'London'
,@Region  = 'London'
,@PostalCode = '05432-043'
,@Country  = 'UK' 
,@Phone = '(604) 555-4729'
,@Fax = '(604) 555-3745'

--select * from [dbo].[Customers]
--WHERE CustomerID = 'FFGF'
