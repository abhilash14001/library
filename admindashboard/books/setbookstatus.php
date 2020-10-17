
<?php	include "../include/header.php";
 if(isset($_GET['loanno']) && isset($_GET['name']) && isset($_GET['book']) && isset($_GET['bookid']))
{ 
$query = "lmsbookloan inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid where loanrunno = '$_GET[loanno]' and name = '$_GET[name]' and booktitle = '$_GET[book]'";
$fetch = $library->selectData($con, "*", $query);
$setbook = mysqli_fetch_assoc($fetch);
extract($setbook);
 }

 else
{
  header("Location:createbooks.php");  
} 
if(isset($_POST['update']))
 {
 extract($_POST);
 
	$library->updateData($con, "lmsbookloan", "loanstatus = '$status', lcactualreturndate= '$currentdate', fine = '$fine' where loanrunno = '$_GET[loanno]'");
	$library->updateData($con, "lmsbook", "bookonloan = 'NO' where bookid = '$_GET[bookid]'");
	$_SESSION['alert'] = $library->bootstrapAlert("success", "Success", "Fine Status Updated Successfully");
	$library->redirect("bookissuehistory.php");
}

?>
<div class="card" style = "width:50%; margin-left:280px; margin-top:60px">
                            <div class="card-body">
                                <!-- Credit Card -->
                                <div id="pay-invoice">
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3 class="text-center">Set Status</h3>
                                        </div>
                                        <hr>
                                              <form method = "POST" action="#"> 
                                            <div class="form-group">
                                                <label for="cc-payment" class="control-label mb-1">Username</label>
                                                <input value = "<?php echo $name; ?>" disabled type="text" class="form-control" aria-required="true" aria-invalid="false" value="100.00">
                                            </div>
                                                <div class="form-group has-success">
                                                    <label for="cc-name" class="control-label mb-1">Book Name Borrowed</label>
                                                    <input type="text" disabled value ="<?php echo $_GET['book']; ?>" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the name on card" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                                    <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cc-number" class="control-label mb-1">Fine Amount</label>
                                                    <input value = "0.00" name="fine" type="tel" class="form-control cc-number identified visa" data-val="true" data-val-required="Please enter the card number" data-val-cc-number="Please enter a valid card number" autocomplete="cc-number">
													     <label for="cc-exp" class="control-label mb-1">Select Status</label>
														<select class="form-control" name = "status">
														<div class = "form-control">
															<option value = "returned and payed fine">
															Returned and Payed fine</option>
															<option value = "returned and not payed fine">
															Returned and not payed fine</option>
															</select>
														</div>

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
<!-- 
<div class="card abhi">
<div class="card-header">
<a href= "createbooks.php" style = "width:30px" class = "btn btn-primary btn btn-sm pull-left fa fa-arrow-left"></a>	
<center><h3>Set Status of the book</h3></center>
</div>
<?php 
	if(isset($error)){
		echo $error;
		}
	?>
	
	
	<h5 class="modal-title" id="mediumModalLabel">Set status</h5>
		
	<div class="modal-body">
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Bookname</label>
	<input value = "<?php echo $booktitle; ?>" type = "text" disabled name = "bid">
	
<input type = "hidden" value = "<?php echo $bookid; ?>" name = "bookid">	
	
	 <input type ="hidden" name = "loan" value="<?php echo $loanrunno; ?>" />	 
		 
	</div>
	<div class="form-group">
	<label for="nf-email" class=" form-control-label">Select Username</label>
	<select name = "userid">
	<?php
	$fetchbook = $library->selectData($con, "*", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus = 'ACTIVE' and userrole = 'student' and bookonloan = 'YES'");
		while($borrower = mysqli_fetch_assoc($fetchbook)) : 
		extract($borrower);
		$username = $borrower['name'];
		if($name == $username) {
			?>
		<option value ="<?php echo $userid; ?>"><?php echo $name; } ?>  	
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
	

	</div>
	</div> -->
	
	


<?php include "../include/footer.php"; ?>
