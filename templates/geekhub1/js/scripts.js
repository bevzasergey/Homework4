$(document).ready(function(){
	//focusBlurEvents("name","phone","email","info");
    $('.phone input').filter_input({regex:'[0-9-]', live:true});
//    $(".phone input").change(function() {
//        var inputs = $(this).closest('.phone').find(':input');
//        inputs.eq( inputs.index(this)+ 1 ).focus();
//    });
    var inputs = $(".phone input");
    inputs.keyup(function(e) {
        var maxchar = false;
        if ($(this).attr("maxlength")) {
            var length = parseInt($(this).val().length);
            var max = parseInt($(this).attr("maxlength"));
            if (length >= max)
            {
                maxchar = true;
            }
        if (e.keyCode == 13 || maxchar) {
            var current = inputs.index(this),
                next = inputs.eq(current+1).length ? inputs.eq(current+1) : inputs.eq(0);
            if (current != inputs.size()-1)
                next.focus();
        }
    }
    });
});

function focusBlurEvents() {
	for (var i=0; i<focusBlurEvents.arguments.length; i++) {
		jQuery('#'+focusBlurEvents.arguments[i]).focus(function(){
			jQuery(this).val() == this.defaultValue ? jQuery(this).val('') : '';
		});
		
		jQuery('#'+focusBlurEvents.arguments[i]).blur(function(){
			jQuery(this).val() == '' ? jQuery(this).val(this.defaultValue) : '';
		});
	}
}