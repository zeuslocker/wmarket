var fadeStart=3 // 100px scroll or less will equiv to 0 opacity
  ,fadeUntil=250 // 200px scroll or more will equiv to 0 opacity
;
$(window).bind('scroll', function(){
  fading = $('.nav-header')
  var offset = $(document).scrollTop()
      ,opacity=0
  ;
  if( offset<=fadeStart ){
      opacity=0;
      fading.css('background-color', `rgba(41, 43, 44, ${opacity})`);
  }else if( offset<fadeUntil ){
      opacity=offset/fadeUntil;
      fading.css('background-color', `rgba(41, 43, 44, ${opacity})`);
  }
});
