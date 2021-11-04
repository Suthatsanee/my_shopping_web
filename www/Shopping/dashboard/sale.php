<script language="javascript">
function closewin() {
	window.opener.location.reload();
	self.close();
	
}
	$close = closewin();
</script>
<?php
require('../config/config.php');
$sale = $_POST['sale'];

if(isset($_GET['id'])) {
	$aql = "UPDATE tblproduct SET sale = $sale WHERE `tblproduct`.`id` = $_GET[id]"; 
	mysqli_query($link, $aql) or die(mysqli_error($link));
	echo"<center>แก้ไข้ข้อมูล<br></center>";
echo '<script type="text/javascript">window.location="index.php"</script>';
	echo @$close;
}
 
mysqli_query($link);
?>
