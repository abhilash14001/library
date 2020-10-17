<?php
include "../include/header.php";
if(isset($_GET['edit']))
{
$id = $_GET['edit'];
$fetch = $library->selectData($con, "*", "lmsbook where booktitle = '$id'");
$row = mysqli_fetch_assoc($fetch);
$bookcat = $row['bookcategory'];
if(isset($_POST['update']))
{

	extract($_POST);
	$bimage = array();
 $query = "isbn = '$isbn', booktitle = '$bname', bookedition = '$edition', bookpublisher = '$publisher', bookprice = '$price', bookauthor = '$author', racknumber = '$rnumber', bookdesc = '$bdesc', bookcategory = '$bookcat' where booktitle = '$id'";
	$update = $library->updateData($con, "lmsbook", $query);	
if($update)	
	$_SESSION['alert'] =$library->bootstrapAlert("success", "Success", "Book Details Updated Successfully");
 else
	$_SESSION['alert'] =$library->bootstrapAlert("warning", "Waring", "Book Details Not Updated"); 
if(!empty($_FILES['bimage']['name'])){
	if($_FILES['bimage'] !== ""){
$dir = "thumbnail_images/";
$countfiles = count($_FILES['bimage']['name']);
if($countfiles > 6 ){
for($i=0; $i< 6; $i++){

	$filename = $_FILES['bimage']['name'][$i];
	$filenames[] = $_FILES['bimage']['name'][$i];
	$targetFilePath = $dir . $filename;
	move_uploaded_file($_FILES['bimage']['tmp_name'][$i], $targetFilePath);	
	$pp = implode(", ", $filenames);
	if(!empty($pp)){
	$qurey = "bookimage = '$pp' where booktitle = '$bname'";
$library->updateData($con, "lmsbook", $qurey);
	}
}
}
else
{
	if(!empty($_FILES['bimage']['name'])){
	if($_FILES['bimage'] !== ""){
for($i=0; $i< $countfiles; $i++){

	$filename = $_FILES['bimage']['name'][$i];
	$filenames[] = $_FILES['bimage']['name'][$i];
	$targetFilePath = $dir . $filename;
	move_uploaded_file($_FILES['bimage']['tmp_name'][$i], $targetFilePath);	
	$pp = implode(", ", $filenames);
		if(!empty($pp)){
	$qurey = "bookimage = '$pp' where booktitle = '$bname'";
$library->updateData($con, "lmsbook", $qurey);
		}
}
	}
	}
}
}
}

$library->redirect("createbooks.php"); 
}


}
?>

<div class="card abhi">
<div class="card-header">
<a href= "createbooks.php" style = "width:30px" class = "btn btn-primary btn btn-sm pull-left fa fa-arrow-left"></a>	
<center><h3>Edit Books</h3></center>
</div>
<?php 
	if(isset($error)){
		echo $error;
		}
	?>
<div class="card-body card-block">
<form enctype = "multipart/form-data" action="#" method="post">
<div class="form-group"><label for="nf-email" class=" form-control-label">Book Name</label>
<input type="text" id="nf-email" name="bname" placeholder="Edit book Name" value="<?php echo $row['booktitle']; ?>" class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">Book Category</label>
<select name = "bookcat" class="form-control">
<option value = "<?php echo $bookcat; ?>">
<?php echo $bookcat; ?>
</option>
<?php	$query = $library->selectData($con, "bookcategory", "lmsbookcat");
while($rows = mysqli_fetch_assoc($query))
	{
$bookcategory = $rows['bookcategory'];
if($bookcat != $bookcategory) {
	echo '<option value = '.$bookcategory.' class="form-control">';

	echo $bookcategory;
		
	
	echo '</option>';

}	}?>
	</select>
	
	</div>



<div class="form-group"><label for="nf-password" class=" form-control-label">Author</label>
<input value="<?php echo $row['bookauthor']; ?>" type="text" id="nf-password" name="author" placeholder="Edit book author" class="form-control"></div>
<div class="form-group"><label for="nf-password" class=" form-control-label">Publisher</label>
<input value="<?php echo $row['bookpublisher']; ?>" type="text" id="nf-password" name="publisher" placeholder="Edit Book Publisher" class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">Edition</label>
<input value="<?php echo $row['bookedition']; ?>" type="text" id="nf-email" name="edition" placeholder="Edit book Edition"  class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">Rack Number</label>
<input value="<?php echo $row['racknumber']; ?>" type="text" id="nf-email" name="rnumber" placeholder="Edit Rack Number"  class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">ISBN</label>
<input value="<?php echo $row['ISBN']; ?>" type="text" id="nf-email" name="isbn" placeholder="Edit ISBN" class="form-control"></div>
<div class="form-group"><label for="nf-email" class=" form-control-label">Book Price</label>
	<input value="<?php echo $row['bookprice']; ?>" type="text" id="nf-email" name = "price" placeholder="Edit Price"  class="form-control"></div>

<div class="form-group"><label for="nf-email" class=" form-control-label">Select upto 6 Images Only</label>
	<input type="file" id="nf-email" name = "bimage[]" multiple class="form-control"></div>


<div class="form-group"><label for="nf-email" class=" form-control-label">Enter Book Description</label>
	<input type="text" value="<?php echo $row['bookdesc']; ?>" id="nf-email" name = "bdesc" class="form-control"></div>
</div>

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
