		    {include(file='header.tpl')}

{$cart_listen}

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> {$actual_title}</h5>
							</div>
							<div class="col-md-6 col-xs-12">
								<a href="{$domain}/"><button type="button" class="btn btn-primary btn-sm btn-block btn-better-centering">
									<span class="glyphicon glyphicon-share-alt"></span> Pokračovat v nákupu
								</button></a>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
				
					{foreach from=$cart_items item=o}

{*
						<!-- Item #1 -->
								<tr>
									<td><img src="{$o.img_small}" style="width: 100px;height:130px;" alt=""/></td>
									<td class="cart-title"><a href="{$o.url}">{$o.title}</a></td>
									<td>{$o.price_vat} {$currency}</td>
									<td>{$o.quantity} ks
										<!--<form action='#'>
											<div class="qtyminus"></div>
											<input type='text' name="quantity" value='1' class="qty" />
											<div class="qtyplus"></div>
										</form>-->

									</td>
									<td class="cart-total">{$o.price_product_total} {$currency}</td>
									<td><a onclick="{$o.cart_delete_url}" href="#smazat" class="cart-remove"></a></td>
								</tr>
*}

				<div class="row">
						<div class="col-md-2 col-xs-4"><a href="{$o.url}"><img class="img-responsive" src="{$o.img_small}"></a>
						</div>
						<div class="col-md-5 col-xs-8">
							<h4 class="product-name"><strong><a href="{$o.url}">{$o.title}</a></strong></h4><h4><small>{$o.description}</small></h4>
						</div>
						<div class="col-xs-5 hidden-xs">
							<div class="col-xs-6 text-right">
								<h6><strong>{$o.quantity} <span class="text-muted">x</span> {$o.price_vat} {$currency}</strong></h6>
							</div>
							<div class="col-xs-4 quantity_change">
								<input name="{$o.cart_item_id}" type="text" class="form-control input-sm" value="{$o.quantity}">
							</div>
							<div class="col-xs-2">
								<button onclick="{$o.cart_delete_url}" type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
					</div>
					<hr>

					{else}
					  <p>Váš nákupní košík je prázdný.</p>
					{/foreach}


					<div class="row">
						<div class="text-center hidden-xs">
							<div class="col-xs-9">
								<h6 class="text-right">Změnili jste množství u položek?</h6>
							</div>
							<div class="col-xs-3">
								<button onclick="window.location.href='{$domain}/kosik'" type="button" class="btn btn-default btn-sm btn-block">
									Aktualizovat košík
								</button>
							</div>
						</div>
					</div>

				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-md-9 hidden-xs hidden-md">
							<h4 class="text-right">Celkem <strong>{$cart_total} {$currency}</strong></h4>
						</div>
						<div class="hidden-md hidden-lg col-xs-12">
							<h4 class="text-center">Celkem <strong>{$cart_total} {$currency}</strong></h4>
						</div>
						<div class="col-md-3 col-xs-12">
							<a href="{$domain}/objednat"><button type="button" class="btn btn-success btn-block">
								Objednat
							</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

		    {include(file='footer.tpl')}
