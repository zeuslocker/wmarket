var fadeStart=10
  ,fadeUntil=450
;
$(window).bind('scrolls', function(){
  fading = $('.nav-header')
  var offset = window.pageYOffset
      ,opacity=0
  ;
  if( offset<=fadeStart ){
      opacity=0;
      fading.css('background-color', 'rgba(41, 43, 44, ' + opacity + ')');
  }else if( offset<fadeUntil ){
      opacity=offset/fadeUntil;
      fading.css('background-color', 'rgba(41, 43, 44, ' + opacity + ')');
  }
});

$(function(){
  fading = $('.nav-header')
  var offset = window.pageYOffset;
  var opacity=offset/fadeUntil;
  fading.css('background-color', 'rgba(41, 43, 44, ' + opacity + ')');
});
