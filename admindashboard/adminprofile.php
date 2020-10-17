<?php
	
	error_reporting($level=null);
include "include/header.php";
$admin = $_SESSION['admin'];
$fetch = $library->selectData($con, "name, password", "lmsaccount where userrole = 'admin' and name = '$admin'");
$fetche = $library->selectData($con, "college_details", "lmslogo where no = 1");
$admin = mysqli_fetch_assoc($fetch);
$ss = mysqli_fetch_assoc($fetche);
$school = $ss['college_details'];
$uname = $admin['name'];

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
if(!empty($password) && !empty($cpassword)){
$library->updateData($con, "lmsaccount", "password = '$password', name = '$name' where userrole= 'admin' and name = '$_SESSION[admin]'");
}
elseif(!empty($password) && !empty($cpassword) && !empty($name))
{
$library->updateData($con, "lmsaccount", "name = '$name' where userrole= 'admin' and name = '$_SESSION[admin]'");	
}
if(!empty($school)){
$library->updateData($con, "lmslogo", "college_details = '$school' where no = 1");
}

$library->redirect("index.php");
}
	
}

	if(isset($_POST['logo']))
	{
			extract($_POST);
			$dir = "logo/";
			$filename = $_FILES['logo']['name'];
			$targetFilePath = $dir . $filename;
			move_uploaded_file($_FILES['logo']['tmp_name'], $targetFilePath);	
			$fetch = $library->selectData($con, "image", "lmslogo where no =1");
$data = mysqli_fetch_assoc($fetch);
extract($data);	
unlink("logo/$image");
		$library->updateData($con, "lmslogo", "image = '$filename' where no =1");
		$success = $library->bootstrapAlert("success", "success", "Logo updated successfully");
		$library->redirect("index.php");
			
	}
	
	
?>

<div class="card abhi">
<div class="card-header">
<center><h3><strong>Admin</strong> Profile</h3></center>

</div>
<?php 
	if(isset($error)){
		echo $error;
		}
			if(isset($success)){
			echo $success;
			}
	?>
<div class="card-body card-block">
<form action="" method="post">
<div class="form-group"><label for="nf-email" class=" form-control-label">Username</label><input type="text" id="nf-email" name="name" placeholder="Update Username" value="<?php echo $uname; ?>" class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">College Name and Address</label><input type="text" id="nf-email" name="school" placeholder="Update College Name and address" value="<?php echo $school; ?>" class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Password</label><input type="password" id="nf-password" name="password" placeholder="Enter Password.." class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Confirm Password</label><input type="password" id="nf-password" name="cpassword"   placeholder="Enter Confirm Password.." class="form-control"></div>

</div>
<div class="card-footer">
<button type="submit" name = "submit" class="btn btn-primary btn-sm">
<i class="fa fa-dot-circle-o"></i> Submit
</button>
<button type="reset"  class="btn btn-danger btn-sm">
<i class="fa fa-ban"></i> Reset
<button type="reset" data-target = "#logo" data-toggle = "modal"  class="btn btn-success btn-sm pull-right">
<i class="fa fa-logo"></i> Change Logo
</form>

</div>
</button>
</div>
</div>

<!-- Change Logo -->
<div style = "margin-top:100px;" class="modal fade" id="logo" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="mediumModalLabel">Change Logo</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<form action="#" method="POST" enctype = "multipart/form-data">
<div class="modal-body">
<div class="form-group">
<label for="nf-email" class=" form-control-label">Change Logo</label>
<input type="file" name="logo" placeholder="Enter Book Category Name" class="form-control">
</div>

</div>
<div class="card-footer">
<button type="submit" name = "logo" class="btn btn-primary btn-sm">
<i class="fa fa-dot-circle-o"></i> Submit
</button>
</form> 

</div>
</div>
</div>
</div>




<?php include "include/footer.php"; ?>
