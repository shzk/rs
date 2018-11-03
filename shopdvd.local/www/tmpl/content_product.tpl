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