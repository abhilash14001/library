<?php
ob_start();
date_default_timezone_set("Asia/Kolkata");
$date = date("d-m-y h:i:s");
$currentdate = date("Y-m-d h:i:s");
session_start();
$con = new mysqli("localhost", "cc", "123456", "fenoza_library"); 
/* $con = new mysqli("localhost", "root", "", "library");*/

include $_SERVER['DOCUMENT_ROOT'] . "/install/library/include/functions.php";
$library = new Library();
$adminlib = new Adminbooks();
$studentlib = new StudentBooks();
 

/* include $_SERVER['DOCUMENT_ROOT'] . "/library/include/functions.php"; */
/* define("ADMIN_DASHBOARD_URL", "http://fenoza.in/library/admindashboard/"); */
/* define("STUDENT_DASHBOARD_URL", "http://fenoza.in/library/studentdashboard/");  */
define("ADMIN_DASHBOARD_URL", "http://quepaid.in/install/library/admindashboard/");
define("STUDENT_DASHBOARD_URL", "http://quepaid.in/install/library/studentdashboard/");


