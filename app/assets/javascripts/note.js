$(document).on('submit','form', function(){

	$.post($(this).attr('action'), $(this).serialize(), function(response){
		$('div#notes').html(response);
		$('input#title').val('');
	});
	return false;
}); 