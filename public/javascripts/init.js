// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.noConflict();
jQuery(document).ready(function(){

});


function apagarItemExistente(id){
	if(jQuery("#"+id+"_item"))
		jQuery("#"+id+"_item").remove();
}