function ZTmakeEqualHeight(divs) {
	if(!divs || divs.length < 2) return;
	var maxh = 0;
	divs.each(function(el, i){
		if($(el)) {
			var ch = $(el).getCoordinates().height;
			maxh = (maxh < ch) ? ch : maxh;
		}
	},this);
	divs.each(function(el, i){
		if($(el)) {
			$(el).setStyle('min-height', maxh - ($(el).getStyle('padding-top').toInt()) - ($(el).getStyle('padding-bottom').toInt()));		
		}
	},this);
}
window.addEvent('load', function () {
	ZTmakeEqualHeight(['zt-c-left','zt-c-content','zt-c-right']);
});