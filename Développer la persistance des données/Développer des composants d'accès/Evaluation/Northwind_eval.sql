--1 

SELECT CompanyName AS Société, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Téléphone 
FROM customers
WHERE Country = 'France';

--2 

SELECT ProductName AS Produit, UnitPrice AS Prix 
FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids';

--3 

SELECT suppliers.CompanyName AS Fournisseur, COUNT(products.ProductID) AS Nbre_produits  
FROM suppliers
JOIN products ON products.supplierID = suppliers.supplierID
WHERE Country = 'France'
GROUP BY suppliers.CompanyName
ORDER BY COUNT(products.ProductID) DESC;

--4 

SELECT customers.CompanyName AS Client, COUNT(orders.OrderID) AS Nbre_commandes 
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE customers.Country = 'France'
GROUP BY customers.CompanyName
HAVING COUNT(orders.OrderID) > 10;



--5 

SELECT CompanyName AS Nom_client, SUM(UnitPrice*Quantity) AS CA, Country AS Pays 
FROM customers 
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
GROUP BY CompanyName, Country
HAVING SUM(UnitPrice*Quantity) > 30000;

--6 

SELECT customers.Country AS Pays 
FROM customers 
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
JOIN products ON  products.ProductID = `order details`.ProductID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids'
ORDER BY customers.Country ASC;


--7  

SELECT SUM(UnitPrice*Quantity) AS Montant_Ventes_97 
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR (OrderDate) = 1997;

--8  

SELECT MONTH(OrderDate) AS Mois_97, SUM(UnitPrice*Quantity) AS Montant_Ventes_97 FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate);

--9 

SELECT MAX(OrderDate) AS Date_derniere_commande FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE CompanyName = 'Du monde entier';

--10  

SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS Delai_moyen_livraison_en_jours FROM orders;

