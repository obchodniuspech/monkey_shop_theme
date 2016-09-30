$( document ).ready(function() {
	$('#nav-wrapper').height($("#top-navbar").height());
	$('#top-navbar').affix({
    offset: {
        top: 189
    }   
});
});