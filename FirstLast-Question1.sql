SELECT DISTINCT(SUBSTRING(CarrierTrackingNumber,6,4)) AS '4 middle characters'
FROM Sales.SalesOrderDetail
WHERE SUBSTRING(CarrierTrackingNumber,6,4) IS NOT NULL
ORDER BY SUBSTRING(CarrierTrackingNumber,6,4)