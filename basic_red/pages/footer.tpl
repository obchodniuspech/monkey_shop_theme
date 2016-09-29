   <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-9 col-md-9 col-xs-6">
                    <p>&copy; {$shop_name} {$actual_year}</p>
                </div>
                <div class="col-md-3 col-xs-6 pull-right text-right">
	                {$shop_copyright}
	            </div>

            </div>
        </footer>

    </div>
    <!-- /.container -->


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


<script>
	$(document).ready(function(){
		$(".right-side-menu-controler").hover(function(){
			id = $(this).attr("cateogryId");
			var arrow = $(this);


			$('.arrow').removeClass('arrow');
			$("div.right-side-menu[categoryId]").slideUp("fast",function () {
				
			});
			$("div.right-side-menu[categoryId=" + id + "]").slideDown("fast",function(){
				//arrow.addClass('arrow');
			});
		}, function(){
		});
		$(".list-group").hover(function(){
			
			}, function(){
				$('.arrow').removeClass('arrow');
				$("div.right-side-menu[categoryId]").slideUp("fast",function () {

				});
		});
	
	$('.dropdown-toggle').dropdown()
	
		
	})
	
</script> 

</body>

</html>
