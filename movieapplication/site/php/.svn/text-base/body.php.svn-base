<html>
<LINK href="h2.css" type=text/css rel=stylesheet>
<body>
		<?php 
				
			$database="sraghav_movies";
			$link = mysql_connect('localhost', 'sraghav_movies', 'movies');
			if (!$link) {
				die('Could not connect: ' . mysql_error());
			}
			echo 'Connected successfully to <h1>mysql</h1>...';
			@mysql_select_db($database) or die( "Unable to select database ".$database);
			
			mysql_close($link);
			
		?>
			<form>
				<h2>Search Parameters</h2><br>
				<table border=0 >
				<tr>
					<td>Filter 1 -> <input type="text" name="actor" /> </td>
					<td> <SELECT class=inputbox name=select> 
							<OPTION value="" selected>Select</OPTION> 
							<OPTION value=Actor>Actor</OPTION> 
							<OPTION value=Actress>Actress</OPTION> 
							<OPTION value=Director>Director</OPTION> 
							<OPTION value=Lyricist>Lyricist</OPTION> 
							<OPTION value=Composer>Composer</OPTION>
						</SELECT>
					</td>
					<td>
						<INPUT id=radioFilter1 type=radio value=radio name=radio> NOT
					</td>
				</tr>
				<tr>
					<td>Filter 2 -> <input type="text" name="actor" /> </td>
					<td> <SELECT class=inputbox name=select> 
							<OPTION value="" selected>Select</OPTION> 
							<OPTION value=Actor>Actor</OPTION> 
							<OPTION value=Actress>Actress</OPTION> 
							<OPTION value=Director>Director</OPTION> 
							<OPTION value=Lyricist>Lyricist</OPTION> 
							<OPTION value=Composer>Composer</OPTION>
						</SELECT>
					</td>
					<td>
						<INPUT id=radioFilter2 type=radio value=radio name=radio> NOT
					</td>
				</tr>
				<tr>
					<td>Filter 3 -> <input type="text" name="actor" /> </td>
					<td> <SELECT class=inputbox name=select> 
							<OPTION value="" selected>Select</OPTION> 
							<OPTION value=Actor>Actor</OPTION> 
							<OPTION value=Actress>Actress</OPTION> 
							<OPTION value=Director>Director</OPTION> 
							<OPTION value=Lyricist>Lyricist</OPTION> 
							<OPTION value=Composer>Composer</OPTION>
						</SELECT>
					</td>
					<td>
						<INPUT id=radioFilter3 type=radio value=radio name=radio> NOT

					</td>
				</tr>
				<tr>
					<td>Filter 4 -> <input type="text" name="actor" /> </td>
					<td> <SELECT class=inputbox name=select> 
							<OPTION value="" selected>Select</OPTION> 
							<OPTION value=Actor>Actor</OPTION> 
							<OPTION value=Actress>Actress</OPTION> 
							<OPTION value=Director>Director</OPTION> 
							<OPTION value=Lyricist>Lyricist</OPTION> 
							<OPTION value=Composer>Composer</OPTION>
						</SELECT>
					</td>
					<td>
						<INPUT id=radioFilter4 type=radio value=radio name=radio> NOT

					</td>
				</tr>

				</table>
			</form>

	</body>
	</html>