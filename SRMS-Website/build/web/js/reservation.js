$(document).ready(function () {
    $('#reserve').click(function (event) {
        $.ajax({
            type: "POST",
            url: 'Reservation',
            data: {
                tableType: $('#type').val(),
                time: $('#time').val(),
                numOfSeats: $('#seats').val(),
                date: $('#date').val()
            },
            success: function (responseText) {
                $('#reservationInfo').html(responseText);
            }
        });
    });
});