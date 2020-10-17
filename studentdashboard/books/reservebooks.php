<?php
if(isset($_GET['bookid']) && isset($_GET['bookname']))
{
include "../include/config.php";
$query = $library->selectData($con, "*", "lmsbook where bookid = '$_GET[bookid]'");
 
  
 /* check whether he has reserved the book with the same name */
 $check = $library->selectData($con, "*", "lmsbookloan inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where booktitle = '$_GET[bookname]' and loanstatus = 'RESERVED' and userid = '$studentid' and bookonloan = 'RESERVED'");
 if(mysqli_num_rows($check) >0 ){
$_SESSION['alert'] = $library->bootstrapAlert("danger", "OOPS", "OOPS! You have already reserved the book with same name");	 

	 }
	 else
	 {
 $library->updateData($con, "lmsbook", "bookonloan = 'RESERVED' where bookid = '$_GET[bookid]'");
 $query1 = "NULL, '$_GET[bookid]', '$studentid', '$date', '$studentid', '0', '0', 'RESERVED', '0', '0'";
 
  $studentlib->reservebooks($con, $query1); 
 $_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "You have reserved the Book");

	 }
	  $library->redirect("searchbooks.php");
}


?>