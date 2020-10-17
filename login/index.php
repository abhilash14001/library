<!DOCTYPE html>
<?php include '../include/config.php';
$fetch = $library->selectData($con, "image", "lmslogo where no =1");
$data = mysqli_fetch_assoc($fetch);
extract($data);	
$fetche = $library->selectData($con, "college_details, image", "lmslogo where no =1");
$datas = mysqli_fetch_assoc($fetche);
extract($datas);

	
?>
<html lang="en">
<head>
	<title>Login Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="shortcut icon" href="<?php echo ADMIN_DASHBOARD_URL;?>logo/<?php echo $image; ?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>	

.header-text{
	position:fixed;
	margin-bottom:350px;
	color:black;
	
}
 
</style>
</head>
<body>
	
	<div class="limiter">
	
		<div class="container-login100">
		    <h3 class = "header-text"><b><?php echo $college_details; ?></b></h3>
	
			<div class="wrap-login100">
								
				<div class="login100-pic js-tilt" data-tilt>
				
				<img src="images/img-01.png" alt="IMG"> 
					
				</div>
				
				<form class="login100-form validate-form" method = "POST" action = "#">
					
					<span class="login100-form-title">
						Admin / Student Login
					
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type = "submit" name = "submit" class="login100-form-btn">
							Login
						</button>
					</div>

					
				</form>
<?php 
if(isset($_POST['submit']))
{
	extract($_POST);
	
	$checkadmin = $library->selectData($con, "*", "lmsaccount where userrole = 'admin' and name = '$username'");
	$checkstudent = $library->selectData($con, "*", "lmsaccount where userrole = 'student' and name = '$username'");
	$queryadmin = mysqli_fetch_assoc($checkadmin);
	$_SESSION['admin'] = $adminuname = $queryadmin['name'];
	$_SESSION['adminid'] = $queryadmin['userid'];
	$adminpassword = $queryadmin['password'];
	$querystudent = mysqli_fetch_assoc($checkstudent);
	$_SESSION['student']  = $studentname = $querystudent['name'];
	$_SESSION['studentid'] = $querystudent['userid'];
	$studentpassword = $querystudent['password'];
	
	if($adminuname == $username && $adminpassword == md5($pass))
	{
	
		$library->header(ADMIN_DASHBOARD_URL);
	}
	elseif($studentname == $username && $studentpassword == md5($pass))
	{
		$library->header(STUDENT_DASHBOARD_URL);
	}
	else
	{
		$library->alert("Invalid username or password");
	}
	
	
}
?>
			</div>
		</div>
	</div>
	
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>