<?php
include "../include/config.php";
if(isset($_POST['id']))
{
foreach($_POST['id'] as $check)
{


$delete = mysqli_query($con, "delete from lmsbook where booktitle= '$check'");

}
if($delete == 1)
{
	$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Deleted");
}
else
{
	$_SESSION['alert'] = $library->bootstrapAlert("warning", "Warning", "Not Deleted");
}
}
elseif(isset($_POST['ids']))
{
$id = $_POST['ids'];
$image = $_POST['image'];
$images = explode(", ", $image);
foreach($images as $img){
$filename = "thumbnail_images/$img";

unlink($filename);
}
$delete = mysqli_query($con, "delete from lmsbook where booktitle= '$id'");

if($delete == 1 ) 
	$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Deleted");
else
	$_SESSION['alert'] = $library->bootstrapAlert("warning", "Warning", "Not Deleted");
}


?>