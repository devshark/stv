<?php
session_start();
	require_once('conn/connect.php');
	
	if(isset($_POST['save']) && !empty($_POST['save'])){
		$_SESSION['validation_errors'] = array();
		if(empty($_POST['txtLname'])){
			$_SESSION['validation_errors'][] = "Lastname Required!";
		}
		if (empty($_POST['txtFname']))
		{
			$_SESSION['validation_errors'][] = "Firstname Required!";
		}
		/* Middle name is not required */
		// if (empty($_POST['txtMname'])){
			// $_SESSION['validation_errors'][] = "Middlename Required!";
		// }
		if (empty($_POST['txtAdd']))
		{
			$_SESSION['validation_errors'][] = "Address Required!";
		}
		if (empty($_POST['txtDob'])){
			$_SESSION['validation_errors'][] = "Date of Birth Required!";
		}
		if (empty($_POST['txtPob'])){
			$_SESSION['validation_errors'][] = "Place of Birth Required!";
		}
		if ( ! isset($_POST['gender']))
		{
			$_SESSION['validation_errors'][] = "Gender Required!";
		}
		if (empty($_POST['txtRel'])){
			$_SESSION['validation_errors'][] = "Religion Required!";
		}
		if (empty($_POST['txtContact'])){
			$_SESSION['validation_errors'][] = "Contact Required!";
		}
		
		$relation = array();
		
		if( ! empty($_POST['txtMother']) && ! empty($_POST['txtOcc']) ){
			$relation['mother'] = array('name'=>$_POST['txtMother'],'occ'=>$_POST['txtOcc']);
		}else{
			$_SESSION['validation_errors'][] = "Mother's info required";
		}
		if( ! empty($_POST['txtFather']) && ! empty($_POST['txtOcc1']) ){
			$relation['father'] = array('name'=>$_POST['txtFather'],'occ'=>$_POST['txtOcc1']);
		}else{
			$_SESSION['validation_errors'][] = "Father's info required";
		}
		if( ! empty($_POST['txtGuardian']) && ! empty($_POST['txtRelation']) ){
			$relation['guardian'] = array('name'=>$_POST['txtGuardian'],'occ'=>$_POST['txtRelation']);
		}
		
		$educbackground = array();
		if(isset($_POST['transfer'])){
			if( ! empty($_POST['txtEnos']) && ! empty($_POST['txtEya']) && ! empty($_POST['txtEag']) ){
				$educbackground['elementary'] = array('name'=>$_POST['txtEnos'],'year'=>$_POST['txtEya'],'ave'=>$_POST['txtEag']);
			}else{
				$_SESSION['validation_errors'][] = "Elementary School's fields required!";
			}
			if ( ! empty($_POST['txtHSnos']) && ! empty($_POST['txtHSya']) && ! empty($_POST['txtHSag'])){
				$educbackground['highschool'] = array('name'=>$_POST['txtHSnos'],'year'=>$_POST['txtHSya'],'ave'=>$_POST['txtHSag']);
			}else{
				$_SESSION['validation_errors'][] = "High School's fields required!";
			}
		}
		$dt = explode('/',$_POST['txtDob']);
		if( ! isset($dt[2]) && ! checkdate($dt[1],$dt[2],$dt[0]))
		{
			$_SESSION['validation_errors'][] = 'Please check date of birth!';
		}
		if(count($_SESSION['validation_errors']) > 0){		
			header('location:register.php');
		}
		else{
			$sql = "insert into application(lastname,firstname,middlename,address,birthdate,birthplace,gender,religion,contactnumber)values('{$_POST['txtLname']}','{$_POST['txtFname']}','{$_POST['txtMname']}','{$_POST['txtAdd']}','{$_POST['txtDob']}','{$_POST['txtPob']}','{$_POST['gender']}','{$_POST['txtRel']}','{$_POST['txtContact']}')";
			mysql_query($sql,$conn);
			$applid = mysql_insert_id();
			if(count($relation) > 0)
				foreach($relation as $rel=>$info){
					$sql = "insert into tbl_relation(application_ID,relationship,name,occupation)values('{$applid}','{$rel}','{$info['name']}','{$info['occ']}')";
					mysql_query($sql,$conn);	
				}
			if(count($educbackground) > 0)
				foreach($educbackground as $level=>$info){
					$sql = "insert into tbl_educbackground(application_ID,level,nameofschool,year_attended,average)values({$applid},'{$level}','{$info['name']}','{$info['year']}','{$info['ave']}')";
					mysql_query($sql,$conn);
				}
			echo '<p>Registration Succesful!</p>';
			echo '<p>You will be redirected to the homepage</p>';
			echo '<script>window.setTimeout("window.location=\'index.html\'",5000);</script>';
		}
	}