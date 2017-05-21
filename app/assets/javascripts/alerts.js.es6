function initAlert() {
    // Toastr options
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "preventDuplicates": true,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "10000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut",
        "maxOpened": "1"
    }
}

function parseAlerts(json) {
    var $alert = $('#js-alerts'),
        messages = JSON.parse($alert.attr('data-messages')) || {},
        mode = $alert.data('options').mode,
        toasterMap = {
            'alert': 'error',
            'notice': 'success'
        };

    applyMode(mode);

    if (json !== null && json !== undefined) {
        messages = json;
    }

    Object.getOwnPropertyNames(messages).forEach(function(key) {
        if (Object.keys(toasterMap).includes(key)) {
            var message = messages[key]; // eslint-disable-line

            if (Array.isArray(message)) {
                message.forEach(function(val) {
                    toastr[toasterMap[key]](val);
                });
            } else {
                toastr[toasterMap[key]](message);
            }
        }
    });
}

function showAlert(message, key) { // eslint-disable-line
    var toasterMap = {
        'alert': 'error',
        'notice': 'success'
    };

    toastr[toasterMap[key]](message);
}

function applyMode(options) {
    var mode = options,
        modeOptions = modes()[mode];

    if (modeOptions !== undefined) {
        $.extend(toastr.options, modeOptions);
    }
}

function modes() {
    return {
        'not_close': {
            'timeOut': 0,
            'extendedTimeOut': 0
        }
    };
}

$(function() {
    initAlert();
    parseAlerts();
});
