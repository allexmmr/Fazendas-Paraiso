window.addEvent('load', function() {
	var div = Array("div.social1", "div.social2", "div.social3", "div.social4", "div.social5", "div.social6");
	var fx  = Array();
	var _start = 1;
	var _end   = 0.6;
	
	div.each(function(item, i) {
		if($E(item) == null) return false;
		
		$E(item).setStyle('opacity', _start);
		
		fx[i] = new Fx.Elements($E(item), {wait: false, duration: 500, transition: Fx.Transitions.linear  , onComplete: function(){}});
		$E(item).addEvent('mouseenter', function() {
			fx[i].start({
				'0': {'opacity': [_start, _end]}
			});
		});
		
		$E(item).addEvent('mouseleave', function() {
			fx[i].start({
				'0': {'opacity': [_end, _start]}
			});
		});
	});
});