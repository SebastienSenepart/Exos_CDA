CREATE TRIGGER verif_pays AFTER INSERT ON `order details`
  FOR EACH ROW
  BEGIN
     DECLARE country1 varchar(15);
     DECLARE country2 varchar(15);
     SET country1 = NEW.suppliers.Country;
     SET country2 = NEW.customers.Country;
     IF country1 != country2 THEN
         SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Le client et le fournisseur doivent résider dans le même pays !';
     END IF;
  END;
