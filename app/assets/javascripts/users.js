(function($){

	$(document).on('ajax:beforeSend', function(event, xhr, settings) {
		$("#spinner").show();
		console.log("spinnershow")
	});

	$(document).on('ajax:complete', function(event, xhr, settings) {
		setTimeout(function(){
			$("#spinner").hide();
			console.log("spinnerhide")
		}, 1000);
	});

	})(jQuery);