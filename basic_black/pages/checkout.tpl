{include(file='header.tpl')}

{if $cart_count == 0}
<meta http-equiv="refresh" content="0;url={$domain}/kosik">
{/if}

{$order_listen}

<!-- SEM SE NACTE TEXT Z ADMINISTRACE PRI USPESNE OBJEDNAVCE -->
<div class="container" id="order_sent">

</div>
<!-- /SEM SE NACTE TEXT Z ADMINISTRACE PRI USPESNE OBJEDNAVCE -->


<div class="container" id="order">

<!-- Title -->
<div class="row section-margin">
    <div class="col-lg-12">
        <h3 class="text-center">Objednat</h3>
    </div>
</div>


<div class="row">
	<div class="col-md-12 noselect">
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Země doručení</h3>
		  </div>
		  <div class="panel-body">
		  	
		  	<div class="col-md-4">
		  	<select name="shipping_country" id="shipping_country" class="form-control">
			  	{foreach from=$shipping_countries item=sc}
			  		<option value="{$sc.id}">{$sc.country_name}
			  	{else}
			  	<option>Objednávku aktuálně nelze doručit do žádné země.
			  	{/foreach}
		  	</select>
		  	</div>
		  	
		  	<div class="col-md-4"></div>
		  	<div class="col-md-4"></div>
		  	
		  </div>
		</div>
	</div>
</div>

<div class="row">

	<div class="col-md-6 noselect">
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Způsob přepravy</h3>
		  </div>
		  <div class="panel-body">
		  	<strong>Zvolte prosím způsob přepravy Vaší objednávky</strong>
			  <table class="table table-condensed delivery-options">
			    <tbody id=shipping_methods>
				    <tr><td>Vyberte prosím zemi pro doručení.</td></tr>
			    </tbody>
			  </table>
			  <div id="select_delivery_branch"></div>
		  </div>
		</div>
	</div>

	<div class="col-md-6 noselect">
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Způsob platby</h3>
		  </div>
		  <div class="panel-body">
		  	<strong>Zvolte prosím způsob platby Vaší objednávky</strong>
			  <table class="table table-condensed delivery-options">
			    <tbody id="payment_methods">

			    </tbody>
			  </table>

		  </div>
		</div>
	</div>

</div>
{foreach from=$customer_contacts item=contact}

<div class="row order_info">
	<div class="col-md-12 noselect">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">Fakturační adresa</h3>
			  </div>
			  <div class="panel-body">
				    <div class="row">
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Jméno:</label>
							  <input type="text" class="form-control" id="payment_name" value="{$contact.payment_name}" placeholder="Jméno" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Příjmení:</label>
							  <input type="text" class="form-control" id="payment_lastname" value="{$contact.payment_lastname}" placeholder="Příjmení" aria-describedby="basic-addon1">
					    </div>
				    </div>
				    <div class="row margin-top-10">
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Ulice a číslo popisné:</label>
							  <input type="text" class="form-control" placeholder="Ulice a číslo popisné" id="payment_street" value="{$contact.payment_street}" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">PSČ:</label>
							  <input type="text" class="form-control" placeholder="PSČ" id="payment_zip" value="{$contact.payment_zip}" aria-describedby="basic-addon1">
					    </div>
					     <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">Město:</label>
							  <input type="text" class="form-control" placeholder="Město" id="payment_city" value="{$contact.payment_city}" aria-describedby="basic-addon1">
					    </div>
				    </div>
				     <div class="row margin-top-10">
					    <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">Telefon:</label>
							  <input type="text" class="form-control" placeholder="Telefon" id="payment_phone" value="{$contact.payment_phone}" aria-describedby="basic-addon1">
					    </div>
					     <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">E-mail:</label>
							  <input type="text" class="form-control" placeholder="E-mail" id="payment_email" value="{$contact.payment_email}" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-6">
							  <input type="checkbox"> Přeji si fakturovat na firmu
					    </div>
				    </div>
			  </div>
			</div>
	</div>
</div>



