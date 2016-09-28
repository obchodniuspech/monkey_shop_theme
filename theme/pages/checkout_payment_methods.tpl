

{foreach from=$payment_methods item=payment_method}
					      <tr>
					        <td><input id="payment-address-{$payment_method.id}" type="radio" name="payment_method" value="{$payment_method.id}" {if $payment_method_selected==$payment_method.id} checked{/if} /></td>
					        <td><label for="payment-address-{$payment_method.id}" class="checkbox">{$payment_method.name}<abbr class="sep"></label></td>
					        <td>{if $payment_method.price=="0"}ZDARMA{else}{$payment_method.price} {$payment_method.currency}{/if}</td>
					      </tr>
{else}
    <tr><td>Žádný způsob platby není k dispozici.</td></tr>
{/foreach}
