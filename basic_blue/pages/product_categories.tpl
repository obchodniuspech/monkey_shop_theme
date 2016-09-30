   <!-- Page Content -->
    <div class="container no-padding">

        <div class="row no-padding no-margin">
 
	 <div id="column-left" class="col-sm-12 col-md-3 float-none no-padding">
    <div class="list-group margin-top-2">
	<div class="list-group-first right-side-menu-controler">Kategorie</div>

	   
	   
 {foreach from=$categories_list,key=k item=c}
 <a href="{$c.category_url}"><li class="right-side-menu-controler list-group-item" cateogryId="{$c.category_id}">{$c.category_name}{if $categories_list.$k.category_sub != '' }<span class="glyphicon glyphicon-chevron-right"></span>{/if}</li></a>

     {if $categories_list.$k.category_sub != '' }
	<div class="right-side-menu" categoryId="{$c.category_id}">
        <div class="right-side-menu-header">
	              </div>
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