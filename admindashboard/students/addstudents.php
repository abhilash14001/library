
<?php
include "../include/header.php";
$i = 1;


/* ADd Book code */

if(isset($_POST['ssubmit']))
{
extract($_POST);
if($pass != $cpass)
{
	$success = '<div class="sufee-alert alert with-close alert-warning alert-dismissible fade show">
<center><span class="badge badge-pill badge-danger">Warning</span>
Password Does Not Match</center>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>';

}
elseif(!mysqli_num_rows($library->selectData($con, "*", "lmsaccount where name = '$sname'"))>0 and $pass == $cpass)
	{
	$pass = md5($pass);
	$library->DataInsert($con, "lmsaccount", "NULL, '$sname', '$pass', '$date', '$adminname', '$type'");
	$success = $library->bootstrapAlert("success", "Success", "User Added Successfully");;
	}
	else
	{
	$success = $library->bootstrapAlert("warning", "Warning", "User Already Exists");;	
}
$library->redirect("addstudents.php");
}
	


?>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
<div class="card-header">
<strong class="card-title">Add User</strong>
</div>
<div class="card-body">
<button type = "button" data-toggle="modal" data-target="#addstudent" class = "btn btn-primary btn btn-sm fa fa-plus">Add User</button>
<br>

<?php if(isset($success))
{
	echo $success; 
}
	 elseif(isset($_SESSION['alert']))
	 {
	echo $_SESSION['alert'];
	unset($_SESSION['alert']);
	 }
	
$fetchstudent= $library->selectData($con, "*", "lmsaccount where userrole='student'");
 
	
	?>

<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
<thead>
<tr>
<th>Sl No.</th>
<th>Student ID</th>
<th>Name</th>
<th>User Created Date</th>
<th>Action</th>
</tr>
</thead>
<tbody>
	<?php
		while($row = mysqli_fetch_assoc($fetchstudent)):
		$no = $row['userid'];
		?>
<tr>
<td><?php

	echo $i++; ?></td>
<td><?php echo $row['userid']; ?></td>		
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['createddate']; ?></td>
<td><div class = "btn-group">
<a href = "editstudent.php?edit=<?php echo $no; ?>" class = "btn btn-success btn btn-md fa fa-pencil"></a>
<a href="deletestudent.php?studentid=<?php echo $no;?>" class = "btn btn-danger btn btn-md fa fa-window-close"></a>

</div>
</td>
</tr>
<?php endwhile; ?>


</tbody>
</table>
</div>
</div>
</div>


</div>
</div><!-- .animated -->
</div><!-- .content -->
<!-- ADD Books Modal -->

<div style = "margin-top:50px;" class="modal fade" id="addstudent" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="mediumModalLabel">Add User </h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form action="#" method="post">
<div class="form-group"><label for="nf-email" class=" form-control-label">Enter Student Name</label><input type="text" id="nf-email" name="sname" placeholder="Enter Student Name" class="form-control"></div>
<div class="form-group">
<label for="nf-email" class=" form-control-label">Enter User Type</label>
<select name="type" class="form-control">
<option value = "admin">Admin
	</option>
	<option value = "student">Student
	</option>
</select>
	</div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Enter Password</label><input type="password" id="nf-email" name="pass" placeholder="Enter Password" class="form-control"></div>
	<div class="form-group"><label for="nf-password" class=" form-control-label">Confirm Password</label><input type="password" id="nf-email" name="cpass" placeholder="Confirm Password" class="form-control">
</div>

<div class="card-footer">
<button type="submit" name = "ssubmit" class="btn btn-primary btn-sm">
<i class="fa fa-dot-circle-o"></i> Submit
</button>
<button type="reset"  class="btn btn-danger btn-sm">
<i class="fa fa-ban"></i> Reset
</form> 
</div>
</div>
</div>
</div>
</div>
</div>



<?php 
include "../include/footer.php"; 
?>
