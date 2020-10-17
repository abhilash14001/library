<?php
include "../include/header.php";
if(isset($_GET['edit']))
{
$id = $_GET['edit'];
$fetch = $library->selectData($con, "*", "lmsaccount where userid= '$id'");
$row = mysqli_fetch_assoc($fetch);
if(isset($_POST['update']))
{

	extract($_POST);	
	$passw = md5($pass);	
	if($cpass == $pass)
	{
	    if(!empty($pass) && !empty($cpass)){
	$update = $library->updateData($con, "lmsaccount", "name = '$sname' where userid = '$id'");	
	    }
	    elseif(!$empty($sname) && !empty($pass) && !empty($cpass))
	    {
	      	$update = $library->updateData($con, "lmsaccount", "name = '$sname', password = '$passw' where userid = '$id'");	 
	    }
	$_SESSION['alert'] =$library->bootstrapAlert("success", "Success", "Student Details Updated Successfully");
$library->header("addstudents.php");		
	}
	else
	{
$error =$library->bootstrapAlert("warning", "Warning", "Password Does Not Match");
$library->redirect("editstudent.php?edit=$id");		
}

}
}
?>

<div class="card abhi">
<div class="card-header">
<center><h3>Edit Student</h3></center>
</div>
<?php 
	if(isset($error)){
		echo $error;
		}
	?>
<div class="card-body card-block">
<form action="#" method="post">
<div class="form-group"><label for="nf-email" class=" form-control-label">Student Name</label>
<input type="text" id="nf-email" name="sname" placeholder="Edit Student Name" value="<?php echo $row['name']; ?>" class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Password</label>
<input type="password" id="nf-password" name="pass" placeholder="Enter Password" class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Confirm Password</label>
<input type="password"  id="nf-password" name="cpass" placeholder="Confirm Password" class="form-control"></div>
<div class="card-footer">
<button type="submit" name = "update" class="btn btn-primary btn-sm">
<i class="fa fa-dot-circle-o"></i> Submit
</button>
<button type="reset"  class="btn btn-danger btn-sm">
<i class="fa fa-ban"></i> Reset
</form>

</button>
</div>
</div>




<?php include "../include/footer.php"; ?>
