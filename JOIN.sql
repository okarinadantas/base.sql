USE ADVENTUREWORKS2019

SELECT
P.NameStyle, P.LastName, P.BusinessEntityID, EA.EmailAddress
FROM PERSON.Person P
JOIN PERSON.EmailAddress EA 
	ON EA.BusinessEntityID = P.BusinessEntityID
