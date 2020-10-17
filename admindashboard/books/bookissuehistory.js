
<?php
	
	include "../include/header.php";
	$i = 1;
	$fetchbook = $library->selectData($con, "*", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus = 'ACTIVE' and userrole = 'student' and bookonloan = 'YES'");
	if(isset($_POST['issue']))
	{
		extract($_POST);
		
		
		 $library->updateData($con, "lmsbookloan", "loanstatus = '$status', lcactualreturndate='$currentdate', fine = '$fine' where loanrunno = '$loanno'");
		 $library->updateData($con, "lmsbook", "bookonloan = 'NO' where bookid = '$bookid'");
		
		$bcsuccess = $library->bootstrapAlert("success", "Success", "Book Status Has been updated Successfully");
		$library->redirect("bookissuehistory.php");
}
		
	
	

	?>
	<div class="content mt-3">
	<div class="animated fadeIn">
	<div class="row">

	<div class="col-md-12">
	<div class="card">
	<div class="card-header">
	<strong class="card-title"><h2>Books Issued / Books On Loan</h2></strong>
	</div>
	<form method = "POST" action = "deletebooks.php">
	<div class="card-body">
		<div id = "show"></div>
	<?php if(isset($bcsuccess))
	{
		echo $bcsuccess; 
		
	}
	elseif(isset($_SESSION['alert']))
	{
		echo $_SESSION['alert'];
		unset($_SESSION['alert']);
		}
		
		
	?>
<br>
	<table id="bootstrap-data-table-export" class="scrollable-table table table-striped table-bordered table-responsive overflow-x: auto;" >
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
	<th>Fine</th>
	<th>Set Status</th>
	
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

		echo $i++; ?>
		
		</td>
		
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
<td><?php echo $fine; ?></td>
<td><a href = "setbookstatus.php?loanno=<?php echo $loanrunno;?>&name=<?php echo $name;?>&book=<?php echo $booktitle?>&bookid=<?php echo $bookid;?>" class= "btn btn-primary fa fa-pencil"></a></td>
	
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