<div class="row order_info">
	<div class="col-md-12">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">Dodací adresa</h3>

			    			<span class="shippping-checkbox"><input class="input-checkbox" id="same_shipping_address" type="checkbox" name="shipping-address" checked="checked" value="1" />
			<label for="shipping-address" class="checkbox">Dodací adresa je stejná, jako adresa fakturace</label></span>

			  </div>
			  <div class="panel-body" style="display: none;" id="shipping_adress">
				    <div class="row">
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Jméno:</label>
							  <input type="text" class="form-control" id="shipping_name" value="{$contact.shipping_name}" placeholder="Jméno" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Příjmení:</label>
							  <input type="text" class="form-control" id="shipping_lastname" value="{$contact.shipping_lastname}" placeholder="Příjmení" aria-describedby="basic-addon1">
					    </div>
				    </div>
				    <div class="row margin-top-10">
					    <div class="col-md-6">
							  <label class="control-label input-label" for="startTime">Ulice a číslo popisné:</label>
							  <input type="text" class="form-control" id="shipping_street" value="{$contact.shipping_street}" placeholder="Ulice a číslo popisné" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">PSČ:</label>
							  <input type="text" class="form-control" id="shipping_zip" placeholder=""  value="{$contact.shipping_zip}" placeholder="PSČ" aria-describedby="basic-addon1">
					    </div>
					     <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">Město:</label>
							  <input type="text" class="form-control" id="shipping_city" placeholder=""  value="{$contact.shipping_city}" placeholder="Město" aria-describedby="basic-addon1">
					    </div>
				    </div>
				     <div class="row margin-top-10">
					    <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">Telefon:</label>
							  <input type="text" class="form-control" id="shipping_phone" placeholder=""  value="{$contact.shipping_phone}" placeholder="PSČ" aria-describedby="basic-addon1">
					    </div>
					     <div class="col-md-3">
							  <label class="control-label input-label" for="startTime">E-mail:</label>
							  <input type="text" class="form-control" id="shipping_email" placeholder=""  value="{$contact.shipping_email}" placeholder="Město" aria-describedby="basic-addon1">
					    </div>
					    <div class="col-md-6">
							  <input type="checkbox"> Přeji si doručit na firmu
					    </div>
				    </div>


			  </div>
			</div>


<div class="row">
	<div class="col-md-12">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">Položky objednávky</h3>
			  </div>
			  <div class="panel-body">
						<table class="table table-condensed">
							{foreach from=$cart_items item=o}
						<tr>
							<td width="100"><a href="{$o.url}"><img class="img-responsive" src="{$o.img_small}"></a></td>
							<td><a href="{$o.url}"><a href="{$o.url}">{$o.title}</a></td>
							<td>{$o.quantity} <span class="text-muted">x</span> {$o.price_vat} {$currency}</strong></td>
						</tr>

							{else}
							  <p>Váš nákupní košík je prázdný.</p>
							{/foreach}

						</table>
								<div class="checkout-subtotal text-right">
									Celkem bez DPH: <span>{$cart_total_without_vat} {$currency}</span><br>
									Doprava a platba: <span id="shipping_cost">{$cart_total_shipping_cost} {$currency}</span>
								</div>
								<div class="checkout-total text-right">
									Celkem: <span id="total">{$cart_total} {$currency}</span>
								</div>
					</div>
			  </div>
			</div>


	</div>
</div>

{/foreach}



<div class="row padding-10">
	<div class="container">
		<div class="col-md-12 hidden-xs hidden-sm no-padding">
			<button {$order_confirm} id="order_send" type="button" class="icon-spinner icon-spin icon-large btn btn-success pull-right"><span id="order_send_spinner"></span>Odeslat objednávku</button>
		</div>
		<div class="col-xs-12 hidden-md hidden-lg text-center">
			<button {$order_confirm} id="order_send_mobile" type="button" class="btn btn-success">Odeslat objednávku</button>
		</div>
	</div>
</div>

</div>
	</div>
		    {include(file='footer.tpl')}
