<?php
include "../include/config.php";
if(isset($_GET['name'])	&& isset($_GET['userid']))
{
	$library->deleteData($con, "lmsborrower", "userid = '$_GET[userid]'");
	$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Borrower $_GET[name] deleted successfully");
	$library->header("../books/issuebooks.php");
}
?>