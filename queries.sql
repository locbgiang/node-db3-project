-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select product.productname, category.CategoryName
from product
join category
on product.CategoryId = category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [order].id, shipper.companyname
from [order]
join shipper
on [order].shipvia = shipper.id
where [order].orderdate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select product.productname, orderdetail.quantity
from orderdetail
join product
on orderdetail.productid = product.id
where orderdetail.orderid = 10251
order by product.productname

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [order].id as "Order Id", customer.companyname as "Company Name", employee.lastname as "Employee Name"
from [order]
join customer
join employee
where [order].customerid = customer.id and [order].EmployeeId = employee.id
