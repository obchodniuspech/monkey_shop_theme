
    {include(file='header.tpl')}


		    {include(file='product_categories.tpl')}


{foreach from=$product,key=k item=o}

<div class="container no-padding">
	         <div class="col-md-9">

                <div class="thumbnail">

				   	<div class="row" style="border: 0px solid red;">
					   	<div class="col-md-9">
						   	<h1 class="product-detail-name margin-left-20">{$o.title}</h1>
						   	                        
					   	</div>
					   	<div class="col-md-3 text-right" style="margin-top: 28px;">
					   		<a style="margin-right: 10px;" {$o.button_cart} class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Vložit do košíku</a>
					   	</div>
				   	</div>
				   	
				   	<div class="row">
					   	<div class="col-md-12"><img class="img-responsive" {* style="width: 400px;" *} src="{$o.img}" alt="{$o.title}"></div>
					   	<div class="col-md-12">
						   	<div class="col-md-12 text-center stock-{$o.stock_color}">{$o.stock_info}</div>
						   	<div class="col-md-12 stock-description text-center">{$o.stock_description}</div>
						   	<div class="col-md-12 product-detail-price text-center">{$o.price_vat} {$o.currency}</div>
						   	
					{if $o.quantity>0}
                    <div class="col-md-12 text-center margin-top-20 margin-bottom">
                        <a {$o.button_cart} class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Vložit do košíku</a>
                    </div>
                    {else}
                    {/if}
                    
					   	</div>
				   	</div>
                  </div>

				  {if $o.params!=""}
				  <h3>Parametry produktu</h3>
				  <div class="row padding-10">
					 <table class="table table-striped">
					 <tr>
				           <td>Kód produktu</td>
				           <td>{$o.id}</td>
					 </tr>

					 {foreach from=$product.$k.params item=p}
					 <tr>
				           <td>{$p.param_name}</td>
				           <td>{$p.param_value}</td>
					 </tr>
					{else}
					  U produktu nejsou uvedeny parametry.
					{/foreach}
					</table>
                  </div>
                  {else}
				  {/if}


            </div>

        </div>

    </div>
    <!-- /.container -->

					
{else}
  Produkt nebyl nalezen.
{/foreach}

{include(file='product_detail_related_off.tpl')}

    {include(file='footer.tpl')}


