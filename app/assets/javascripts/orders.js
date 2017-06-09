$( document ).on('click', '.js-buy-btn', makePay);

$( document ).on('click', '.pay-backwrap, .js-closepay-btn', togglePayWindow);

$(function (){
  $('label[for=\'paymentType_AC\']').closest('.payway').css({'border-color': '#0275d8', 'box-shadow': '0 0 10px #0275d8'});
});

function makePay(event){
  if($('input[type=\'radio\']:checked').attr('id') === 'paymentType_QIWI' && $('.js-pay-email')[0].checkValidity()){
    event.preventDefault();
    event.stopPropagation();
    togglePayWindow();
  }
}
function togglePayWindow(event){
  $('.paywindow, .pay-backwrap').toggleClass('hidden-xs-up');
}
