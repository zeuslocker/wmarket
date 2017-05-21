$(function() {
  var $alert = $('#js-alerts'),
      messages = JSON.parse($alert.attr('data-messages')) || {},
      swalMap = {
          'alert': 'error',
          'notice': 'success'
      };
      Object.keys(messages).forEach(function(key) {
        swal(messages[key], '', swalMap[key]);
      });
});
