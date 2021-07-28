--SELECT PADRÃO, IMPORTANTE SABER QUAIS CAMPOS SÃO NECESSÁRIOS ISSO EVITA USO DESNECESSÁRIO DE MEMÓRIA DA BASE
SELECT 
SalesOrderDetailID, 
LineTotal
FROM SALES.SalesOrderDetail

--EXEMPLO DE AGRUPAMENTO
SELECT 
SalesOrderID, 
SUM (LineTotal) AS TOTAL
FROM SALES.SalesOrderDetail
GROUP BY SalesOrderID

--AGRUPAMENTO REFINANDO A PESQUISA COM HAVING, CASO PRECISE LIMITAR MAIS OS DADOS
SELECT 
SalesOrderID,
SUM(LINETOTAL) AS TOTAL
FROM SALES.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LINETOTAL) < 10
ORDER BY SalesOrderID

--EXEMPLO DE EXCEPT, RETORNA OS CAMPOS DA TABELA A NÃO ESTÃO NA TABELA B
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

--EXIBI APENAS OS CAMPOS EM COMUM
SELECT BusinessEntityID
FROM HumanResources.Employee
INTERSECT
SELECT BusinessEntityID
FROM HumanResources.JobCandidate

--UNI OS CAMPOS EM COMUM
SELECT *
FROM HumanResources.Employee
UNION
SELECT *
FROM HumanResources.Employee

--UNI TODOS OS CAMPOS
SELECT *
FROM HumanResources.Employee
UNION ALL
SELECT *
FROM HumanResources.Employee
