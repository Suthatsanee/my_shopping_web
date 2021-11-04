    <meta charset="utf-8">

<script language="javascript">
function closewin() { 
	window.opener.location.reload();
	
	}	
	#close = closewin();
</script>
<?php
require('../config/config.php');
if(isset($_GET['ordersid'])) {
	
	$sql = "DELETE FROM orders WHERE ordersid = '$_GET[ordersid]'";
	mysqli_query($link, $sql) or die (mysqli_error($link));
	@unlink("../product-images/".$_GET['ordersid'].".".'jpg');
	echo "<script>";
	echo "alert('ลบข้อมูลแล้ว!');";
	echo "window.location='view_orders.php'";
	echo "</script>";
}
mysqli_close($link);
?>
