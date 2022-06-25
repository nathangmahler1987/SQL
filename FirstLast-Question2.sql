SELECT ProductNumber
FROM Production.Product
WHERE ProductNumber NOT LIKE '%[A-Z]' AND LEN(Productnumber) <= 7 
-- the instructions said not more than 7 characters so based on that wording I needed to include 7
