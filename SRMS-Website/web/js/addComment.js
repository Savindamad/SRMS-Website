$(document).ready(function () {
    $('#commentPost').click(function (event) {
        if ($('#username').val()!=""){
            document.getElementById("username").value = "";
            $.ajax({
                url: 'AddComment',
                type: 'POST',
                data: {
                    comment: $('#comment').val(),
                    username: $('#username').val()
                },
                success: function (responseText) {
                }
            });
        }
        else{
            alert("You have to loging!!..");
        }
    });
});

