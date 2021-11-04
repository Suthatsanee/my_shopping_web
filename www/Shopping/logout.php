<?php
setcookie('name','',time()-(86400 * 30), "/");
setcookie('user','',time()-(86400 * 30), "/");

echo "<script>" ;
echo "window.location='index.php' ; " ;
echo "</script>" ;
 ?>
 
