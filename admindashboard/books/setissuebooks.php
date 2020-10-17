
<?php	include "../include/header.php";
echo '<title>Set Status of Book</title>';
 if(isset($_GET['name']) && isset($_GET['userid']))
{ 
	$name = $_GET['name'];
	$userid =$_GET['userid'];
	if(isset($_POST['update']))
	{
		extract($_POST);
	
	if($loanend >= $loanstart){
		
	 $adminlib->issueBook($con, "NULL, '$bookid', '$userid', '$date', '$adminid', '$loanstart', '$loanend', 'ACTIVE', 'Not Updated', '0'");
	$library->updateData($con, "lmsbook", "bookonloan = 'YES' where bookid = '$bookid'"); 
	$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Book Issued to $name successfully");
	$library->redirect("issuebooks.php"); 
	}
	else
	{
		$_SESSION['alert'] = $library->bootstrapAlert("danger", "alert", "Loan end date should be greater than or equal to loan start date");
		$library->redirect("issuebooks.php"); 
	}
	}
}

 else
{
  header("Location:reservedbooks.php");  
} 

$fetchbook = $library->selectData($con, "DISTINCT booktitle, bookauthor, bookedition, ISBN, bookpublisher, bookprice, racknumber, bookcategory", "lmsbook where bookonloan = 'NO'");
?>

<div class="card" style = "width:50%; margin-left:280px; margin-top:60px">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center">Issue Book</h3>
                                        </div>
                                        <hr>
                                              <form method = "POST" action="#"> 
                                            <div class="form-group">
                                                <label for="cc-payment" class="control-label mb-1">Username</label>
                                                <input value = "<?php echo $_GET['name']; ?>" disabled type="text" class="form-control" aria-required="true" aria-invalid="false" value="100.00">
                                            </div>
                                                <div class="form-group has-success">
                                                    <label for="cc-name" class="control-label mb-1">Book Name</label>
													<select class="form-control" name = "bookid">
													<?php
													while($book = mysqli_fetch_assoc($fetchbook)) { 
														extract($book);
														$sql = $library->selectData($con, "bookid", "lmsbook where booktitle = '$booktitle' and bookonloan = 'NO'");
														while($rows = mysqli_fetch_assoc($sql))
															{
														$bookid = $rows['bookid'];
														
														}
												echo '
                                                    <option value = '.$bookid.'>
														'.$booktitle.'
													</option>';
													 } ?> 
													</select>
                                                    <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cc-number" class="control-label mb-1">Loan Start Date</label>
                                                    	
													<input type="date" id="nf-password" name="loanstart" value ="<?php echo date("Y-m-d"); ?>" placeholder="Enter loan start Date" class="form-control">
													<label for="nf-password" class=" form-control-label">Loan End Date</label><input type="date" id="nf-password" name="loanend" placeholder="Enter loan end date" class="form-control">
													     
														

                                                    <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                                </div>
                                                <div class="column">
                                                   <div class = "form-group">
												  
                                                    <button type="submit" name = "update" class="btn btn-lg btn-info btn-block">
													Update Status
                                                                                                                                                                       <span id="payment-button-sending" style="display:none;">Sending…</span>
                                                    </button>
                                                </div>
												</div>
											  </form>
												   
                                        
                                    </div>
                                </div>

                            </div>
                        </div> 
	
	


<?php include "../include/footer.php"; ?>
