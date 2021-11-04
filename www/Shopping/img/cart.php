
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TOM Shop | หน้าแรก</title>

    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/lite-blue-theme.css" rel="stylesheet">
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>

   <!-- wpf loader Two -->
    <div id="wpf-loader-two">
      <div class="wpf-loader-two-inner">
        <span>กำลังโหลดข้อมูล</span>
      </div>
    </div>
    <!-- / wpf loader Two -->
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
                <!-- start cellphone -->
                <div class="cellphone hidden-xs">
                  <p><span class="fa fa-phone"></span>+66 86639 3870</p>
                </div>
                <!-- / cellphone -->
              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">

                  <?php
                  if(!empty($_COOKIE['user'])){
                  echo "<li><a href='javascript:void(0)'>".$_COOKIE["user"]."</a></li>";
                } ?>

                  <li class="hidden-xs"><a href="cart.php">ตะกร้าของฉัน</a></li>
                  <li class="hidden-xs"><a href="checkout.php">เช็คเอาท์</a></li>

                  <?php
                  if(!empty($_COOKIE['user'])){
                  echo "<li><a href='logout.php'>ออกจากระบบ</a></li>";
                } else {
                  echo "<li><a href='login.php'>เข้าสู่ระบบ</a></li>";
                 } ?>

                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <a href="index.php">
                  <span class="fa fa-shopping-cart"></span>
                  <p>TOM<strong>Shop</strong> <span>ร้านขายของโมเดล</span></p>
                </a>
                <!-- img based logo -->
                <!-- <a href="index.php"><img src="img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="#">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">สินค้าในตะกร้า</span>
                  <!-- <span class="aa-cart-notify"></span> -->
                </a>
                <div class="aa-cartbox-summary">
                  <ul>


                    <?php
					  
// ตรวจสอบว่ามีสินค้าในตะกร้าหรือไม่
if(isset($_SESSION["cart_item"])){
$item_total = 0;
//  ถ้ามีสินค้าในตะกร้านำสินค้าออกมาแสดงทีละแถว
foreach ($_SESSION["cart_item"] as $item){
?>
<li>
<a class="aa-cartbox-img" href="#"><img src="<?php 
	echo $item["image"]; ?>" alt="img"></a>
<div class="aa-cartbox-info">
<h4><a href="#"><?php echo $item["name"]; ?></a></h4>
<p><?php echo $item["quantity"]; ?> x ฿<?php echo $item["price"]; ?></p>
</div>
<a class="aa-remove-product" href="index.php?action=remove&code=<?php 
	echo $item["code"]; ?>"><span class="fa fa-times"></span></a>
</li>
<?php
    $item_total += ($item["price"]*$item["quantity"]);}
?>
รวม : <?php echo $item_total." บาท"; ?>
<?php
}
?>
</ul>
<a class="aa-cartbox-checkout aa-primary-btn" 
href="cart.php">ตะกร้าของฉัน</a>
</div>
</div>
<!-- / cart box -->

