DELIMITER $$


DROP PROCEDURE IF EXISTS `movies1`$$

CREATE PROCEDURE `movies1`(in in_p1 varchar(45))

BEGIN 

	Declare stmt varchar(4000);
	
	#Set @stmt := 'select idEntShow from entshow where name= ?';
	Set @stmt := 'select idEntShow from entshow';
	
	Prepare stmt1 FROM @stmt;
	Execute stmt1;

	#Drop prepare stmt1;

END$$

DELIMITER ;

