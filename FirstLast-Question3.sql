SELECT FirstName, LastName, HireDate
FROM  Person.Person
		INNER JOIN HumanResources.Employee 
		ON Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID
WHERE (FirstName NOT LIKE '%T%'
AND LastName NOT LIKE '%T%')-- () not likely needed since you got the same results with or without them
AND HireDate LIKE '2009%'