    {include(file='header.tpl')}



  		    {include(file='product_categories.tpl')}


            <div class="col-md-9">


                <div class="row">


{*
{foreach from=$products_category item=o}
		<!-- Product #1 -->
		<div class="four shop columns">
			<figure class="product">
				<div class="mediaholder">
					<a href="{$o.url}">
						<div class="product_img"><img alt="" src="{$o.img}"></div>
						<div class="cover">
							<div class="product_img"><img alt="" src="{$o.img}"></div>
						</div>
					</a>
					{$o.button}
				</div>

				<a href="{$o.url}">
					<section class="product_desc">
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
		</div>
{else}
<p style="margin-top: 40px;">V této kategorii zatím nejsou žádné produkty, prosím navštivte ji později.</p>
{/foreach}
*}

<div class="row">
	<div class="col-md-9">
		<h1 class="category-title">{$actual_title}</h1>
	</div>
	<div class="sort_form col-md-3 padding-10 text-right">
		{$sort_form}
	</div>
</div>

<div class="row padding-10 subcategory-table">
	{foreach from=$subcategories_list item=sub}
	<div class="col-md-4 padding-10 text-center">
		<div class="subcategory"><a href="{$sub.subcategory_url}">{$sub.subcategory_name}</a></div>
	</div>
{else}
{/foreach}
</div>



{foreach from=$products_category item=o}

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
<div class="col-md-12 text-center padding-10"><p style="margin-top: 40px;">V této kategorii zatím nejsou žádné produkty, prosím navštivte ji později.</p></div>
{/foreach}
                </div>


<div class="col-md-12 text-center">
	<nav class="pagination-nav">
	  <ul class="pagination">
	    <li>
	      <a href="{$page_prev_url}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
			{foreach from=$pages_list item=p}
				<li><a {if $p.page_current == "yes"}class="current-page"{/if} href="{$p.page_url}">{$p.page_count}</a></li>
				{else}
				<li><a class="current-page" href="#">1</a></li>
			{/foreach}
	    <li>
	      <a href="{$page_next_url}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>
</div>


                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->


	</div>

</div>

<div class="margin-top-15"></div>

    {include(file='footer.tpl')}
