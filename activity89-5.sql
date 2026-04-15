/* invoice details query */
SELECT
    InvoiceDetails.InvoiceDetails,
    Products.ProductName,
    InvoiceDetails.OrderQty,
    InvoiceDetails.UnitPrice,
    InvoiceDetails.LineTotal
FROM InvoiceDetails
INNER JOIN Products ON InvoiceDetails.ProductNumber = Products.ProductNumber
ORDER BY InvoiceDetails.InvoiceID ASC, Products.ProductName ASC;