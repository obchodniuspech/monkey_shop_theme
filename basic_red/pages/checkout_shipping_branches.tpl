{if $shipping_branches_count>0}
	<select name="shipping_branch" id="shipping_branch" class="form-control">
	
	{if $shipping_branches_count>1}
		<option {if $shipping_branch_selected==99999999999}selected="selected" {/if} value="99999999999">Vyberte prosím pobočku
	{/if}
	
	{foreach from=$shipping_branches item=sb}
	<option {if $shipping_branch_selected==$sb.id}selected="selected" {/if} value="{$sb.id}">{$sb.name} - {$sb.street}, {$sb.city}, {$sb.zip}
	{else}
	Žádný způsob přepravy není k dispozici.
	{/foreach}
	</select>
	{else}
{/if}