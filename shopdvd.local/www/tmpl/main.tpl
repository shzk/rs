<!DOCTYPE html>
<html lang="ru">
<head>
	<title><?=$this->title?></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="<?=$this->meta_desc?>">

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
	<link rel="stylesheet" href="../fonts/icomoon/style.css">

	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/magnific-popup.css">
	<link rel="stylesheet" href="../css/jquery-ui.css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">


	<link rel="stylesheet" href="../css/aos.css">

	<link rel="stylesheet" href="../css/style.css">

</head>
<body>

<div class="site-wrap">
	<header class="site-navbar" role="banner">
		<div class="site-navbar-top">
			<div class="container">
				<div class="row align-items-center">

					<div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
						<form action="<?=$this->link_search?>" class="site-block-top-search">
							<span class="icon icon-search2"></span>
							<input type="text" class="form-control border-0" placeholder="Search">
						</form>
					</div>

					<div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
						<div class="site-logo">
							<a href="<?=$this->index?>" class="js-logo-clone">Shoppers</a>
						</div>
					</div>

					<div class="col-6 col-md-4 order-3 order-md-3 text-right">
						<div class="site-top-icons">
							<ul>
								<li>
									<a href="<?=$this->link_cart?>" class="site-cart">
										<span class="icon icon-shopping_cart"></span>
										<span class="count"><?=$this->cart_count?></span>
									</a>
								</li>
								<li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<nav class="site-navigation text-right text-md-center" role="navigation">
			<div class="container">
				<ul class="site-menu js-clone-nav d-none d-md-block">
					<li>
						<a href="<?=$this->index?>">Home</a>
					</li>
					<li>
						<a href="<?=$this->link_delivery?>">Delivery</a>
					</li>
					<li class="active"><a href="shop.html">Shop</a></li>
					<li><a href="<?=$this->link_contacts?>">Contact</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mb-0">
					<a href="<?=$this->index?>">Home</a>
					<span class="mx-2 mb-0">/</span>
					<a href="<?=$this->link_section?>"><?=$this->product["section"]?></a>
					<span class="mx-2 mb-0">/</span>
					<strong class="text-black"><?=$this->product["title"]?></strong></div>
			</div>
		</div>
	</div>

	<div class="site-section">
		<div class="container">
			<?php include "content_".$this->content.".tpl"; ?>
		</div>
	</div>

	<footer class="site-footer border-top">
		<div class="container">

			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i>
					</p>
				</div>

			</div>
		</div>
	</footer>
</div>

<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/jquery-ui.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/aos.js"></script>

<script src="../js/main.js"></script>

</body>
</html>