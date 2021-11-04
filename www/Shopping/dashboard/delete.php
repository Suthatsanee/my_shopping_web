<script language="javascript">
function closewin() { 
	window.opener.location.reload();
	
	}	
	#close = closewin();
</script>
<?php
require('../config/config.php');
if(isset($_GET['code'])) {
	
	$sql = "DELETE FROM tblproduct WHERE code = '$_GET[code]'";
	mysqli_query($link, $sql) or die (mysqli_error($link));
	@unlink("../product-images/".$_GET['code'].".".'jpg');
	echo "<script>";
	echo "alert('ลบข้อมูลแล้ว!');";
	echo "window.location='index.php'";
	echo "</script>";
}
mysqli_close($link);
?>
