$( document ).on('click', '.js-buy-btn', makePay);

$( document ).on('click', '.pay-backwrap, .js-closepay-btn', togglePayWindow);

$(function (){
  $('label[for=\'paymentType_AC\']').closest('.payway').css({'border-color': '#0275d8', 'box-shadow': '0 0 10px #0275d8'});
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
}
