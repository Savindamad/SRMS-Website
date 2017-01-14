$(document).ready(function () {
    $('#accept').click(function (event) {
        $.ajax({
            type: "POST",
            url: 'Review',
            data: {
                commentId: $('#commentId').val(),
                status: "accept"

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
                status: "reject"
            },
            success: function (responseText) {
                $('#reviews').html(responseText);
            }
        });
    });
});
function acceptFunction(id) {
    $.ajax({
        type: "POST",
        url: 'Review',
        data: {
            commentId: id,
            status: "accept"

        },
        success: function (responseText) {
            $('#reviews').html(responseText);
        }
    });
}
function rejectFunction(id) {
    $.ajax({
        type: "POST",
        url: 'Review',
        data: {
            commentId: id,
            status: "reject"

        },
        success: function (responseText) {
            $('#reviews').html(responseText);
        }
    });
}

