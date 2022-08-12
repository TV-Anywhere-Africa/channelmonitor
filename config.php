<?php
	
	$db = new mysqli("localhost", "tva", "tvAnywhere1!");

	if ($db->connect_error){

		die ("Connection failed: " . $db->connect_error);
		
	}

	mysqli_select_db($db, "channels") or die ("Sorry! Unable to connect to database.");

?>