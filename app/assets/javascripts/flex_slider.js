$( document ).on('click', '.thumbslider__thumbitem', toggleSlider);

function toggleSlider(){
  $('.thumbslider__mainslide').attr('src', $(this).attr('src'));
}
