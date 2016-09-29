		<div class="container-fluid">
			<div class="row">
				<div class="container-fluid">
					<div id="info-box" class="row no-padding info-box">
							<div class="container">
								<div class="row">
									<div class="col-md-12 col-sm-12 no-padding text-right">
										<div class="pull-right text-center padding-20">
											<p>
												<small>
													<a href="mailto:exampluj@3dr.cz">
														<span class="glyphicon glyphicon-envelope"></span> 
														{$shop_email}
													</a>
												</small>
											</p>
										</div>
										<div class="pull-right text-center padding-20">
											<p>
												<small>
													<a href="tel:+420723065014">
														<span class="glyphicon glyphicon-phone"></span> 
														{$shop_phone}
													</a>
												</small>
											</p>
										</div>
									</div>
								</div>
							</div>
					</div>
				</div>
	    <div id="logo-box" class="container">
	    	<div class="row">
	    		<div id="header-logo" class="col-md-3">
	    			<a href="{$domain}"><img src="{$domain}/{$domain_folder}images/titulka6"></a>
	    		</div>
	    	</div>
		</div>
	    <!-- Navigation -->
	    <div id="nav-wrapper">
	    <nav id="top-navbar" class="navbar navbar-default" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand hidden" href="{$domain}">{$shop_name}</a>
	            </div>
	            <!-- Collect the nav links, forms, and other content for toggling -->
	            <div class="collapse navbar-collapse no-padding" id="bs-example-navbar-collapse-1">
	                <ul class="nav navbar-nav">
		            
		            	<li>
	                        <a href="{$domain}"><span class="glyphicon glyphicon-home"></span></a>
	                    </li>
		            
		    {foreach from=$main_menu,key=k item=o}
		    
		    			{if $main_menu.$k.menu_sub != '' }
		    			<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$o.menu_title} <span class="caret"></span></a>
		    			          <ul class="dropdown-menu">
										{foreach from=$main_menu.$k.menu_sub item=sub}
				                                <li><a href="{$main_menu.$k.menu_sub.submenu_url}">{$main_menu.$k.menu_sub.submenu_title}</a></li>
										{/foreach}
				                  </ul>
		    			</li>
	                    {else}
						<li>
	                        <a href="{$o.menu_url}">{$o.menu_title}</a>
	                    </li>
	                    {/if}
			{else}
			Menu nelze zobrazit
			{/foreach}    

	                    
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					          <span class="glyphicon glyphicon-shopping-cart"></span> {$shopping_cart_text}
					      </a>
				          <ul class="dropdown-menu col-xs-12" id="shopping_cart">
				          </ul>
				        </li>
	                    
	                </ul>
	            

	            
	            
	            <div class="col-md-5 col-sm-4 col-xs-12 pull-right no-padding">
		            <div class=" margin-top-8">
						    <form class="input-group" method="get" action="{$domain}/vyhledavani">
						      <input name="q" type="text" class="form-control" placeholder="Vyhledávání" data-provide="typeahead" autocomplete="off">
						      <span class="input-group-btn">
						        <button type="submit" class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
						      </span>
						    </form><!-- /input-group -->
		            </div>            
	            </div>

	            </div>
	            <!-- /.navbar-collapse -->
	        </div>
	        <!-- /.container -->
	    </nav>
	    </div>


<div class="container no-padding">
	<div id="notification_success_cart" class="alert alert-success" role="alert">Zboží bylo přidáno do nákupního košíku, pokračujte prosím k <a href="{$domain}/objednat">objednávce</a>.</div>
	

<div class="alert alert-danger" id="order_error">
</div>

<div class="alert alert-success" id="order_success">
</div>
</div>

