<script language="javascript">
function closewin(){
	window.opener.location.reload();
	
}
	#close=closewin();
</script>
<?php
require ('../config/config.php');
if(isset($_GET['mid'])) {

	$sql = "DELETE FROM `member` WHERE mid ='$_GET[mid]'";
	mysqli_query($link, $sql) or die (mysqli_error($link));

	echo 	"<script>";
	echo	"alert('ลบข้อมูลแล้ว');";
	echo 	"window.location='user.php'";
	echo 	"</script>";
	echo @$close;
}
mysqli_close($link);
?>