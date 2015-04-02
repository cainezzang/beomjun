<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Geometry overlays</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script type="text/javascript">
    var map, rectangle, polygon, circle;
    $(document).ready(function(){
      map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333
      });
      var bounds = [[-12.030397656836609,-77.02373871559225],[-12.034804866577001,-77.01154422636042]];
      rectangle = map.drawRectangle({
        bounds: bounds,
        strokeColor: '#BBD8E9',
        strokeOpacity: 1,
        strokeWeight: 3,
        fillColor: '#BBD8E9',
        fillOpacity: 0.6
      });

      var paths = [[-12.040397656836609,-77.03373871559225],[-12.040248585302038,-77.03993927003302],[-12.050047116528843,-77.02448169303511],[-12.044804866577001,-77.02154422636042]];
      polygon = map.drawPolygon({
        paths: paths,
        strokeColor: '#25D359',
        strokeOpacity: 1,
        strokeWeight: 3,
        fillColor: '#25D359',
        fillOpacity: 0.6
      });
      var lat = -12.040504866577001;
      var lng = -77.02024422636042;
      circle = map.drawCircle({
        lat: lat,
        lng: lng,
        radius: 350,
        strokeColor: '#432070',
        strokeOpacity: 1,
        strokeWeight: 3,
        fillColor: '#432070',
        fillOpacity: 0.6
      });
      for(var i in paths){
        bounds.push(paths[i]);
      }
      var b = [];
      for(var i in bounds){
        latlng = new google.maps.LatLng(bounds[i][0], bounds[i][1]);
        b.push(latlng);
      }
      for(var i in paths){
        latlng = new google.maps.LatLng(paths[i][0], paths[i][1]);
        b.push(latlng);
      }
      map.fitLatLngBounds(b);
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Geometry overlays</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>You can draw geometry overlays (which can be a polygon or a rectangle or a circle):</p>
      <pre>polygon = map.drawRectangle({
  bounds: bounds,
  strokeColor: '#BBD8E9',
  strokeOpacity: 1,
  strokeWeight: 3,
  fillColor: '#BBD8E9',
  fillOpacity: 0.6
});
polygon = map.drawPolygon({
  paths: paths,
  strokeColor: '#25D359',
  strokeOpacity: 1,
  strokeWeight: 3,
  fillColor: '#25D359',
  fillOpacity: 0.6
});
circle = map.drawCircle({
  lat: lat,
  lng: lng,
  radius: 350,  //350 meters
  strokeColor: '#432070',
  strokeOpacity: 1,
  strokeWeight: 3,
  fillColor: '#432070',
  fillOpacity: 0.6
});</pre>
      <p>Be careful with the settings as they are not the same for each overlay.</p>
    </div>
  </div>
</body>
</html>
