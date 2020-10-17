<?php
	
include "../include/header.php";
$i=1;
$fetchbook = $library->selectData($con, "DISTINCT booktitle, bookauthor, bookedition, ISBN, bookpublisher, bookprice, racknumber, bookcategory", "lmsbook where bookonloan = 'NO'");
?>
<title>Search Books</title>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
<div class="card-header">
<strong class="card-title">Search Books</strong>
</div>

<div class="card-body">
<div class = "btn-group">	

</div>

<?php
	
	if(isset($_SESSION['alert']))
	{
		echo $_SESSION['alert'];
		  unset($_SESSION['alert']); 
		 
	}
	?>


	
<table id="bootstrap-data-table-exports" class="table table-striped table-bordered">
<thead>
<tr>

<th>Sl No.</th>
 <th>Book ID</th>
<th>Book Name</th>
<th>Book Description</th>
<th>Category</th>
<th>Author</th>
<th>Publisher</th>
<th>Book Edition</th>
<th>No. of Books</th>
<th>ISBN</th>
<th>Price</th>
<th>Reserve Books</th>
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

<?php $q = mysqli_query($con, "select count(bookid) from lmsbook where booktitle = '$title' and bookonloan = 'NO'");
		$quan = mysqli_fetch_assoc($q);
		$quantity = $quan['count(bookid)'];
		?>

<td><?php

	echo $i++; ?></td>
<td>
<?php echo $no; ?>	</td>
<td id= "column3_search"><?php echo $row['booktitle']; ?></td>

<td><button type ="button" id = "<?php echo $no; ?>" class = "btn btn-primary btn btn-sm imagemodal" data-target="#imagemodall" data-toggle="modal">Click here </button></td>
<td><?php echo $row['bookcategory']; ?></td>
<td><?php echo $row['bookauthor']; ?></td>
<td><?php echo $row['bookpublisher']; ?></td>
<td><?php echo $row['bookedition']; ?></td>
<td><?php echo $quantity; ?></td>
<td><?php echo $row['ISBN']; ?></td>
<td><?php echo $row['bookprice']; ?></td>

<td style = "width: auto"><div class = "btn-group">
<a href = "reservebooks.php?bookid=<?php echo $no; ?>&bookname=<?php echo $booktitle; ?>" class = "btn btn-success btn btn-sm fa fa-pencil"></a>
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

</div>

<!-- ADD Books Category Modal -->

</div>

 <!--Image Modal -->
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

<?php 
include "../include/footer.php"; 
?>
