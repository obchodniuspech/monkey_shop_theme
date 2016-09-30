  <div class="shopping-cart">
{*
    <div class="shopping-cart-header">
      <i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>
      <div class="shopping-cart-total">
        <span class="lighter-text">Total:</span>
        <span class="main-color-text">$2,229.97</span>
      </div>
    </div> <!--end shopping-cart-header -->
*}

    <ul class="shopping-cart-items">
	    
{foreach from=$cart_items item=o}
      <li class="clearfix">
        <a href="{$o.cart_item_url}"><img width="50" src="{$o.cart_item_img}" alt="item1" /></a>
        <a href="{$o.cart_item_url}"><span class="item-name">{$o.cart_item_name}</span></a>
        <span class="item-price">{$o.cart_item_price} {$o.cart_item_currency}</span>
        <span class="item-quantity">{$o.cart_item_quantity} ks</span>
      </li>
{else}
Váš nákupní košík je prázdný.
{/foreach}

    </ul>
    <a href="{$domain}/kosik" class="button">Nákupní košík</a>
    <a href="{$domain}/objednat" class="button">Objednat</a>
  </div> <!--end shopping-cart -->
