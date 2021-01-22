SELECT 
SalesOrderDetailID, 
LineTotal
FROM SALES.SalesOrderDetail

SELECT 
SalesOrderID, 
SUM (LineTotal) AS TOTAL
FROM SALES.SalesOrderDetail
GROUP BY SalesOrderID

SELECT 
SalesOrderID,
SUM(LINETOTAL) AS TOTAL
FROM SALES.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LINETOTAL) < 10
ORDER BY SalesOrderID


SELECT BusinessEntityID
FROM HumanResources.Employee
EXCEPT
SELECT BusinessEntityID
FROM HumanResources.JobCandidate

SELECT BusinessEntityID
FROM HumanResources.JobCandidate
EXCEPT
SELECT BusinessEntityID
FROM HumanResources.Employee

SELECT BusinessEntityID
FROM HumanResources.Employee
INTERSECT
SELECT BusinessEntityID
FROM HumanResources.JobCandidate

SELECT *
FROM HumanResources.Employee
UNION
SELECT *
FROM HumanResources.Employee

SELECT *
FROM HumanResources.Employee
UNION ALL
SELECT *
FROM HumanResources.Employee
