<?php error_reporting($level = null);
	
include "../include/header.php";
$i = 1;

/* ADd Book category code */
if(isset($_POST['bcsubmit']))
{
	extract($_POST);
	$unique = rand(10000000, 99999999);
	$bcname = addslashes($bcname);
	$bcdesc = addslashes($bcdesc);
	$library->DataInsert($con, "lmsbookcat", "'$unique', '$bcname', '$bcdesc'");
	$bcsuccess = $library->bootstrapAlert("success", "Success", "Category Added Successfully");
$library->redirect("createbooks.php");
	
	}

/* ADd Book code */
if(isset($_POST['bsubmit']))
{
	extract($_POST);
	
	
	if(isset($adminname))
	{
	$bcquery = $library->selectData($con, "userid", "lmsaccount where name = '$adminname'");
	$row = mysqli_fetch_array($bcquery);
	$userid = $row['userid'];
	



for($i=0; $i < $quantity; $i++)
{
	$unique = rand(1000000, 9999999);
	$bisbn = addslashes($bisbn);
	$bname = addslashes($bname);
	$bedition = addslashes($bedition);
	$bpublisher = addslashes($bpublisher);
	$bauthor = addslashes($bauthor);
	$bdesc = addslashes($bdesc);
$query = "'$unique', '$bisbn', '$bname', '$bedition', '$bpublisher', '$bprice', '$bauthor', '$brnumber', 'NO', '$bc', '$userid', '$date', 'NOT UPDATED', '$bdesc'";	
	$cc = $library->DataInsert($con, "lmsbook", $query);
	if($cc==true)
	{
	$bsuccess = $library->bootstrapAlert("success", "Success", "Book Added Successfully");	
	}
	else
	{
	$bsuccess .= $library->bootstrapAlert("warning", "Warning", "Book Not Added Successfully");		
	}
}
	
	
	}
$dir = "thumbnail_images/";
$countfiles = count($_FILES['bimage']['name']);
if($countfiles > 6 ){
for($i=0; $i< 6; $i++){


	$bname = addslashes($bname);
	
	$filename = $_FILES['bimage']['name'][$i];
	$filenames[] = $_FILES['bimage']['name'][$i];
	$targetFilePath = $dir . $filename;
	move_uploaded_file($_FILES['bimage']['tmp_name'][$i], $targetFilePath);	
	$pp = implode(", ", $filenames);
	$qurey = "bookimage = '$pp' where booktitle = '$bname'";
$library->updateData($con, "lmsbook", $qurey);

}
}
else
{
for($i=0; $i< $countfiles; $i++){

	$filename = $_FILES['bimage']['name'][$i];
	$filenames[] = $_FILES['bimage']['name'][$i];
	$targetFilePath = $dir . $filename;
	move_uploaded_file($_FILES['bimage']['tmp_name'][$i], $targetFilePath);	
	$pp = implode(", ", $filenames);
		$bname = addslashes($bname);
	$qurey = "bookimage = '$pp' where booktitle = '$bname'";
$library->updateData($con, "lmsbook", $qurey);
}
}

	
	
 //$library->redirect("createbooks.php"); 
}

?>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
<div class="card-header">
<strong class="card-title">Add Books Table</strong>
</div>

<div class="card-body">
<div class = "btn-group">	
<button data-toggle="modal" data-target="#addcategorybooks" type="button" class = "btn btn-primary pull-left btn btn-sm fa fa-plus">Add Book Category</button>
&nbsp;<button type = "button" data-toggle="modal" data-target="#addbooks" class = "btn btn-primary btn btn-sm fa fa-plus">Add Book</button>
&nbsp;
<button type = "button" name = "checked" class = "btn btn-danger btn btn-sm fa fa-trash"id = "fa-trash">&nbsp;Del</button>	
&nbsp;<button type = "button" name = "barcode" class = "btn btn-primary btn btn-sm fa fa-barcode" id = "fa-barcode">&nbsp;Generate Barcode</button>	
</div>
<br>
<br>
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
	
