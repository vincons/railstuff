<?php
	$dbhost = 'localhost';
	$dbuser = 'sraghav_movies';
	$dbpass = '';

	$conn = mysqli_connect($dbhost, $dbuser, $dbpass);
	global $movie_name,$p1;
	$dbname = 'sraghav_movies';
	
	mysqli_select_db($conn, "sraghav_movies");
	#$movie_name=$_POST["search"];
	
	$movie_name="PAA";

	if (!$conn) 
	{
		printf("Can't connect to MySQL Server. Errorcode: %s\n", mysqli_connect_error());
		exit;
	} 

/*	
	if ($rs = $mysqli->query( "CALL movies('PAA')" ))
	{
		while($row = $rs->fetch_object())
		{
			debug($row);
		}
	}
	else
		echo "<h1>sp call bombed</h1>";
*/
	if ( $res=mysqli_query($conn, "SELECT * FROM information_schema.engines;") )
	{
		echo "<p> SP call went fine, lets fetch results.";
		while($row = mysqli_fetch_array( $res))
		{
			//echo ("Engine =>".$row[0]."<br>"); 
			$movie    = $row[0];
			$comment=$row[2];
	   		echo "<br>Engine :$movie  ----------------------- Comment : $comment " ;
		}
	} 
	else
	{
		echo "<h1> SP call bombed.</h1>";
		echo "error : ".mysqli_error($conn);
	
	}

	#$res=mysql_query($qry) or  die("Query failed with error: ".mysql_error()); 
	
	
?>
