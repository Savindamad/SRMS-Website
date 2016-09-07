var mycenter=new google.maps.LatLng(6.9057865,79.86031409999998);
            function initialize() {
            var mapProp = {
            center:mycenter,
            zoom:13,
            mapTypeId:google.maps.MapTypeId.ROADMAP
            };
            
            var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);    
            var marker=new google.maps.Marker({
            position:mycenter,
            });

            marker.setMap(map);
            
            }
            google.maps.event.addDomListener(window, 'load', initialize);