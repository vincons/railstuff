<?php
$dbhost = 'localhost';
$dbuser = 'priyanshu';
$dbpass = '9838816839';

$conn = mysql_connect($dbhost, $dbuser, $dbpass);
global $movie_name;
$dbname = 'mydb';
mysql_select_db($dbname);
$movie_name=$_POST["search"];
$q=@mysql_query("select * from entShow where name='$movie_name'");
while($row = mysql_fetch_row( $q))
		{
		
	$movie    = $row[1];
$year=$row[3];
   
  


    echo "name :$movie <br>" .
 "year :$year <br>" ;


 } ?>
