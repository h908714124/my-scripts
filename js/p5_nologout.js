var i = 0;
setInterval(function() {

	console.log('tick ' + i);
	if ((i++ % 2) === 0) {
		$('.selected').next().click();
	} else {
		$('.selected').prev().click();
	}

}, 120000);

