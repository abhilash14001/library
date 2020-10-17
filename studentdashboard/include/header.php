<?php
include $_SERVER['DOCUMENT_ROOT']. "/install/library/studentdashboard/include/config.php";
 if(!isset($_SESSION['student']))
{
	$library->header("../index.php");
} 
$fetch = $library->selectData($con, "college_details, image", "lmslogo where no =1");
$data = mysqli_fetch_assoc($fetch);
extract($data);
?>


<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Login</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="<?php echo STUDENT_DASHBOARD_URL; ?>books.ico">
 <link rel="shortcut icon" href="<?php echo ADMIN_DASHBOARD_URL;?>logo/<?php echo $image; ?>">


    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>vendors/jqvmap/dist/jqvmap.min.css">

 <link rel="stylesheet" type="text/css" href="<?php echo ADMIN_DASHBOARD_URL;?>datatable/datatable.css"> 

    <link rel="stylesheet" href="<?php echo STUDENT_DASHBOARD_URL;?>assets/css/style.css">

       <link href='<?php echo STUDENT_DASHBOARD_URL;?>vendors/custom.css' rel='stylesheet' type='text/css'>
<script src="<?php echo ADMIN_DASHBOARD_URL;?>assets/js/ajax.js"></script>
<style>
.dataTables_filter {
	float: right !important;
}

	.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

.row::after {
  content: "";
  clear: both;
  display: table;
}

.footer {
  position: fixed;
  left: 	0;
  bottom: 0;
  width: 100%;
  background-color: black;

  text-align: center;


}
.footer-text{
	color:#fff;
	
}
</style>
</head>

<body>


    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
			<?php echo '<font size = "3" color = "#fff"><br>  '.strtoupper($_SESSION['student']).' </font>'; ?>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
			
                <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="<?php echo STUDENT_DASHBOARD_URL;?>index.php"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Student History</h3><!-- /.menu-title -->
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="<?php echo STUDENT_DASHBOARD_URL;?>books/searchbooks.php" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Search & Reserve Books</a>
                        
                    </li>
                    

                    
					
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                   <!--  <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <div class="dropdown for-notification">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="count bg-danger">5</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="notification">
                                <p class="red">You have 3 Notification</p>
                                <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>
                                <p>Server #1 overloaded.</p>
                            </a>
                                <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>
                                <p>Server #2 overloaded.</p>
                            </a>
                                <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>
                                <p>Server #3 overloaded.</p>
                            </a>
                            </div>
                        </div>
                    </div> -->
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="https://i7.pngguru.com/preview/831/88/865/user-profile-computer-icons-user-interface-mystique.jpg" alt="User Avatar">
							
                        </a>

                        <div class="user-menu dropdown-menu">
						
                            <a class="nav-link" href="<?php echo STUDENT_DASHBOARD_URL;?>studentprofile.php"><i class="fa fa-user"></i> My Profile</a>

                            <a class="nav-link" href="<?php echo STUDENT_DASHBOARD_URL;?>studentlogout.php"><i class="fa fa-power-off"></i> Logout</a>
                        </div>
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language">
                            <div class="dropdown-item">
                                <span class="flag-icon flag-icon-fr"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-es"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-us"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-it"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
       		
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active">Welcome <?php echo $_SESSION['student']; ?></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
		