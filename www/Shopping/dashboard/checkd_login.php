<?php
require('../config/config.php');
if (isset($_POST['login'])){
	$user = $_POST['username'];
	$pass = $_POST['password'];

	$sql = "select * from `admin` where auser='{$user}' AND apassword='{$pass}'";
	$rs = mysqli_query($link,$sql) or die (mysqli_error($link));
	$data = mysqli_fetch_array($rs);
	$mid = $data['aid'];
	$u = $data['auser'];
	$p = $data['apassword'];
	if ($user == $u && $pass == $p){
		setcookie('auser', $u, time() + (86400 * 30), "/"); //86400 = 1 day
		setcookie('aid', $mid, time() + (86400 * 30), "/");
		$_COOKIE['auser'] = $data['auser'];
		$_COOKIE['aid'] = $data['aid'];
		echo 	"<script>";
		echo	"alert('WELCOME $u');";
		echo	"window.location='index.php'";
		echo	"</script>";
	}else{
		echo	"<script>";
		echo	"alert('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง');";
		echo	"window.location='login.php';";
		echo	"</script>";
	}
}
?>