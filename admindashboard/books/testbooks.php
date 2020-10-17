<?php
include "../include/header.php";
	$unique = rand(1000000, 9999999);

	$query = "'$unique', '1233131', 'Abhi', 'Goutham', 'Vinayak', '150', 'nanu', '12566', 'NO', 'Science', '1', 'NOW()', '10'";
	$library->DataInsert($con, "lmsbook", $query);
	$library->redirect("testbooks.php");
	
	