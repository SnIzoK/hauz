// function myMap() {
//   var mapCanvas = document.getElementById("map");
//   var mapOptions = {
//     center: new google.maps.LatLng(49.841910, 24.031556),
//     zoom: 5
//   };
// var map = new google.maps.Map(mapCanvas, mapOptions);
// }

var initialize, map;

map = void 0;

initialize = function() {
  var $map, address, city, contentString, infowindow, lat, lng, mapOptions, marker, myLatlng, styledMap, styles;
  $map = $('#map');
  lat = "49.815942"
  lng = "24.140180"
  address = $map.attr('data-address');
  city = $map.attr('data-city');
  myLatlng = new google.maps.LatLng(lat, lng);
  styles = [
    {
      stylers: [
        {
          "Saturation": "-100"
        }
      ]
    }
  ];
  styledMap = new google.maps.StyledMapType(styles, {
    name: "Styled Map"
  });
  mapOptions = {
    zoom: 17,
    center: myLatlng,
    scrollwheel: false,
    mapTypeIds: [google.maps.MapTypeId.ROADMAP, "map_style"]
  };
  map = new google.maps.Map(document.getElementById('map'), mapOptions);
  map.mapTypes.set("map_style", styledMap);
  map.setMapTypeId("map_style");
  contentString = "<div id=\"content\">" + "<div id=\"siteNotice\">" + "</div><div class=\"info-window\"><div class=\"address\"><p class=\"infowindow\">Grand House</p><p>" + address + "</p></div></div>" + "</div>";
  infowindow = new google.maps.InfoWindow({
    content: contentString
  });
  marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title: 'Vunnuki',
    icon: 'assets/GH-location-icon.png'
  });
  return google.maps.event.addListener(marker, 'click', function() {
    return infowindow.open(map, marker);
  });
};

google.maps.event.addDomListener(window, 'load', initialize);

google.maps.event.addDomListener(window, 'resize', function() {
  var center;
  center = map.getCenter();
  google.maps.event.trigger(map, 'resize');
  return map.setCenter(center);
});