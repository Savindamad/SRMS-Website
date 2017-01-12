$(document).ready(function () {
    $('#accept').click(function (event) {
        $.ajax({
            type: "POST",
            url: 'Review',
            data: {
                commentId: $('#commentId').val(),
                status : "accept"

            },
            success: function (responseText) {
                $('#reviews').html(responseText);
            }
        });
    });
    $('#reject').click(function (event) {
        $.ajax({
            type: "POST",
            url: 'Review',
            data: {
                commentId: $('#commentId').val(),
                status : "reject"
            },
            success: function (responseText) {
                $('#reviews').html(responseText);
            }
        });
    });
});


