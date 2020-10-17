<?php
include "include/header.php";
$fetchbook = $library->selectData($con, "count(bookonloan)", "lmsbookloan INNER JOIN lmsbook on lmsbookloan.bookid = lmsbook.bookid INNER JOIN lmsbookcat on lmsbook.bookcategory = lmsbookcat.bookcategory where userid = '$studentid' and loanstatus = 'ACTIVE' and bookonloan = 'YES'");
$countbookonloan = mysqli_fetch_assoc($fetchbook);
$fetchbookreserved = $library->selectData($con, "count(bookonloan)", "lmsbookloan INNER JOIN lmsbook on lmsbookloan.bookid = lmsbook.bookid INNER JOIN lmsbookcat on lmsbook.bookcategory = lmsbookcat.bookcategory where userid = '$studentid' and loanstatus = 'RESERVED' and bookonloan = 'RESERVED'");
$countbookreserved = mysqli_fetch_assoc($fetchbookreserved);

$fetchbookreturned = $library->selectData($con, "count(loanstatus)", "lmsbookloan INNER JOIN lmsbook on lmsbookloan.bookid = lmsbook.bookid INNER JOIN lmsbookcat on lmsbook.bookcategory = lmsbookcat.bookcategory where userid = '$studentid' and loanstatus != 'RESERVED' and loanstatus != 'ACTIVE'");
$countbookreturned = mysqli_fetch_assoc($fetchbookreturned);
?>


        <div class="content mt-3">

                    <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <div class="dropdown float-right">
                      
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                <div class="dropdown-menu-content">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </div>
                        <h4 class="mb-0">
                            <span class="count"><?php echo $countbookonloan['count(bookonloan)']; ?></span>
							<a href ="<?php echo STUDENT_DASHBOARD_URL;?>books/booksonloan.php"> 
                        </h4>
                        <p class="text-light">Books on Loan</p>

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
                                <div class="dropdown-menu-content">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </div>
                        <h4 class="mb-0">
                            <span class="count"><?php echo $countbookreserved['count(bookonloan)']; ?></span>
							<a href ="<?php echo STUDENT_DASHBOARD_URL;?>books/booksreserved.php"> 
                        </h4>
                        <p class="text-light">Books Reserved</p>

                        <div class="chart-wrapper px-0" style="height:70px;" height="70">
                            <canvas id="widgetChart2"></canvas>
                        </div>
						</a>

                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-3">
                    <div class="card-body pb-0">
                        <div class="dropdown float-right">
                   
                        </div>
                        <h4 class="mb-0">
                            <span class="count"><?php echo $countbookreturned['count(loanstatus)']; ?></span>
							<a href ="<?php echo STUDENT_DASHBOARD_URL;?>books/booksreturned.php"> 
                        </h4>
                        <p class="text-light">Books Returned Till Date</p>

                    </div>

                    <div class="chart-wrapper px-0" style="height:70px;" height="70">
                        <canvas id="widgetChart3"></canvas>
                    </div>
					</a>
                </div>
            </div>
            <!--/.col-->

<!--<div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-flat-color-4">
                    <div class="card-body pb-0">
                        <div class="dropdown float-right">
                         
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton4">
                                <div class="dropdown-menu-content">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </div>
                        <h4 class="mb-0">
                            <span class="count"><?php echo $countbookreturned['count(loanstatus)']; ?></span>
                            	<a href ="<?php echo STUDENT_DASHBOARD_URL;?>books/booksreturned.php"> 
                        </h4>
                        <p class="text-light">Books Returned Till Date</p>

                        <div class="chart-wrapper px-3" style="height:70px;" height="70">
                            <canvas id="widgetChart4"></canvas>
                        </div>

                    </div>
                </div>
            </div> 
        
-->
           


        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->
<?php 
	include "include/footer.php"; 
	?>
