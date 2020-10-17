<?php
	
include "../include/header.php";
$i = 1;
if($_GET['bookname'])
{
	$bookname = $_GET['bookname'];
	
}
else{
	header("location:createbooks.php");
}
?>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
<div class="card-header">
<strong class="card-title">View Books Table</strong>
</div>

<div class="card-body">
<div class = "btn-group">	
<button type = "button" name = "checked" class = "btn btn-danger btn btn-sm fa fa-trash"id = "fa-trash">&nbsp;Del</button>	
&nbsp;
</div>
<div id="show"></div>
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
	
$fetchbook = $library->selectData($con, "*", "lmsbook where bookonloan = 'NO' and booktitle = '$bookname'");
 
	
	?>


	
<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
<thead>
<tr>
<th><input type = "checkbox" id = "allcheck"></th>
<th>Sl No.</th>
 <th>Book ID</th>
<th>Book Name</th>
<th>Category</th>
<th>Author</th>
<th>Publisher</th>
<th>Book Edition</th>
<th>Rack Number</th>

<th>ISBN</th>
<th>Price</th>
<th>Action</th>
</tr>
</thead>
<tbody>


<?php
		while($row = mysqli_fetch_assoc($fetchbook)){
		extract($row);
		$no = $row['bookid'];
		$title = $row['booktitle'];
		$isbn = $row['ISBN'];
	 	$sql = $library->selectData($con, "bookid", "lmsbook where booktitle = '$title'");
	
		
		
?>

<tr>

<td align="center">

<input name = "checkbox[]"  value = "<?php echo $no;?>" type = "checkbox" id = "allchecks"></td>



<?php $q = mysqli_query($con, "select count(bookid) from lmsbook where booktitle = '$title' and bookonloan = 'NO'");
		$quan = mysqli_fetch_assoc($q);
		$quantity = $quan['count(bookid)'];
		?>

<td><?php

	echo $i++; ?></td>
<td>
<?php echo $no; ?>	</td>
<td><?php echo $row['booktitle']; ?></td>
<td><?php echo $row['bookcategory']; ?></td>
<td><?php echo $row['bookauthor']; ?></td>
<td><?php echo $row['bookpublisher']; ?></td>
<td><?php echo $row['bookedition']; ?></td>
<td><?php echo $row['racknumber']; ?></td>
<td><?php echo $row['ISBN']; ?></td>
<td><?php echo $row['bookprice']; ?></td>

<td style = "width: auto"><div class = "btn-group">
<a href = "deletesepbooks.php?id=<?php echo $no; ?>" class = "btn btn-danger btn btn-sm fa fa-window-close"></a>

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
<!-- ADD Books Modal -->
</form>
<div style = "margin-top:50px;" class="modal fade" id="addbooks" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="mediumModalLabel">Add Book </h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form action="#" method="POST">
<div class="form-group"><label for="nf-email" class=" form-control-label">Book Name / Title</label><input type="text" id="nf-email" name="bname" placeholder="Enter Book Name" class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Select Category</label>
<select name = "bc" class="form-control">
<?php	$query = $library->selectData($con, "bookcategory", "lmsbookcat");
		while($row = mysqli_fetch_assoc($query))
	{
$bookcategory = $row['bookcategory'];
	echo '<option value = '.$bookcategory.' class="form-control">';

	echo $bookcategory;
	
	
	echo '</option>';
	}?>
	</select>
	
	</div>

<div class="form-group"><label for="nf-password" class=" form-control-label">Author</label><input type="text" id="nf-password" required name="bauthor" placeholder="Enter Book Author" class="form-control"></div>
<div class="form-group">
<label for="nf-password" class=" form-control-label">Publisher</label><input type="text" name="bpublisher" required placeholder="Enter Book Publisher Name" class="form-control">
</div>

<div class="form-group">
<label for="nf-password" class=" form-control-label">
Edition</label><input type="text" name="bedition" required  placeholder="Enter Book Edition" class="form-control">
</div>

<div class="form-group">
<label for="nf-password" class=" form-control-label">
Rack Number</label><input type="text" name="brnumber" required  placeholder="Enter Rack Number where book is placed" class="form-control">
</div>

<div class="form-group">
<label for="nf-password" class=" form-control-label">
ISBN</label><input type="text" name="bisbn" required placeholder="Enter ISBN number of Book" class="form-control">
</div>

<div class="form-group">
<label for="nf-password" class=" form-control-label">
Price</label><input type="text" name="bprice" required  placeholder="Enter price of the book" class="form-control">
</div>
<div class="form-group">
<label for="nf-password" class=" form-control-label">
No. of books/Book Quantity</label><input type="text" required  name="quantity" placeholder="Enter No. of books" class="form-control">
</div>

<div class="card-footer">

<button type="submit" name = "bsubmit" class="btn btn-primary btn-sm">
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

<!-- ADD Books Category Modal -->

<div style = "margin-top:100px;" class="modal fade" id="addcategorybooks" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="mediumModalLabel">Add Books Category</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<form action="#" method="POST">
<div class="modal-body">
<div class="form-group">
<label for="nf-email" class=" form-control-label">Book Category</label><input type="text" name="bcname" placeholder="Enter Book Category Name" class="form-control">
</div>
<div class="form-group">
<label for="nf-password" class=" form-control-label">Book Category Description</label><input type="text" id="nf-password" name="bcdesc" placeholder="Enter Description" class="form-control">
</div>

</div>
<div class="card-footer">
<button type="submit" name = "bcsubmit" class="btn btn-primary btn-sm">
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
$('#fa-barcode').hide();
$(document).ready(function(){

$('#allcheck').click(function(){
	$('input[type="checkbox"]').prop('checked', this.checked);
	});	
	$('input[type="checkbox"]').click(function(){
	$('.fa-trash').show();
	$('#fa-barcode').show()
	});	

	
});

</script>


<?php 
include "../include/footer.php"; 
?>
