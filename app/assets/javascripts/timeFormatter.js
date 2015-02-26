var timeFormatter = function () {

    $('time').each(function (index) {
        var formatted = moment( new Date()).calendar();
        $(this).html(formatted);
    });

};
