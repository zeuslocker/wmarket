$( document ).on('click', '.col-lg:has(.payway)', setPayChecked);

function setPayChecked(){
  $(".payway:has( > input[type='radio'])").css({'border-color': '#b7b7b7', 'box-shadow': 'none'});
  $(".payway:has( > input[type='radio']:checked)").css({'border-color': '#0275d8', 'box-shadow': '0 0 10px #0275d8'});
}
