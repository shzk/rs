<div class="row mb-5">

	<?php for ($i=0; $i < count($this->products); $i++) { ?>
		<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
			<div class="block-4 text-center border">
				<figure class="block-4-image">
					<a href="<?=$this->products[$i]["link"]?>"><img src="<?=$this->products[$i]["img"]?>" alt="<?=$this->products[$i]["title"]?>" class="img-fluid"></a>
				</figure>
				<div class="block-4-text p-4">
					<h3><a href="<?=$this->products[$i]["link"]?>"><?=$this->products[$i]["title"]?></a></h3>
					<p class="text-primary font-weight-bold"><?=$this->products[$i]["price"]?> руб.</p>
					<a href="<?=$this->products[$i]["link_cart"]?>">add</a>
				</div>
			</div>
		</div>
	<?php } ?>
	
</div> 