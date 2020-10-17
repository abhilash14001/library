	<?php
	include "../include/header.php";
	$i = 1;

	/* ADd Borrower code */
	if(isset($_POST['isubmit']))
	{
		extract($_POST);
		
		$unique = uniqid();
		
		$adminlib->createBorrower($con, "'$userid', '$unique', 'student', '$pcontact', '$scontact', '$rollno'");
	$bcsuccess = $library->bootstrapAlert("success", "Success", "Borrower Created Successfully");
	$library->redirect("issuebooks.php");
		
	}
	/* public function selectData($con, $select, $table){ */
	$fetchborrower = $library->selectData($con, "*", "lmsaccount inner join lmsborrower on lmsaccount.userid = lmsborrower.userid where lmsborrower.userid = lmsaccount.userid");
	$fetchborrower1 = $library->selectData($con, "*", "lmsaccount inner join lmsborrower on lmsaccount.userid = lmsborrower.userid where lmsborrower.userid = lmsaccount.userid");
	$fetch = $library->selectData($con, "userid, name", "lmsaccount where userrole  = 'student'");

	$fetchbook = $library->selectData($con, "DISTINCT booktitle, bookauthor, bookedition, ISBN, bookpublisher, bookprice, racknumber, bookcategory", "lmsbook where bookonloan = 'NO'");
	/* ADd Book code */

	

	?>
	<div class="content mt-3">
	<div class="animated fadeIn">
	<div class="row">

	<div class="col-md-12">
	<div class="card">
	<div class="card-header">
	<strong class="card-title">Issue Books / Add Borrower Table</strong>
	</div>
	<div class="card-body">
	<div class = "btn-group">

	<button data-toggle="modal" data-target="#addborrower" type="button" class = "btn btn-primary pull-left btn btn-sm fa fa-plus">&nbsp;Add Borrower</button>
		&nbsp;
	&nbsp;
	<button type = "submit" name= "checked" class = "btn btn-danger btn btn-sm fa fa-trash">&nbsp;Del</button>
	</div>
	<div id = "show"></div>
	<?php if(isset($bcsuccess))
	{
		echo $bcsuccess; 
		
	}
		elseif(isset($bsuccess))
		{
		echo $bsuccess;
		
		}
	elseif(isset($_SESSION['alert']))
	{
		echo $_SESSION['alert'];
		  unset($_SESSION['alert']); 
		 
	}
		
	?>
	<br>
	<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
	<thead>
	<tr>
	
	<th>Sl No.</th>
	<th>Student Name</th>
	<th>Borrower Unique ID</th>
	<th>Primary Contact Number</th>
	<th>Secondary Contact Number</th>
	<th>Student Roll No</th>
	<th>Issue Book</th>
	<th>Delete Borrower</th>
	</tr>
	</thead>
	<tbody>
		<?php
			while($row = mysqli_fetch_assoc($fetchborrower)):
			extract($row);
			
			?>
	<tr>
		<td><?php

		echo $i++; ?></td>
	<td><?php echo $name; ?></td>		
	<td><?php echo $uniqueid; ?></td>
	<td><?php echo $primarycontact; ?></td>
	<td><?php echo $secondarycontact; ?></td>
	<td><?php echo $rollno . "&nbsp;"; ?></td>
	<td style = "width: auto">
	<a href ="setissuebooks.php?name=<?php echo $name;?>&userid=<?php echo $userid; ?>" class = "btn btn-primary btn btn-sm fa fa-pencil"></a>
	</td>
	<td style = "width: auto"><a href ="../students/deleteborrower.php?name=<?php echo $name;?>&userid=<?php echo $userid; ?>" class = "btn btn-danger btn btn-sm">Delete</a>
	
	</td>
	</tr>
	<?php endwhile; 
		mysqli_free_result($fetchborrower);
		?>


	</tbody>
	</table>
	</div>
	</div>
	</div>


	</div>
	</div><!-- .animated -->
	</div><!-- .content -->

	<!-- ADD Borrower Modal -->

	<div style = "margin-top:100px;" class="modal fade" id="addborrower" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md" role="document">
	<div class="modal-content">
	<div class="modal-header">
	<h5 class="modal-title" id="mediumModalLabel">Add Borrower</h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span>
	</button>
	</div>
	<form action="#" method="POST">
	<div class="modal-body">
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Username</label>
	<select name="userid">
	<?php while($row = mysqli_fetch_assoc($fetch)) : 
		extract($row);
		?>	
	<option value = "<?php echo $userid; ?>">
	<?php echo $name; ?>	
	</option>
	<?php endwhile; ?>
	</select>	
		
	</div>
	<div class="form-group">
	<label for="nf-password" class=" form-control-label">Enter Primary Contact</label><input type="number" id="nf-password" name="pcontact" placeholder="Enter primary contact" class="form-control">
	<label for="nf-password" class=" form-control-label">Enter Secondary Contact</label><input type="number" id="nf-password" name="scontact" placeholder="Enter secondary contact" class="form-control">
	<label for="nf-password" class=" form-control-label">Enter Roll No</label><input type="text" id="nf-password" name="rollno" placeholder="Enter Roll No" class="form-control">
	</div>
	</div>
	<div class="card-footer">
	<button type="submit" name = "isubmit" class="btn btn-primary btn-sm">
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

	<!-- Issue Book MODEL -->
	<div style = "margin-top:100px;" class="modal fade" id="issuebook" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md" role="document">
	<div class="modal-content">
	<div class="modal-header">
	<h5 class="modal-title" id="mediumModalLabel">Issue Books</h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span>
	</button>
	</div>
	<form action="#" method="POST">
	<div class="modal-body">
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Bookname</label>
	<select name = "bid">
	<?php
		while($book = mysqli_fetch_assoc($fetchbook)) : 
		extract($book); 
		$sql = $library->selectData($con, "bookid", "lmsbook where booktitle = '$booktitle' and bookonloan = 'NO'");
			while($rows = mysqli_fetch_assoc($sql))
				{
			$bookid = $rows['bookid'];
			
			}
		
		?>
	<option value ="<?php echo $bookid; ?>"><?php echo $booktitle; ?>  	
	<?php endwhile; ?>
	</select>
	</div>
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Username</label>
	<input type = "text" name = "userid" id="userid">
	
	
	</div>
	<div class="form-group">
		
	<label for="nf-password" class=" form-control-label">Enter Loan Start Date</label><input type="date" id="nf-password" name="loanstart" value ="<?php echo date("Y-m-d"); ?>" placeholder="Enter primary contact" class="form-control">
	<label for="nf-password" class=" form-control-label">Enter Loan End Date</label><input type="date" id="nf-password" name="loanend" placeholder="Enter secondary contact" class="form-control">
	<input type = "hidden" name = "name" value = "<?php echo $name; ?>">
	</div>
	</div>
	<div class="card-footer">
	<button type="submit" name = "issue" class="btn btn-primary btn-sm">
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

	<script>
	$('.fa-trash').hide();
	$(document).ready(function(){
	$('#allcheck').click(function(){
		$('.fa-trash').modal('show');
		$('input[type="checkbox"]').prop('checked', this.checked);
	});	
		$('#allchecke').click(function(){
		$('.fa-trash').show();
		
	});
	});

	</script>

	<?php 
	include "../include/footer.php"; 
	?>
