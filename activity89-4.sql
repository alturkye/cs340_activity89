/* invoice header query */
SELECT
    Invoices.InvoiceID,
    Customers.CustomerName,
    Invoices.InvoiceDate,
    Invoices.TermsCodeID,
    TermsCode.Description AS TermsDescription,
    Invoices.TotalDue
FROM Invoices
INNER JOIN Customers ON Invoices.CustomerID = Customers.CustomerID
INNER JOIN TermsCode ON Invoices.TermsCodeID = TermsCode.TermsCodeID
ORDER BY Invoices.InvoiceDate DESC;