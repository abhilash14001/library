<?php
if(isset($_GET['studentid']))
{
include "../include/config.php";
$library->deleteData($con, "lmsaccount", "userid = '$_GET[studentid]'");
$library->header("addstudents.php");
$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Deleted Successfully");
}
	
?>