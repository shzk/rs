<div class="row">
	<div class="col-md-12 mb-5">
		<div class="float-md-left mb-4"><h2 class="text-black h5"><?=$this->table_products_title?></h2></div>
		<div class="d-flex">
			<div class="dropdown mr-1 ml-md-auto"> Сортировка:
				<button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					По имени
				</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
					<a class="dropdown-item" href="<?=$this->link_title_up?>">Name, A to Z</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="<?=$this->link_title_down?>">Name, Z to A</a>
				</div>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown">По цене</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
					<a class="dropdown-item" href="<?=$this->link_price_up?>">Price, low to high</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="<?=$this->link_price_down?>">Price, high to low</a>
				</div>
			</div>
		</div>
	</div>
</div>