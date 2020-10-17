<?php
	
include "../include/header.php";
$i = 1;


?>
<div class="content mt-3">
<div class="animated fadeIn">
<div class="row">

<div class="col-md-12">
<div class="card">
	<div class="card-header">
<strong class="card-title">Books On Loan History</strong>
</div>

<div class="card-body">
<div id="show"></div>
<?php 	
$fetchbook = $library->selectData($con, "*", "lmsbookloan INNER JOIN lmsbook on lmsbookloan.bookid = lmsbook.bookid INNER JOIN lmsbookcat on lmsbook.bookcategory = lmsbookcat.bookcategory where userid = '$studentid' and loanstatus = 'ACTIVE' and bookonloan = 'YES'");
 ?>


	
<table id="bootstrap-data-table-export" class="table table-striped table-bordered">
<thead>

<tr>
<th>Sl No.</th>
 <th>Book ID</th>
<th>Book Name</th>
<th>Category</th>
<th>Author</th>
<th>Publisher</th>
<th>Book Edition</th>
<th>Book Price</th>
<th>Return Date</th>
</tr>

</thead>
<tbody>
<?php
 while($row = mysqli_fetch_assoc($fetchbook))
{
 extract($row);
$loanenddates = explode("00:00:00", $loanenddate); 
?>
<tr>

	
<td><?php

	echo $i++; ?></td>
	
<td><?php echo getBookID($booktitle); ?></td>
<td><?php echo $booktitle; ?></td>
<td><?php echo $bookcategory;  ?></td>
<td><?php echo $bookauthor;  ?></td>
<td><?php  echo  $bookpublisher; ?></td>
<td><?php echo $bookedition; ?></td>
<td><?php echo $bookprice; ?></td>
<td style = "color:<?php  if($loanenddate < $currentdate) {  ?>red <?php  }  ?>">
<?php echo $loanenddates[0]; ?></td>
</tr>
<?php  }  ?>
</tbody>
</table>
</div>
</div>
</div>
</div>

</div>
</div><!-- .animated -->
<!-- .content -->

<?php 
include "../include/footer.php"; 
?>
