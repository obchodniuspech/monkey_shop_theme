{foreach from=$shipping_methods item=shipping_method}
					      <tr>
					        <td><input id="shipping-address-{$shipping_method.id}" type="radio" name="shipping_method" value="{$shipping_method.id}" {if $shipping_method_selected==$shipping_method.id} checked{/if} /></td>
					        <td><label for="shipping-address-{$shipping_method.id}" class="checkbox">{$shipping_method.name} <abbr class="sep">|</abbr> {$shipping_method.delivery_term}</label></td>
					        <td>{if $shipping_method.price=="0"}ZDARMA{else}{$shipping_method.price} {$shipping_method.currency}{/if}</td>
					      </tr>
{else}
<tr><td>Žádný způsob přepravy není k dispozici.</td></tr>
{/foreach}
