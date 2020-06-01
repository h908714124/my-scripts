var i = 0;
setInterval(function() {
  if (i++ === 0) {
    $('.selected').next().click();
  } else {
    $('.selected').prev().click();
  }
}, 30000)

