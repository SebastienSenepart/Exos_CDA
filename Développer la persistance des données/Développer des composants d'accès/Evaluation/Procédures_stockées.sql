

--9

DELIMITER |

CREATE PROCEDURE Date_der_commande(In nomclient varchar(40))

BEGIN
   SELECT MAX(OrderDate) AS Date_derniere_commande FROM orders
   JOIN customers ON customers.CustomerID = orders.CustomerID
   WHERE CompanyName = nomclient;
END |

DELIMITER;

--10

DELIMITER |

CREATE PROCEDURE Delai_moy_livr()
BEGIN
  SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS Delai_moyen_livraison_en_jours FROM orders;
END |

DELIMITER;
