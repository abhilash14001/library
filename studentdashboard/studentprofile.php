<?php
include "include/header.php";

$fetch = $library->selectData($con, "name, password", "lmsaccount where userrole = 'student' and name = '$studentname'");
$admin = mysqli_fetch_assoc($fetch);
$uname = $admin['name'];
$pass = $admin['password'];
if(isset($_POST['submit'])){
	extract($_POST);
if($cpassword != $password)
{
	
$error ='<div class="sufee-alert alert with-close alert-danger alert-dismissible fade show">
<span class="badge badge-pill badge-danger">Failed</span>
Password Does Not Match!!!
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>';
	
}
else
{
$error ='<div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
<span class="badge badge-pill badge-danger">Success</span>
Updated Successfully
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>';
$password = md5($password);
if(!empty($password) && !empty($cpassword))
{
$library->updateData($con, "lmsaccount", "password = '$password' where userrole = 'student' and name = '$studentname'");	
}
 $library->redirect("index.php"); 
}
	
}

?>

<div class="card abhi">
<div class="card-header">
<center><h3><strong>Student</strong>&nbsp;Profile</h3></center>

</div>
<?php 
	if(isset($error)){
		echo $error;
		}
	?>
<div class="card-body card-block">
<form action="#" method="post">
<div class="form-group"><label for="nf-email" class=" form-control-label">Username</label><input type="text" id="nf-email" name="name" disabled value = <?php echo $studentname; ?> class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Password</label><input type="password" id="nf-password" name="password"  placeholder="Enter Password.." class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Confirm Password</label><input type="password" id="nf-password" name="cpassword"  placeholder="Enter Confirm Password.." class="form-control"></div>

</div>
<div class="card-footer">
<button type="submit" name = "submit" class="btn btn-primary btn-sm">
<i class="fa fa-dot-circle-o"></i> Submit
</button>
<button type="reset"  class="btn btn-danger btn-sm">
<i class="fa fa-ban"></i> Reset
</form>

</button>
</div>
</div>




<?php include "include/footer.php"; ?>
