$(function() {
	$("#search").autocomplete({
		source: "handle_request.php?request_type=autocomplete",
		minLength: 2,
		select: function(event, ui) {
			var url = ui.item.url;
			if (url != '#') {
				location.href = url;
			}
		},
	});
	
	$("#search").data("ui-autocomplete")._renderItem = function(ul, item) {
		var $li = $('<li>');
		var $img = $('<img>');
		
		$img.attr({
			src: item.icon,
			alt:  '',
			class: "autocomplete_img",
		});

		var price = item.price;
		var name = '<div class="autocomplete_name">' + item.label + '</div>';
		var price = '<div class="autocomplete_price">Price: ' + price + '</div>';
		
		$li.attr('data-value', item.label);
		$li.append('<a href="' + item.url + '" class="autocomplete_url">');
		$li.find('a').append($img).append(name).append(status).append(price);
		
		return $li.appendTo(ul);
	};
	
	$('#msg_hide').click(function() {
		$('.msg_box').fadeOut();
	});
	
	$('#error_hide').click(function() {
		$('.error_box').fadeOut();
	});
});

