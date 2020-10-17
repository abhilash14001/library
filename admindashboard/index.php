<?php

include "include/header.php";
$bookno = 0;
$bookfetch = $library->selectData($con, "bookid", "lmsbook where bookonloan = 'NO'");
$bookfetchonloan = $library->selectData($con, "count(loanstatus)", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus = 'ACTIVE' and userrole = 'student' and bookonloan = 'YES'");
$bookhistory = $library->selectData($con, "count(loanstatus)", "lmsbookloan inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid inner join lmsborrower on lmsaccount.userid = lmsborrower.userid inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where loanstatus != 'ACTIVE' and loanstatus != 'RESERVED' and userrole = 'student'");
$bookreserved = $library->selectData($con, "count(loanstatus)", "lmsbook inner join lmsbookloan on lmsbook.bookid = lmsbookloan.bookid inner join lmsaccount on lmsbookloan.userid = lmsaccount.userid where bookonloan = 'RESERVED' and loanstatus = 'RESERVED'");
$onloan = mysqli_fetch_assoc($bookfetchonloan);
$bookhis = mysqli_fetch_assoc($bookhistory);
$bookres = mysqli_fetch_assoc($bookreserved);
$booktotalhis = $library->selectData($con, "count(bookid)", "lmsbook");
$his = mysqli_fetch_array($booktotalhis);



while($row = mysqli_fetch_array($bookfetch))
{
	$bookno++;
}
$student = 0;
$studentfetch = $library->selectData($con, "*", "lmsaccount where userrole = 'student'");
while($row = mysqli_fetch_array($studentfetch))
{
	$student++;
}

?>


<div class="content mt-3">

<div class="col-sm-6 col-lg-3">
<div class="card text-white bg-flat-color-1">
<div class="card-body pb-0">
<div class="dropdown float-right">
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">

</div>
</div>

<h4 class="mb-0">
<span class="count"><?php echo $bookno; ?></span>
<a href ="<?php echo ADMIN_DASHBOARD_URL;?>books/createbooks.php"> 
</h4>
<p class="text-light">Add Books</p>

<div class="chart-wrapper px-0" style="height:70px;" height="70">
<canvas id="widgetChart1"></canvas>
</div>
</a>

</div>

</div>
</div>
<!--/.col-->

<div class="col-sm-6 col-lg-3">
<div class="card text-white bg-flat-color-2">
<div class="card-body pb-0">
<div class="dropdown float-right">
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">

</div>
</div>
<h4 class="mb-0">
<span class="count"><?php echo $student; ?></span>
<a href ="<?php echo ADMIN_DASHBOARD_URL;?>students/addstudents.php"> 
</h4>
<p class="text-light">Add Students</p>

<div class="chart-wrapper px-0" style="height:70px;" height="70">
<canvas id="widgetChart2"></canvas>
</div>
</a>

</div>
</div>
</div>
<!--/.col-->

  <div class="col-sm-6 col-lg-3">
<div class="card text-white bg-flat-color-4">
<div class="card-body pb-0">
<div class="dropdown float-right">

<div class="dropdown-menu" aria-labelledby="dropdownMenuButton4">

</div>
</div>
<h4 class="mb-0">
<span class="count"><?php echo $onloan['count(loanstatus)']; ?></span>
<a href ="<?php echo ADMIN_DASHBOARD_URL;?>books/bookissuehistory.php"> 
</h4>
<p class="text-light">Books On Loan</p>

<div class="chart-wrapper px-3" style="height:70px;" height="70">
<canvas id="widgetChart4"></canvas>
</div>
</a>
</div>
</div>
</div>
 <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-3">
                    <div class="card-body pb-0">
                        <div class="dropdown float-right">
                   
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
                               
                            </div>
                        </div>
                        <h4 class="mb-0">
                            <span class="count"><?php echo $bookhis['count(loanstatus)']; ?></span>
                        </h4>
						<a href ="<?php echo ADMIN_DASHBOARD_URL;?>books/bookhistory.php"> 
                        <p class="text-light">Books Returned History</p>

                    </div>

                    <div class="chart-wrapper px-0" style="height:70px;"  height="70">
                        <canvas id="widgetChart3"></canvas>
                    </div>
					</a>
                </div>
            </div>
			
</div>
			
<div class="col-sm-6 col-lg-3" style="margin-left:10px">
<div class="card text-white bg-flat-color-1">
<div class="card-body pb-0">
<h4 class="mb-0">
<span class="count"><?php echo $bookres['count(loanstatus)']; ?></span>
<a href ="<?php echo ADMIN_DASHBOARD_URL;?>books/reservedbooks.php"> 
</h4>
<p class="text-light">Books Reserved</p>

<div class="chart-wrapper px-0" style="height:70px;" height="70">
<canvas id="widgetChart4"></canvas>
</div>
</a>
</div>
</div>
</div>
<div class="col-sm-6 col-lg-3">
<div class="card text-white bg-flat-color-2">
<div class="card-body pb-0">
<div class="dropdown float-right">
<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
<div class="dropdown-menu-content">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</div>
<h4 class="mb-0">
<span class="count"><?php echo $his['count(bookid)']; ?></span>
<a href ="<?php echo ADMIN_DASHBOARD_URL;?>books/booktotalhistory.php"> 
</h4>
<p class="text-light">Total Books</p>

<div class="chart-wrapper px-0" style="height:70px;" height="70">
<canvas id="widgetChart4"></canvas>
</div>
</a>

</div>
</div>
</div>

</div> <!-- .content -->
</div><!-- /#right-panel -->

<!-- Right Panel -->
<?php 
include "include/footer.php"; 
?>
