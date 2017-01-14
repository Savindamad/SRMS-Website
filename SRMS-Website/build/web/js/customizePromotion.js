function deleteFunction(id) {
    $.ajax({
        type: "POST",
        url: 'Promotions',
        data: {
            promoId: id,
            status: "delete"
        },
        success: function (responseText) {
            $('#promoReplaceId').html(responseText);
        }
    });
}
function removeFunction(id) {
    $.ajax({
        type: "POST",
        url: 'Promotions',
        data: {
            promoId: id,
            status: "remove"
        },
        success: function (responseText) {
            $('#promoReplaceId').html(responseText);
        }
    });
}
function repostFunction(id) {
    $.ajax({
        type: "POST",
        url: 'Promotions',
        data: {
            promoId: id,
            status: "repost"
        },
        success: function (responseText) {
            $('#promoReplaceId').html(responseText);
        }
    });
}
