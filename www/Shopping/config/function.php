<?php
//��Ǩ�ͺ�������к�
function chklogin($user,$pass) {
	
}

//�֧��������Ҫԡ
function getUser($user) {
$sql = "SELECT * FROM members WHERE mUser= '$user' ";
$rs = mysqli_query($ink,$sql)or die(mysqli_error($link));
	
}

?>