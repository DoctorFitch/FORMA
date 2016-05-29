DELIMITER |
CREATE TRIGGER trig_client_gndr
BEFORE INSERT ON WM_CLIENT
FOR EACH ROW
BEGIN
	IF UPPER(NEW.ClGender) NOT IN ('M','F') THEN
		SET NEW.ClGender ='U';
	END IF;
END |
DELIMITER ;