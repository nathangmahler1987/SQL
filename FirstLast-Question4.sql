SELECT Production.ProductModelIllustration.IllustrationID, Production.Illustration.Diagram
FROM Production.Product
	INNER JOIN Production.ProductModelIllustration
	ON Production.Product.ProductModelID = Production.ProductModelIllustration.ProductModelID
	INNER JOIN Production.Illustration
	ON Production.ProductModelIllustration.IllustrationID = Production.Illustration.IllustrationID
ORDER BY Production.ProductModelIllustration.IllustrationID 
-- note this is the correct SQL query if you actually want to see the diagram you need to use an additional tool