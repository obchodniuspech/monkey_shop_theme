 
		    {include(file='header.tpl')}
			
 


    <!-- Page Content -->
    <div class="container">


<!-- ZDE JEŠTĚ BUDE CYKLUS PRO VÝPIS BANNERŮ Z ADMINA -->

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer hidden-xs">
        </header>
        
<!-- ZDE JEŠTĚ BUDE CYKLUS PRO VÝPIS BANNERŮ Z ADMINA -->
	</div>

	<div class="container">
		<div class="row">
			<div id="column-left" class="col-md-3 no-relative z-index-fix xs-no-padding">
			    <div class="list-group margin-top-2 col-sm-12 col-md-12 xs-no-padding">
				<div class="list-group-first right-side-menu-controler">Kategorie</div>

				   
				   
			 {foreach from=$categories_list,key=k item=c}
			 <a href="{$c.category_url}"><li class="right-side-menu-controler list-group-item" cateogryId="{$c.category_id}">{$c.category_name}{if $categories_list.$k.category_sub != '' }<span class="glyphicon glyphicon-chevron-right"></span>{/if}</li></a>

			     {if $categories_list.$k.category_sub != '' }
				<div class="right-side-menu" categoryId="{$c.category_id}">
						 <ul class="list-unstyled">
						 {foreach from=$categories_list.$k.category_sub item=s}
						                                <a href="{$s.subcategory_url}"><li>{$s.subcategory_name}</li></a>
					
						{else}
						  No subcategories, this will not show up because of if statement.
						{/foreach}
						</ul>
			        </div>
				{/if}
				
			{else}
			  if this shows, it means that $$categories is empty or doesn't exist.
			{/foreach}

			       	                

			</div>

			</div>
			<div class="col-md-9">

		        <!-- Title -->
		        <div class="row section-margin">
		            <div class="col-lg-12">
		                <h3 class="section-title text-center">Novinky</h3>
		            </div>
		        </div>
		        <!-- /.row -->

		        <!-- Page Features -->
		        <div class="row text-center">



		{foreach from=$products item=o}
		{*
				 			<li style="width: 220px; ">
								<figure class="product">
									<div class="product-discount">{$o.label1}</div>
									<div class="mediaholder">
										<a href="{$o.url}">
											<div class="product_img"><img alt="" src="{$o.img}"></div>
											<div class="cover">
												<img alt="" src="{$o.img_hover}">
											</div>
										</a>
										{$o.button}
									</div>

									<a href="?page=product_detail&product_id={$o.id}">
										<section>
											<span class="product-category">{$o.category}</span>
											<h5>{$o.title}</h5>
											{if $o.special_price}
											<span class="product-price-discount" style="">{$o.price_vat} {$o.currency} <i>{$o.special_price} {$o.currency}</i></span>
											{else}
											<span class="product-price" style="">{$o.price_vat} {$o.currency}</span>
											{/if}
										</section>
									</a>
								</figure>
							</li>
		*}

					<div class="col-md-4 col-md-offset-0 col-sm-offset-0 col-sm-6 col-xs-10 col-xs-offset-1 hero-feature">
		                <div class="thumbnail">
		                   <a href="{$o.url}"><div class="img_wrap"><img class="img-responsive" src="{$o.img}" alt=""></div></a>
		                    <div class="caption">
		                        <h4><a href="{$o.url}">{$o.title}</a></h4>
		                        <p class="price-tag pull-left">{$o.price_vat} {$o.currency}</p>
		                    	<p class="pull-right">
		                            <a {$o.button_cart} class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Do košíku</a>
		                        </p>
		                    </div>
		                </div>
		            </div>
							
		{else}
		  if this shows, it means that $products is empty or doesn't exist.
		{/foreach}



		        </div>
		        <!-- /.row -->
		        
		       

		        <!-- Title -->
		        <div class="row section-margin">
		            <div class="col-lg-12">
		                <h3 class="text-center">Nejprodávanější produkty</h3>
		            </div>
		        </div>
		        <!-- /.row -->

		        <!-- Page Features -->
		        <div class="row text-center">



		{foreach from=$products item=o}
		{*
				 			<li style="width: 220px; ">
								<figure class="product">
									<div class="product-discount">{$o.label1}</div>
									<div class="mediaholder">
										<a href="{$o.url}">
											<div class="product_img"><img alt="" src="{$o.img}"></div>
											<div class="cover">
												<img alt="" src="{$o.img_hover}">
											</div>
										</a>
										{$o.button}
									</div>

									<a href="?page=product_detail&product_id={$o.id}">
										<section>
											<span class="product-category">{$o.category}</span>
											<h5>{$o.title}</h5>
											{if $o.special_price}
											<span class="product-price-discount" style="">{$o.price_vat} {$o.currency} <i>{$o.special_price} {$o.currency}</i></span>
											{else}
											<span class="product-price" style="">{$o.price_vat} {$o.currency}</span>
											{/if}
										</section>
									</a>
								</figure>
							</li>
		*}

					<div class="col-md-4 col-md-offset-0 col-sm-offset-0 col-sm-6 col-xs-10 col-xs-offset-1 hero-feature">
		                <div class="thumbnail">
		                   <a href="{$o.url}"><div class="img_wrap"><img class="img-responsive" src="{$o.img}" alt=""></div></a>
		                    <div class="caption">
		                        <h4><a href="{$o.url}">{$o.title}</a></h4>
		                        <p class="price-tag pull-left">{$o.price_vat} {$o.currency}</p>
		                     <p class="pull-right">
		                            <a {$o.button_cart} class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Do košíku</a>
		                        </p>
		                    </div>
		                </div>
		            </div>
							
		{else}
		  if this shows, it means that $products is empty or doesn't exist.
		{/foreach}


			</div>
	        </div>
	        <!-- /.row -->


 
    </div>
    </div>
    <!-- /.container -->

 
		    {include(file='footer.tpl')}
