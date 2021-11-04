<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BEEBY Shop | เข้าสู่ระบบ</title>

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
    <link id="switcher" href="css/theme-color/green-theme.css" rel="stylesheet">
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
                  <p><span class="fa fa-phone"></span>0621671615</p>
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
                  <p>BEEBY<strong>Shop</strong> <span>ร้านขายของแบรนด์ GUCCI</span></p>
                </a>
                <!-- img based logo -->
                <!-- <a href="index.php"><img src="img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
               <!-- cart box -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="#">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">สินค้าในตะกร้า</span>
                  <!-- <span class="aa-cart-notify"></span> -->
                </a>
                <div class="aa-cartbox-summary">
                  <ul>
                    <?php
                     if(isset($_SESSION["cart_item"])){
                         $item_total = 0;
                      foreach ($_SESSION["cart_item"] as $item){
                  		?>

                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="<?php echo $item["image"]; ?>" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#"><?php echo $item["name"]; ?></a></h4>
                        <p><?php echo $item["quantity"]; ?> x ฿<?php echo $item["price"]; ?></p>
                      </div>
                      <a class="aa-remove-product" href="index.php?action=remove&code=<?php echo $item["code"]; ?>"><span class="fa fa-times"></span></a>
                    </li>
                    <?php
                        $item_total += ($item["price"]*$item["quantity"]);
                		}
                		?>
                    รวม : <?php echo $item_total." บาท"; ?>
										<?php
	                    }
	                  ?>
                  </ul>

                  <a class="aa-cartbox-checkout aa-primary-btn" href="cart.php">ตะกร้าของฉัน</a>
                </div>
              </div>
              <!-- / cart box -->
              <!-- search box -->
              <div class="aa-search-box">
                <form method="post" action="index.php">
                  <input type="text" name="name" id="" placeholder="ค้นหา ตัวอย่าง. 'Backpocks' ">
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
							<li><a href="#">หมวดกระเป๋า <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=Backpocks">Backpocks</a>
									</li>
									<li><a href="index.php?type=Clutches">Clutches</a>
									</li>
									<li><a href="index.php?type=Crossbody">Crossbody</a>
									</li>
									<li><a href="index.php?type=Mini Bags">Mini Bags</a>
									</li>
									<li><a href="index.php?type=Shoulder Bags">Shoulder Bags</a>
									</li>
									<li><a href="index.php?type=Tote Bags">Tote Bags</a>
									</li>
									<li><a href="index.php?type=Precious Handbags">Precious Handbags</a>
									</li>
									<li><a href="index.php?type=Top Handle Bags">Top Handle Bags</a>
									</li>
									<li><a href="index.php?type=Travel Bags">Travel Bags</a>
									</li>
								</ul>
							</li>
							<li><a href="#">หมวดเสื้อผ้า <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=Dresses">Dresses</a>
									</li>
									<li><a href="index.php?type=Sweatshirts">Sweatshirts</a>
									</li>
									<li><a href="index.php?type=TShirts">TShirts</a>
									</li>
									<li><a href="index.php?type=Oulerwear">Oulerwear</a>
									</li>
									<li><a href="index.php?type=Activewear">Activewear</a>
									</li>
									<li><a href="index.php?type=Swealers and Cardigans">Swealers and Cardigans</a>
									</li>
									<li><a href="index.php?type=Tops and Shirts">Tops and Shirts</a>
									</li>
								</ul>
							</li>
							<li><a href="#">หมวดรองเท้า <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.php?type=Ballet Flats">Ballet Flats</a>
									</li>
									<li><a href="index.php?type=Boots">Boots</a>
									</li>
									<li><a href="index.php?type=Pumps">Pumps</a>
									</li>
									<li><a href="index.php?type=Sandals">Sandals</a>
									</li>
									<li><a href="index.php?type=Slides and Thong Sandals">Slides and Thong Sandals</a>
									</li>
									<li><a href="index.php?type=Slippers and Mules">Slippers and Mules</a>
									</li>
									<li><a href="index.php?type=Sneakers">Sneakers</a>
									</li>
									<li><a href="index.php?type=Espadrilles and Wedgesl">Espadrilles and Wedges</a>
									</li>
								</ul>
							</li>									
							<li><a href="contact.php">Contact</a>
							</li>
							<li><a href="#">Pages <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="product.php">Shop Page</a>
									</li>
									<li><a href="product-detail.php">Shop Single</a>
									</li>
									<li><a href="404.php">404 Page</a>
									</li>
								</ul>
							</li>
						</ul>
					</div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
  </section>
  <!-- / menu -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-login">
                <h4>เข้าสู่ระบบ</h4>
                <form action="check_login.php" class="aa-login-form" method="post">
                  <label for="">ชื่อผู้ใช้งาน<span>*</span></label>
                   <input type="text" name="username" placeholder="Username">
                   <label for="">รหัสผ่าน<span>*</span></label>
                    <input type="password" name="password" placeholder="Password">
                    <button type="submit" name="login" class="aa-browse-btn">Login</button>
                    <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> จดจำฉัน </label>
                    <p class="aa-lost-password"><a href="#">ลืมรหัสผ่าน?</a></p>
                  </form>
                </div>
              </div>
              <div class="col-md-6">
                <div class="aa-myaccount-register">
                 <h4>สมัครสมาชิก</h4>
                 <form action="check_register.php" class="aa-login-form" method="post">
                    <label for="">Username<span>*</span></label>
                    <input type="text" name="username" placeholder="Username">
                    <label for="">Password<span>*</span></label>
                    <input type="password" name="password" placeholder="Password">
                    <button type="submit" name="register" class="aa-browse-btn">Register</button>
                  </form>
                </div>
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
                      <p> คณะการบัญชีและการจัดการ มหาวิทยาลัยมหาสารคาม</p>
                      <p><span class="fa fa-phone"></span>062-167-1615</p>
                      <p><span class="fa fa-envelope"></span>Pawadee.25022542@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="https://web.facebook.com/GUCCI"><span class="fa fa-facebook"></span></a>
                      <a href="https://twitter.com/gucci"><span class="fa fa-twitter"></span></a>
                      <a href="https://www.gucci.com/"><span class="fa fa-google-plus"></span></a>
                      <a href="https://www.youtube.com/watch?v=cLHuCUJuc1s"><span class="fa fa-youtube"></span></a>
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
