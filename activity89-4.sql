/* invoice header query */
SELECT
    Invoices.InvoiceID,
    Customers.CustomerName,
    Customers.City,
    Customers.State,
    CURDATE() AS Date,
    Invoices.TotalDue
FROM Invoices
INNER JOIN Customers ON Invoices.CustomerID = Customers.CustomerID
WHERE Invoices.InvoiceID = 3;