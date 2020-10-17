<?php
if(isset($_GET['id']))
{
include "../include/config.php";
$id = $_GET['id'];
$delete = $library->deleteData($con, "lmsbook", "bookid = '$id'");
$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Deleted");

$library->redirect("createbooks.php");
}	

?>