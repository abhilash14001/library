<?php
include "../include/header.php";
$i = 1;
if(isset($_POST['reserve']))
{
	extract($_POST);
	
	$library->updateData($con, "lmsbook", "bookonloan = 'YES' where bookid = '$bookid'");
	$library->updateData($con, "lmsbookloan", "loanstatus = 'ACTIVE', loanenddate = '$loanend', loanstartdate = '$loanstart' where bookid = '$bookid' and userid ='$userid' and loanstatus = 'RESERVED'");
	$success = $library->bootstrapAlert("success", "Success", "Successfully reserved book to $name");
	$library->redirect("reservedbooks.php");
}
 

?>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
<div class="card-header">
<strong class="card-title">Books Reserved</strong>
</div>

<div class="card-body">
<div class = "btn-group">	
</div>
<div id="show"></div>
<?php if(isset($_SESSION['alert']))
{
	echo $_SESSION['alert']; 
	unset($_SESSION['alert']);
	
}

	
$fetchbooks = $library->selectData($con, "*", "lmsbook inner join lmsbookloan on lmsbook.bookid = lmsbookloan.bookid inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid where bookonloan = 'RESERVED' and loanstatus = 'RESERVED'");
$fetchbooks1 = $library->selectData($con, "*", "lmsbook inner join lmsbookloan on lmsbook.bookid = lmsbookloan.bookid inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid where bookonloan = 'RESERVED' and loanstatus = 'RESERVED'");
 
	
	?>


	
<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
<thead>
<tr>
<th>Sl No.</th>
 <th>Book ID</th>
<th>Book Name</th>
<th>User / Student Name</th>
<th>Category</th>
<th>Author</th>
<th>Publisher</th>
<th>Book Edition</th>
<th>ISBN</th>
<th>Price</th>
<th>Action</th>
</tr>
</thead>
<tbody>


<?php
while($rows = mysqli_fetch_assoc($fetchbooks)){
extract($rows);

	?>		

<tr>

<td><?php

	echo $i++; ?></td>

<td><?php echo $bookid; ?></td>
<td><?php echo $booktitle; ?></td>
<td><?php echo $name; ?></td>
<td><?php echo $bookcategory; ?></td>
<td><?php echo $bookauthor; ?></td>
<td><?php echo $bookpublisher; ?></td>
<td><?php echo $bookedition; ?></td>
<td><?php echo $ISBN; ?></td>
<td><?php echo $bookprice; ?></td>

<td style = "width: auto"><div class = "btn-group">
<a href= "setreservebooks.php?loanno=<?php echo $loanrunno;?>&name=<?php echo $name;?>&book=<?php echo $booktitle?>&bookid=<?php echo $bookid;?>" class = "btn btn-success btn btn-sm fa fa-pencil"></a>


</div>
</td>
</tr>
		<?php   }  ?>



</tbody>
</table>
</div>
</div>
</div>


</div>
</div><!-- .animated -->
</div><!-- .content -->


<!-- REserve Books -->




<?php 
include "../include/footer.php"; 
?>
