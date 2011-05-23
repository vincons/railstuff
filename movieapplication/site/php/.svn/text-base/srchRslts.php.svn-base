<html>
<LINK href="new layouts_files/h2.css" type=text/css rel=stylesheet>
<body>
		<?php 
			$database="movies";
			$logging=false;  // set this to true when you want to see more descriptive logging of the program
			$link = mysql_connect('127.0.0.1', 'raghav', 'raghav');
			if (!$link) {
				die('Could not connect: ' . mysql_error());
			}
			if($logging) echo 'Connected successfully to mysql...';
			@mysql_select_db($database) or die( "Unable to select database ".$database);
			if($logging)echo 'Selected DB too... launching query';
			$list = mysql_query("select name from entShow" );
			
			if(!$list)
			{
				$message  = 'Invalid query: ' . mysql_error() . "\n";
				//$message .= 'Whole query: ' . $query;
				echo ("Nothing found in the EntShow table :( ");
				die($message);
			}
			
			//echo $list;
			echo "<table border=1>";
			
			while ($row = mysql_fetch_assoc($list))
			{
				echo "<tr><td>".$row['name']."</td></tr>";
			}
			echo "</table>";	
			
			mysql_free_result($list);
			mysql_close($link);
			
		?>
		

	</body>
	</html>