$(document).ready(function(){
    $('#searchBtn').click(function(event){
        var search = $('search').val();
        $.get('SearchMenu',
        {search,search},
        function(response){
            $('#imagediv').text(responce);
        });
    });
});
