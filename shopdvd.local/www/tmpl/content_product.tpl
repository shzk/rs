<div class="row">
	<div class="col-md-6">
		<img src="<?=$this->product["img"]?>" alt="<?=$this->product["title"]?>" class="img-fluid">
	</div>
	<div class="col-md-6">
		<h2 class="text-black"><?=$this->product["title"]?></h2>
		<p>Year: <?=$this->product["year"]?></p>
		<p class="mb-4">Cast: <?=$this->product["cast"]?></p>
		<p class="mb-4">Director: <?=$this->product["director"]?></p>
		<p class="mb-4">Country: <?=$this->product["country"]?></p>
		<p class="mb-4">Timing: <?=$this->product["play"]?></p>
		<p class="mb-4">Genre: <?=$this->product["section"]?></p>
		<p class="mb-4">Description: <?=$this->product["description"]?></p>
		<p><strong class="text-primary h4"><?=$this->product["price"]?> руб.</strong></p>
		<!--<div class="mb-1 d-flex">
			<label for="option-sm" class="d-flex mr-3 mb-3">
				<span class="d-inline-block mr-2" style="top:-2px; position: relative;"><input type="radio" id="option-sm" name="shop-sizes"></span> <span class="d-inline-block text-black">Small</span>
			</label>
			<label for="option-md" class="d-flex mr-3 mb-3">
				<span class="d-inline-block mr-2" style="top:-2px; position: relative;"><input type="radio" id="option-md" name="shop-sizes"></span> <span class="d-inline-block text-black">Medium</span>
			</label>
			<label for="option-lg" class="d-flex mr-3 mb-3">
				<span class="d-inline-block mr-2" style="top:-2px; position: relative;"><input type="radio" id="option-lg" name="shop-sizes"></span> <span class="d-inline-block text-black">Large</span>
			</label>
			<label for="option-xl" class="d-flex mr-3 mb-3">
				<span class="d-inline-block mr-2" style="top:-2px; position: relative;"><input type="radio" id="option-xl" name="shop-sizes"></span> <span class="d-inline-block text-black"> Extra Large</span>
			</label>
		</div>-->
		<div class="mb-5">
			<div class="input-group mb-3" style="max-width: 120px;">
				<div class="input-group-prepend">
					<button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
				</div>
				<input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
				<div class="input-group-append">
					<button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
				</div>
			</div>

		</div>
		<p><a href="<?=$this->product["link_cart"]?>" class="buy-now btn btn-sm btn-primary">Add To Cart</a></p>

	</div>
</div>
<div class="site-section block-3 site-blocks-2 bg-light">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7 site-section-heading text-center pt-4">
				<h2>Featured Products</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="nonloop-block-3 owl-carousel">
					<?php for ($i = 0; $i < count($this->products); $i++) { ?>
					<!--region single item-->
					<div class="item">
						<div class="block-4 text-center">
							<figure class="block-4-image">
								<img src="<?=$this->products[$i]["img"]?>" alt="<?=$this->products[$i]["title"]?>" class="img-fluid">
							</figure>
							<div class="block-4-text p-4">
								<h3><a href="<?=$this->products[$i]["link"]?>"><?=$this->products[$i]["title"]?></a></h3>
								<p class="text-primary font-weight-bold"><?=$this->products[$i]["price"]?> руб.</p>
								<p><a href="<?=$this->products[$i]["link_cart"]?>" class="buy-now btn btn-sm btn-primary">Add To Cart</a></p>
							</div>
						</div>
					</div>
					<!--endregion-->
					<?php }?>
				</div>
			</div>
		</div>
	</div>
</div>