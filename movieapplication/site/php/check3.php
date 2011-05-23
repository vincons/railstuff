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

	if ( $res=mysqli_query($conn, "call movies1('PAA');") )
	{
		echo "<p> SP call went fine, lets fetch results.";
		$n=1;

		while($row = mysqli_fetch_array( $res))
		{
			
			//echo ++$n."th row received...";
			//echo (" =>".$row[0]."<br>"); 
			$movieId    = $row[0];
			//$comment=$row[2];
	   		echo "<br> Movie ID :$movieId " ;
		}
	} 
	else
	{
		echo "<h1> SP call bombed.</h1>";
		echo "error : ".mysqli_error($conn);
	
	}
	

?>
