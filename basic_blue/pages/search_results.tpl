    {include(file='header.tpl')}


 
    <div class="container">
	        
        <div class="row">
            <div class="col-md-12">
				<h3 style="margin-top:30px; margin-bottom:30px;">Výsledky vyhledávání</h3>
        	</div>
        </div>

<div class="row text-center">

		{foreach from=$search_results item=o}
		


		<div class="col-md-4 col-md-offset-0 col-sm-offset-0 col-sm-6 col-xs-10 col-xs-offset-1 hero-feature">
		                <div class="thumbnail">
		                   <a href="{$o.result_url}"><div class="img_wrap"><img class="img-responsive" src="{$o.result_img}" alt=""></div></a>
		                    <div class="caption">
		                        <h4><a href="{$o.result_url}">{$o.result_title}</a></h4>
		                        <p class="price-tag pull-left">{$o.price_vat} {$o.currency}</p>
		                    	<p class="pull-right">
		                            <a {$o.button_cart} class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Do košíku</a>
		                        </p>
		                    </div>
		                </div>
		            </div>
		{else}
		Vašemu hledání neodpovídá žádný výsledek, změňte prosím svůj dotaz, nebo <a href="{$domain}">přejděte na hlavní stránku</a>.
		{/foreach}

    </div>
    </div>
    <!-- /.container -->


	</div>

</div>

<div class="margin-top-15"></div>

    {include(file='footer.tpl')}
