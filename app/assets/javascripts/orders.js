//= require jquery.elevateZoom-3.0.8.min

$( document ).on('click', '.js-buy-btn', makePay);

$( document ).on('click', '.pay-backwrap, .js-closepay-btn, .js-qiwi-pay', togglePayWindow);

$(function (){
  $('label[for=\'paymentType_AC\']').closest('.payway').css({'border-color': '#0275d8', 'box-shadow': '0 0 10px #0275d8'});
  $('#zoom_01').elevateZoom({
  zoomType				: "inner",
  cursor: "crosshair"
});
});

function makePay(event){
  if($('#pay_fields').length > 0){
    event.preventDefault();
    event.stopPropagation();
    $('#pay_fields').removeAttr('id');
    $('.js-buy-btn').removeAttr('data-toggle');
    $('.js-buy-btn').removeAttr('data-target');
  }else{
    if($('input[type=\'radio\']:checked').attr('id') === 'paymentType_QIWI' && $('.js-pay-email')[0].checkValidity()){
      event.preventDefault();
      event.stopPropagation();
      togglePayWindow();
    }
  }
}
function togglePayWindow(event){
  $('.paywindow, .pay-backwrap').toggleClass('hidden-xs-up');
  if($(this).hasClass('js-qiwi-pay')){
    swal("Благодарим за покупку!", "При успешной оплате вам на почту будут отправлены все данные от аккаунта.", "success");
  }
}