$fetchbook = $library->selectData($con, "DISTINCT booktitle, bookimage, bookdesc, bookauthor, bookedition, ISBN, bookpublisher, bookprice, racknumber, bookcategory", "lmsbook where bookonloan = 'NO'");
 
	
	?>

	
<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
<thead>
<tr>
<th><input type = "checkbox" id = "allcheck"></th>
<th>Sl No.</th>
 <th>Book ID</th>
<th>Book Name</th>
<th>Book Description</th>
<th>Category</th>
<th>Author</th>
<th>Publisher</th>
<th>Book Edition</th>
<th>Rack Number</th>
<th>No. of Books</th>
<th>ISBN</th>
<th>Price</th>
<th>Action</th>
</tr>
</thead>
<tbody>


<?php
		while($row = mysqli_fetch_assoc($fetchbook)){
		extract($row);
		$title = $row['booktitle'];
		$isbn = $row['ISBN'];
	 	$sql = $library->selectData($con, "bookid", "lmsbook where booktitle = '$title' and bookonloan = 'NO'");
		while($rows = mysqli_fetch_assoc($sql))
			{
		$no = $rows['bookid'];
		
		}
		
		
?>

<tr>

<td align="center">

<input name = "checkbox[]" bimage = "<?php echo $row['bookimage']; ?>" value = "<?php echo $booktitle;?>" type = "checkbox" id = "allchecks"></td>



<?php $q = mysqli_query($con, "select count(bookid) from lmsbook where booktitle = '$title' and bookonloan = 'NO'");
		$quan = mysqli_fetch_assoc($q);
		$quantity = $quan['count(bookid)'];
		?>

<td><?php

	echo $i++; ?></td>
<td>
<?php echo $no; ?>	</td>
<td>

	<a style = "color:red" href = "bookdetails.php?bookname=<?php echo $booktitle; ?>"><?php echo $row['booktitle']; ?></a>

	
	</td>
	<td>
	<u><button type ="button" id = "<?php echo $no; ?>" class = "btn btn-primary btn btn-sm imagemodal" data-target="#imagemodall" data-toggle="modal">Click here </button></u></td>
<td><?php echo $row['bookcategory']; ?></td>
<td><?php echo $row['bookauthor']; ?></td>
<td><?php echo $row['bookpublisher']; ?></td>
<td><?php echo $row['bookedition']; ?></td>
<td><?php echo $row['racknumber']; ?></td>
<td><?php echo $quantity; ?></td>
<td><?php echo $row['ISBN']; ?></td>
<td><?php echo $row['bookprice']; ?></td>

<td style = "width: auto"><div class = "btn-group">
<a href = "barcode2/index.php?barcode=<?php echo $booktitle; ?>" class = "btn btn-primary btn btn-sm fa fa-barcode"></a>
<a href = "editbooks.php?edit=<?php echo $booktitle; ?>" class = "btn btn-success btn btn-sm fa fa-pencil"></a>
<button type = "button" bimage =  "<?php echo $row['bookimage']; ?>" id ="<?php echo $booktitle; ?>" class = "remove btn btn-danger btn btn-sm fa fa-window-close"></button>

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
<form action="#" method="POST" enctype = "multipart/form-data">
<div class="form-group"><label for="nf-email" class=" form-control-label">Book Name / Title</label><input type="text" id="nf-email" name="bname" placeholder="Enter Book Name" class="form-control" required></div>
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
<div class="form-group">
<label for="nf-password" class=" form-control-label">
Upload Thumbnail Image</label><input type="file" name="bimage[]" multiple class="form-control">
</div>
<div class="form-group">
<label for="nf-password" class=" form-control-label">
Book Description</label><input type="text" name="bdesc" placeholder="Enter book description"  class="form-control">
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





   <!-- Modal -->
<div class="modal fade" id="imagemodall" tabindex = "-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Book Description</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body imagebody">
	  
       
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
