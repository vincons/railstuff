DELIMITER $$


DROP PROCEDURE IF EXISTS `movies1`$$

CREATE DEFINER=`raghav`@`localhost` PROCEDURE `movies1`(in_p1 varchar(45), 
														out_p2 varchar(45)
														)

BEGIN 

Declare i decimal(5,1);
	
Declare stmt varchar(4000);
	
	SET @i := 1;
	
	Set @stmt := 'select idEntShow from entshow where name= ?'
INTO out_p2;
	
Prepare stmt1 FROM @stmt;
	Execute stmt1 using @in_p1;
select out_p2;
	Drop prepare stmt1;

END$$

DELIMITER ;

