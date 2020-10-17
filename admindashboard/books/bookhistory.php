
<?php
	
	include "../include/header.php";
	$i = 1;
	$fetchbook = $library->selectData($con, "*", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus != 'ACTIVE' and loanstatus != 'RESERVED' and userrole = 'student'");
	if(isset($_POST['issue']))
	{
		extract($_POST);
		
		if($fine > 0)
		{
		 $library->updateData($con, "lmsbookloan", "loanstatus = 'INACTIVE', lcactualreturndate='$date', fine = '$fine' where loanrunno = '$loanno'");
		 $library->updateData($con, "lmsbook", "bookonloan = 'YES' where bookid = '$bookid'");
		}
		elseif(empty($fine) || $fine < 0 || $fine == 0)
		{
	$library->updateData($con, "lmsbookloan", "loanstatus = 'INACTIVE', lcactualreturndate='$date', where loanrunno = '$loanno'");
	$library->updateData($con, "lmsbook", "bookonloan = 'YES' where bookid = '$bookid'");
		}
}
		
	
	

	?>
	<div class="content mt-3">
	<div class="animated fadeIn">
	<div class="row">

	<div class="col-md-12">
	<div class="card">
	<div class="card-header">
	<strong class="card-title"><h2>Books Returned</h2></strong>
	</div>
	<form method = "POST" action = "deletebooks.php">
	<div class="card-body">
		<div id = "show"></div>
	<?php if(isset($bcsuccess))
	{
		echo $bcsuccess; 
		
	}
		elseif(isset($bsuccess))
		{
		echo $bsuccess;
		
		}
		
	?>
<br>
	<table width  ="100%" id="bootstrap-data-table-export" class="scrollable-table table table-striped table-bordered table-responsive overflow-x: auto;" >
	<thead>
	<tr>
	<th><input type = "checkbox" id = "allcheck"></th>
	<th>Sl No.</th>
	<th>Student Name</th>
	<th>Borrower Unique ID</th>
	<th>Primary Contact Number</th>
	<th>Secondary Contact Number</th>
	<th>Student Roll No</th>
	<th>Book Taken</th>
	<th>Book ID</th>
	<th>Book Taken Date</th>
	<th>Book Loan Last Date</th>
	<th>Book Return Date</th>
	<th>Book Return Status</th>
	<th>Fine Status</th>
	
	</tr>
	</thead>
			
	<tbody>
		<?php
			while($row = mysqli_fetch_assoc($fetchbook)):
			extract($row);
			$loanstartdatee = explode("00:00:00", $loanstartdate);
			$loanenddatee = explode("00:00:00", $loanenddate);
			
			?>
	<tr>
	<td>
	<input name = "checkbox[]" value = "<?php echo $no;?>" type = "checkbox" id = "allchecke" ></td>
	</form>
	<td><?php

		echo $i++; ?></td>
	<td><?php echo $name; ?></td>		
	<td><?php echo $uniqueid; ?></td>
	<td><?php echo $primarycontact; ?></td>
	<td><?php echo $secondarycontact; ?></td>
	<td><?php echo $rollno; ?></td>
	<td><?php echo $booktitle; ?></td>
	<td><?php echo $bookid; ?></td>
	<td><?php echo $loanstartdatee[0]; ?></td>
	
	<td>
	<font color = "<?php if($loanenddate < $currentdate) {  ?>red <?php } ?>">	
	<?php echo $loanenddatee[0]; ?></td>
	<td><?php echo $lcactualreturndate; ?></td>
	<td><?php echo strtoupper($loanstatus); ?></td>
<td><?php echo $fine; ?></td>
	
	</tr>
	<?php endwhile; 
	
		
		?>


	</tbody>
	</table>
	</div>
	</div>
	</div>


	</div>
	</div><!-- .animated -->
	</div><!-- .content -->
	
	<!-- Set Status Fine and Return Status MODEL -->
	<div style = "margin-top:100px;" class="modal fade" id="setstatus" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
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
	<label for="nf-email" class=" form-control-label">Select Bookname</label>
	<select name = "bid">
	<?php
	$fetchbook = $library->selectData($con, "*", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus = 'ACTIVE' and userrole = 'student'");
		while($books = mysqli_fetch_assoc($fetchbook)) : 
		extract($books); 
			
		?>
		
		<option value ="<?php echo $bookid; ?>">
	<?php 
		 echo $booktitle;  
	
		 ?>
<input type = "hidden" value = "<?php echo $bookid; ?>" name = "bookid">	
	<?php endwhile; ?>
	</option>
	</select>
	 <input type ="hidden" name = "loan" value="<?php echo $loanrunno; ?>" />	 
		 
	</div>
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Username</label>
	<select name = "userid">
	<?php
	$fetchbook = $library->selectData($con, "*", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus = 'ACTIVE' and userrole = 'student'");
		while($borrower = mysqli_fetch_assoc($fetchbook)) : 
		extract($borrower);
			?>
	<option value ="<?php echo $userid; ?>"><?php echo $name; ?>  	
	<?php endwhile; ?>
	</select>
	</div>
	<div class="form-group">
		
	<label for="nf-password" class=" form-control-label">Enter Fine Amount</label><input type="number" id="nf-password" name="fine" value = "0.00" placeholder="Enter fine amount" class="form-control">
	<label for="nf-password" class=" form-control-label">Set Status i.e. Returned and payed fine
		</label>
	<select name = "status">
	<option value = "returned and payed fine">
	Returned and Payed fine</option>
	<option value = "returned and not payed fine">
	Returned and not payed fine</option>
	</select>
	<input type = "hidden" name = "loanno" value = "<?php echo $loanrunno; ?>">
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
		$('.fa-trash').show();
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

