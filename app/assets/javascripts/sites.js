var map;
function initialize() {
  var mapOptions = {
    zoom: 6,
      center: new google.maps.LatLng(0.820651576000046,-77.0904366779999),
      mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);
$(document).on('page:load', initialize);
