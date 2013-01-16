<?php
session_start();
error_reporting(1);
ini_set('display_errors','On');

include('functions/registration_functions.php');
$_SESSION['validation_errors'] = isset($_SESSION['validation_errors']) ? $_SESSION['validation_errors'] : array();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>STV Online</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.8.1.min.js"></script>
<script>
	$(function(){
		$('input[name=transfer]').change(function(event){
			// console.log($(this));
			if($(this).attr('checked') === undefined)
			{
				$('fieldset#optional').attr('disabled','true');
			}
			else
			{
				$('fieldset#optional').removeAttr('disabled');
			}
		})
		.parents('form').find('input[type=reset]')
		.click(function(event){
			// console.log('wala');
			$('fieldset#optional').attr('disabled','true');
		});
	})
</script>
</head>
<body>
	<div id="page">
	<?php include_once('parts/header.php');?>
		<!--
		<div id="middle">
			<div id="captionleft">
				<h1>Mission and Vision</h1>
				<p>Sto. Tomas de Villanueva Parochial School aspires to be an instrument for man’s integral formation... </p>
				<div class=rightalign><a href="#" class="button">Readmore..>></a></div>
			</div>
			<div id="board">
			<h1>Welcome, STVians!</h1>
				<p>
The existence of the Sto. Tomas de Villanueva Parochial School (formerly Sto. Tomas de Villanueva High School) was made possible through the effort of a Belgian priest; Fr. Alejandro Vermorel who laid out a plan to have a secondary school to cater to the educational needs of the elementary graduates of the then thinly populated community. His wish paid off when a generous Santoleño, Fr. Lupo Dumandan, donated 2200 sq. meters of land where the school now stands. </p>
				
			</div>
		</div>
		-->
		<div id="reg-form">
			<div class="inner-form">
				<form method="post" action="register.backend.php">
				<?php echo validation_errors($_SESSION['validation_errors']);?>
					<p>
						<label for="txtLname">Lastname</label> :
						<input type = "text" name = "txtLname" size = 50px>
					</p>
					<p>
						<label for="txtFname">Firstname</label> :
						<input type = "text" name = "txtFname" size = 50px>
					</p>
					<p>
						<label for="txtMname">Middle Name</label> :
						<input type = "text" name = "txtMname" size = 50px>
					</p>
					<p>
						<label for="txtAdd">Address </label> :
						<input type = "text" name = "txtAdd" size = 70px>
					</p>
					<p>
						<label for="txtDob">Date of Birth (yyyy/mm/dd)</label> :
						<input type = "text" name = "txtDob">
					</p>
					<p>
						<label for="txtPob">Place of Birth</label> :
						<input type = "text" name = "txtPob">
					</p>

					<p>
						<label for="txtGender">Gender</label> :
						<input type = "radio" name = "gender" value="Male"> Male
						<input type = "radio" name = "gender" value="Female"> Female	
					</p>
					<p>
						<label for="txtRel">Religion</label> :
						<input type = "text" name = "txtRel">
					</p>
					<p>
						<label for="txtContact">Contact Number</label> :
						<input type = "text" name = "txtContact">
					</p>
					<p>
						<label for="txtMother">Mother's Name</label> :
						<input type = "text" name = "txtMother">
						<label for="txtOcc">Occupation</label> :
						<input type = "text" name = "txtOcc">
					</p>

					<p>
						<label for="txtFather">Father's Name</label> :
						<input type = "text" name = "txtFather">
						<label for="txtOcc1">Occupation</label> :
						<input type = "text" name = "txtOcc1">
					</p>

					<p>
						<label for="txtGuardian">Guardian's Name</label> :
						<input type = "text" name = "txtGuardian">
						<label for="txtRelation">Relationship</label> :
						<input type = "text" name = "txtRelation">
					</p>
					<input type="checkbox" name="transfer"/>Transferee
					<fieldset id="optional" disabled="disabled">
						<legend><h2>Educational Background</h2></legend>
							<div class="articles"> 
									ELEMENTARY:
									<p>
										<label for="txtEnos"> Name of School</label> :
										<input type = "text" name = "txtEnos">
									</p>
									<p>
										<label for="txtEya"> Year Attended</label> :
										<input type = "text" name = "txtEya">
									</p>
									<p>
										<label for="txtEag">Average Grade</label> :
										<input type = "text" name = "txtEag">
									</p>
									
									HIGHSCHOOL:
									<p>
										<label for="txtHSnos"> Name of School</label> :
										<input type = "text" name = "txtHSnos">
									</p>
									<p>
										<label for="txtHSya"> Year Attended</label> :
										<input type = "text" name = "txtHSya">
									</p>
									<p>
										<label for="txtHSag">Average Grade</label> :
										<input type = "text" name = "txtHSag">
									</p>
							</div>
					</fieldset>				
					<p>
						<input type = "Submit" value = "Submit" name = "save">
						<input id="reset" type = "reset" value = "Reset">
					</p>
			</form>
		</div>
	</div>
		<!--
		<div id="middle2">
			<div id="caption2" class="captions">
			<h1>Admission</h1>
				<p>Guidelines and Procedures for Admission.</p><div class=rightalign><a href="#" class="button-small">Readmore..>></a></div>
			</div>	
			<div id="contactbox">
			<h1>Contact Us</h1>
				<p>In eget dolor augue. Suspendisse urna erat, accumsan vitae scelerisque sed, ultricies nec lectus. Curabitur sagittis, nisi a <a href="#">condimentum</a> laoreet, libero nisi congue.</p>
				<h2>+123.45.678.91.01</h2>
			</div>
			<div id="caption3" class="captions">
				<h1></h1>
				<p> <a href="#">condimentum</a> laoreet...</p><div class=rightalign><a href="#" class="button-small">Read More..>></a></div>
			</div>
			
		</div>
		-->
		<?php include_once('parts/footer.php');?>
	</div>
</body>
</html>
<?php
$_SESSION['validation_errors'] = array ();
?>