<!-- search box -->
              <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="ค้นหา ตัวอย่าง. 'TOM' ">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->
  <!-- menu -->
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div class="navbar-collapse collapse">
						<!-- Left nav -->
						<ul class="nav navbar-nav">
							<li><a href="index.php">หน้าแรก</a>
							</li>
							<li><a href="#">หมวดการ์ตูน <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=cartoon_Bleach">Bleach</a>
									</li>
									<li><a href="index.php?type=cartoon_Naruto">Naruto</a>
									</li>
									<li><a href="index.php?type=cartoon_One-Piece">One Piece</a>
									</li>
									<li><a href="index.php?type=cartoon_Dragon-Ball">Dragon Ball</a>
									</li>
									<li><a href="index.php?type=cartoon_Attack-on-Titan">Attack on Titan</a>
									</li>
									<li><a href="index.php?type=cartoon_Hunter-X-Hunter">Hunter X Hunter</a>
									</li>
									<li><a href="index.php?type=cartoon_Death-Note">Death Note</a>
									</li>
									<li><a href="index.php?type=cartoon_Fullmetal-Alchemist-Brotherhood">Fullmetal Alchemist Brotherhood</a>
									</li>
									<li><a href="index.php?type=cartoon_Avatar-Last-Airbender">Avatar Last Airbender</a>
									</li>
									<li><a href="index.php?type=cartoon_One-Punch-Man">One-Punch Man</a>
									</li>
								</ul>
							</li>
							<li><a href="#">หมวดภาพยนตร์ <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=movie_The-Avengers">The Avengers</a>
									</li>
									<li><a href="index.php?type=movie_Thor">Thor</a>
									</li>
									<li><a href="index.php?type=movie_Iron-Man">Iron Man</a>
									</li>
									<li><a href="index.php?type=movie_Captain-Amarica">Captain Amarica</a>
									</li>
									<li><a href="index.php?type=movie_The-Hulk">The Hulk</a>
									</li>
									<li><a href="index.php?type=movie_Spiderman">Spiderman</a>
									</li>
									<li><a href="index.php?type=movie_Superman">Superman</a>
									</li>
								</ul>
							</li>
							<li><a href="#">หมวดเกมส์ <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=game_Titan-Fall">Titan Fall</a>
									</li>
									<li><a href="index.php?type=game_Assasin-Creed">Assasin Creed</a>
									</li>
									<li><a href="index.php?type=game_Residen-Evil">Residen Evil</a>
									</li>
								</ul>
							</li>							
							<li><a href="#">หมวดรถ <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=vehicle_motercycle">motercycle</a>
									</li>
									<li><a href="index.php?type=vehicle_car">car</a>
									</li>
								</ul>
							</li>
							<li><a href="contact.php">Contact</a>
							</li>
						</ul>
					</div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
  </section>
  <!-- / menu -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                       if(isset($_SESSION["cart_item"])){
                           $item_total = 0;
                        foreach ($_SESSION["cart_item"] as $item){
                    		?>
                      <tr>
                        <td><a class="remove" href="index.php?action=remove&code=<?php echo $item["code"]; ?>"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="<?php echo $item["image"]; ?>" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#"><?php echo $item["name"]; ?></a></td>
                        <td><?php echo $item["price"]; ?></td>
                        <td><?php echo $item["quantity"]; ?></td>
                        <td><?php echo $item["quantity"]*$item["price"]; ?></td>
                      </tr>
                      <?php
                          $item_total += ($item["price"]*$item["quantity"]);
                  		}
                  		?>


                      </tbody>
                  </table>
                </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Cart Totals</h4>
			   
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>Total</th>
                     <td><?php echo $item_total." บาท"; ?></td>
                   </tr>
                 </tbody>
                 <?php
                   }
                 ?>
               </table>
			   <h3>เลขใขสินค้า <?php echo $_SESSION["Orders"]; ?></h3>
               <a href="checkout.php" class="aa-cart-view-btn">Proced to Checkout</a>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

  <!-- footer -->
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>เมนูหลัก</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">หน้าแรก</a></li>
                    <li><a href="#">About Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>เกี่ยวกับเรา</h3>
                    <address>
                      <p> คณะการบัญชีและการจัด, มหาวิทยาลัย</p>
                      <p><span class="fa fa-phone"></span>063-954-1996</p>
                      <p><span class="fa fa-envelope"></span>Surasak.jaro@msu.ac.th</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
            <div class="aa-footer-payment">
              <span class="fa fa-cc-mastercard"></span>
              <span class="fa fa-cc-visa"></span>
              <span class="fa fa-paypal"></span>
              <span class="fa fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
    <!-- To Slider JS -->
    <script src="js/sequence.js"></script>
    <script src="js/sequence-theme.modern-slide-in.js"></script>
    <!-- Product view slider -->
    <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
    <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
    <!-- slick slider -->
    <script type="text/javascript" src="js/slick.js"></script>
    <!-- Price picker slider -->
    <script type="text/javascript" src="js/nouislider.js"></script>
    <!-- Custom js -->
    <script src="js/custom.js"></script>

  </body>
</html>
