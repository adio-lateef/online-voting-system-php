<?php
 session_start();
	include 'conn.php';
 ?>
 <?php
 	if(isset($_POST['send'])) {
 		$matric= $_POST['matric'];
 		$password=$_POST['password'];
 	
	$query="SELECT * FROM voters WHERE Matric='$matric' AND Password='$password'";
				if($sql_query=mysql_query($query)){
				$mysql_num_row= mysql_num_rows($sql_query);
				if($mysql_num_row==0){
					echo"<div class='alert alert-danger' role='alert' > Wrong Login details</div>";
				}
				else {
					if($mysql_num_row==1){
					$result= mysql_result($query, 0, 'Matric');	
					$_SESSION['Matric']= $result;
					header('Location: User');
				}
					}
				}
				 
		}
 ?>
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>ONLINE VOTING SYSTEM</title>
	<meta name="description" content="Slick &amp; clean CSS3 Forms Pack" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Forms stylesheet -->
	<link rel="stylesheet" type="text/css" href="css/slick_lf.css" media="screen" />
	<!-- / Forms stylesheet -->
	<link rel="stylesheet" type="text/css" href="demo/demo.css" media="screen" />
	<script type="text/javascript">''</script>
</head>
<body>
<div id="page-2">

	<!-- Start Demo page title -->
	<div class="demo">
	VOTING  SYSTEM
	<h1>&#x25C2; THE IBARAPA POLYTECHNIC ERUWA &#x25B8;</h1>
	</div>
	<!-- End demo page title -->

	<section id="slick">
		
		<!-- Login form -->
		<div class="login-form">
			<!-- Title -->
			<div class="title">Voters login</div> 
			<!-- Intro text -->
			<p class="intro"><b>Login to vote.</b> Your vote is your voice.</p>
			<!-- Form fields -->
			<form action="" name="login" id="login" method="post">
				<!-- Username input -->
				<div class="field">
					<input name="matric" placeholder="Matric No" type="text" id="username" value="<?php if (isset($matric)){echo $matric;} ?>" required />
					<span class="entypo-user icon"></span>
					<span class="slick-tip left">Enter your Matric No</span>
				</div>
				<!-- Password input -->
				<div class="field">
					<input name="password" placeholder="Password" type="password" id="password" required />
					<span class="entypo-lock icon"></span>
					<span class="slick-tip left">Enter your password</span>
				</div>
				<div class="clrfx mt-10"></div>
	
				<!-- Send button -->
				<input type="submit" value="Login" class="send" form="login" name="send" />
				<div class="w-47 mr-5 mt-5">
						<span><p class="intro"><b>Not yet Registered?</b><a href="reg.php"><font color="grey">Register</font></a></p></span>
					</div>
					<div class="w-47 mr-5 mt-5">
						<span><p class="intro"><b>Admin?</b><a href="login.php"><font color="grey">Login</font></a></p></span>
					</div>
			</form>
			<!-- / Form fields -->
		</div>
		<!-- / Login form -->
	</section>

</div>
</body>
</html>