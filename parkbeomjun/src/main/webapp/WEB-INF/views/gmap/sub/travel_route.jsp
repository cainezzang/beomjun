<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Travel Route</title>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script type="text/javascript">
    var map;
    var route;
    $(document).ready(function(){
      $('#forward').attr('disabled', 'disabled');
      $('#back').attr('disabled', 'disabled');
      $('#get_route').click(function(e){
        e.preventDefault();
        map.getRoutes({
          origin: [map.markers[0].getPosition().lat(), map.markers[0].getPosition().lng()],
          destination: [map.markers[map.markers.length-1].getPosition().lat(), map.markers[map.markers.length-1].getPosition().lng()],
          callback: function(e){
            route = new GMaps.Route({
              map: map,
              route: e[0],
              strokeColor: '#336699',
              strokeOpacity: 0.5,
              strokeWeight: 10
            });
            $('#forward').removeAttr('disabled');
            $('#back').removeAttr('disabled');
          }
        });
        $('#forward').click(function(e){
          e.preventDefault();
          route.forward();

          if(route.step_count < route.steps_length)
            $('#steps').append('<li>'+route.steps[route.step_count].instructions+'</li>');
        });
        $('#back').click(function(e){
          e.preventDefault();
          route.back();

          if(route.step_count >= 0)
            $('#steps').find('li').last().remove();
        });
      });
      map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333,
        zoom: 16,
        height: '500px',
        click: function(e){
          map.addMarker({
            lat: e.latLng.lat(),
            lng: e.latLng.lng()
          });
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Travel route</h1>
  <div class="row">
    <div class="span16">
      <div id="map" class="large"></div>
    </div>
    <div class="span5">
      <div class="row">
        <a href="#" class="btn" id="get_route">Get route</a>
        <a href="#" class="btn" id="back">&laquo; Back</a>
        <a href="#" class="btn" id="forward">Forward &raquo;</a>
      </div>
      <div class="row">
        <ul id="steps">
        </ul>
      </div>
    </div>
  </div>
</body>
</html>