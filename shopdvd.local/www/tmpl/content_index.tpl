<div class="row mb-5">
	<div class="col-md-9 order-2">

		<?php include "table_products_top.tpl"; ?>
		<?php include "table_products.tpl"; ?>

	</div>

	<div class="col-md-3 order-1 mb-5 mb-md-0">
		<div class="border p-4 rounded mb-4">
			<h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
			<ul class="list-unstyled mb-0">
				<?php for ($i=0; $i < count($this->items); $i++) { ?>
				<li class="mb-1"><a href="#" class="d-flex"><span>Men</span></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>