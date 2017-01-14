$(document).ready(function () {
    $('#commentPost').click(function (event) {
        if ($('#username').val()!=""){
            $.ajax({
                url: 'AddComment',
                type: 'POST',
                data: {
                    comment: $('#comment').val(),
                    username: $('#username').val()
                },
                success: function (responseText) {
                    $('#commentRe').html(responseText);
                }
            });
            document.getElementById("comment").value = "";
        }
        else{
            alert("You have to loging!!..");
        }
    });
});

