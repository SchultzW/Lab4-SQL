/****** Select Statements for Lab 4  ******/
-- 1.  Select all of the customers who live in NY state
Select name, address, state 
	From customers 
	Where state = 'NY' 
	Order by name


-- 2.  Select all of the states that start with A 
Select StateName,StateCode 
	From States
	Where StateCode like 'A%'
	Order by StateName

-- 3.  Select all of the Products that have a price between 50 and 60 dollars
Select ProductCode, Description
	from Products
	where UnitPrice > 50 and UnitPrice<60
	order by ProductCode

-- 4.  Show me the value of the inventory that we have on hand for each product


select ProductCode,Description,UnitPrice,OnHandQuantity, (UnitPrice * OnHandQuantity) as Value
	from Products
-- 5.  Get me a list of the invoices in April, May or June
select InvoiceID, InvoiceDate, InvoiceTotal
	from Invoices
	where month(InvoiceDate)=4 or MONTH(InvoiceDate)=5 or month(InvoiceDate)=6
	order by InvoiceDate

-- 6.  Get me a list of the invoices in Jan or April
select InvoiceID,InvoiceDate,InvoiceTotal
	From Invoices
	where month(InvoiceDate)=1 or MONTH(InvoiceDate)=4
	order by InvoiceDate

-- 7.  Add the name of the state to the result set from #1
Select name, address, state, StateName 
	From customers, States
	Where state = 'NY' 
	Order by name

-- 8.  Add the customer's name to the result set from #5

-- 9.  Get me a list of all of the products that have been ordered.  Include the quantity ordered on each invoice.

-- 10. Get me a list of all of the invoices.  Include all of the items ordered on the invoice, including the detailed information about each product.
--     You'll have more than one record for each invoice.

-- 11. Add the customer's name and address to the results from 10.

-- 12. Add the name of the state to the results from 11.

-- 13. How many products do we have?

-- 14. What's the total value of all of the products sold?

-- 15. What's the total value of all of the inventory we have on hand?

-- 16. How many orders has each customer placed?  EXTRA CREDIT:  List all customers, even if they don't have any orders.