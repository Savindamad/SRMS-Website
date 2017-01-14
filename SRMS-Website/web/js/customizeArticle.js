function deleteFunction(id) {
    $.ajax({
        type: "POST",
        url: 'CustomizeArticle',
        data: {
            articleId: id,
            status: "delete"
        },
        success: function (responseText) {
            $('#articleReplaceId').html(responseText);
        }
    });
}
function removeFunction(id) {
    $.ajax({
        type: "POST",
        url: 'CustomizeArticle',
        data: {
            articleId: id,
            status: "remove"
        },
        success: function (responseText) {
            $('#articleReplaceId').html(responseText);
        }
    });
}
function repostFunction(id) {
    $.ajax({
        type: "POST",
        url: 'CustomizeArticle',
        data: {
            articleId: id,
            status: "repost"
        },
        success: function (responseText) {
            $('#articleReplaceId').html(responseText);
        }
    });
}
