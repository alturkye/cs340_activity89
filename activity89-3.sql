/* GROUPBY with SUM of the InvoiceDetails Line Totals */
SELECT
    Customers.CustomerName AS CustomerName,
    Invoices.InvoiceID,
    SUM(InvoiceDetails.LineTotal) AS LineSum
FROM Customers
INNER JOIN Invoices ON Customers.CustomerID = Invoices.CustomerID
INNER JOIN InvoiceDetails ON Invoices.InvoiceID = InvoiceDetails.InvoiceID
GROUP BY Invoices.InvoiceID
ORDER BY LineSum DESC;