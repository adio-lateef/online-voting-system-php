<?php
	include 'conn.php';
 ?>

<?php


if(isset($_POST['send'])){
	$fname=$_POST['firstname'];
	$lname=$_POST['lastname'];
	$matric=$_POST['matric'];
	$pass=$_POST['password'];
	$repass=$_POST['re_password'];

	$hash=md5($pass);
	if(($pass)==($repass)){
		if(!is_numeric($matric)){

			echo"<div class='alert alert-danger'>CHECK MATRIC NO</div>";
		}
	else{
		 $sel="SELECT * FROM voters Where Matric='$matric'";
		 $query=mysql_query($sel);
		 	if(mysql_num_rows($query)>=1){
		 		echo"<div class='alert alert-danger'>MATRIC NO ALREADY EXIST</div>";
		 	}
		 	else{
		 			$ins="INSERT INTO voters VALUE ('','$fname','$lname','$matric','$hash')";
		 			$query=mysql_query($ins);
		 			if($query){
		 				header('location:index.php');
		 			}
		 			else{
		 				echo"<div class='alert alert-danger'>REGISTRATION FAILED</div>";
		 			}
		 	}
		}
		 	
}
else{
	echo"<div class='alert alert-danger'>PASSWORD NOT MATCH</div>";
}
}


?>







<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Registration</title>
	<meta name="description" content="Slick &amp; clean CSS3 Forms Pack" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Forms stylesheet -->
	<link rel="stylesheet" type="text/css" href="css/slick_rf.css" media="screen" />
	<!-- / Forms stylesheet -->
	<link rel="stylesheet" type="text/css" href="demo/demo.css" media="screen" />
	<script type="text/javascript">''</script>
</head>
<body>
<div id="page-2">

	<!-- Start Demo page title -->
	<div class="demo">
	VOTING &amp; SYSTEM
	<h1>&#x25C2; THE IBARAPA POLYTECHNIC ERUWA &#x25B8;</h1>
	</div>
	<!-- End demo page title -->

	<!-- *************************** -->
	<!-- START COPYING FROM HERE     -->
	<!-- *************************** -->

	<section id="slick">
		<!-- Social buttons -->
		<div class="sb">
			<a href="#" class="fb entypo-thumbs-up"><span class="slick-tip right">Login with Facebook</span></a>
			<a href="#" class="gc entypo-google-circles"><span class="slick-tip right">Login with Google</span></a>
			<a href="#" class="tw entypo-twitter"><span class="slick-tip right">Login with Twitter</span></a>
		</div> 
		<!-- Register form -->
		<div class="register-form">
			<!-- Title -->
			<div class="title">Registration</div> 
			<!-- Intro text -->
			<p class="intro"><b>Welcome to our awesome site.</b> To register an account you can use your favorite social network or our form below. Enjoy!</p>
			<!-- Form fields -->
			<form action="" name="register" id="register" method="post">
				<!-- Username input -->
				<div class="field">
					<input name="firstname" placeholder="Firstname" type="text" id="username"  value='<?php if(isset($fname)){echo$fname ;} ?>' required />
					<span class="entypo-user icon"></span>
					<span class="slick-tip left">Firstname</span>
				</div>
				<div class="field">
					<input name="lastname" placeholder="Lastname" type="text" id="username" value='<?php if(isset($lname)){ echo $lname ;}?>' required />
					<span class="entypo-user icon"></span>
					<span class="slick-tip left">Lastname</span>
				</div>
				<!-- Email input -->
				<div class="field">
					<?php if(isset($matric)){if(!is_numeric($matric)){echo"CHECK MATRIC NO";}}?>
					<input name="matric" placeholder="Matric No" type="text" id="email" value='<?php if(isset($matric)){echo $matric ;}?>' required />
					<span class="entypo-user icon"></span>
					<span class="slick-tip left">Matric No</span>
				</div>
				<!-- Password input -->
				<div class="field">
					<input name="password" placeholder="Password" type="password" id="password" required />
					<span class="entypo-lock icon"></span>
					<span class="slick-tip left">Enter your password</span>
				</div>
				<!-- Password repeat input -->
				<div class="field">
					<input name="re_password" placeholder="Password repeat" type="password" id="password-repeat" required />
					<span class="entypo-lock icon"></span>
					<span class="slick-tip left">Repeat your password</span>
				</div>
				<!-- Send button -->
				<input type="submit" value="Register" class="send" form="register" name="send" />
			</form>
			<!-- / Form fields -->
		</div>
		<!-- / Register form -->
	</section>

	<!-- *************************** -->
	<!-- END COPYING HERE            -->
	<!-- *************************** -->

</div>
</body>
</html>