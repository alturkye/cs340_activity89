/* GROUPBY with SUM of the InvoiceDetails Line Totals */
SELECT Invoices.InvoiceID, SUM(InvoiceDetails.LineTotal) AS LineSum
FROM InvoiceDetails
INNER JOIN Invoices ON InvoiceDetails.InvoiceID = Invoices.InvoiceID
GROUP BY Invoices.InvoiceID;