<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Routes</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script type="text/javascript">
    var map;
    $(document).ready(function(){
      map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333
      });
      map.drawRoute({
        origin: [-12.044012922866312, -77.02470665341184],
        destination: [-12.090814532191756, -77.02271108990476],
        travelMode: 'driving',
        strokeColor: '#131540',
        strokeOpacity: 0.6,
        strokeWeight: 6
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Routes</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>With GMaps.js you can draw a route between two points this way:</p>
      <pre>map.drawRoute({
  origin: [-12.044012922866312, -77.02470665341184],
  destination: [-12.090814532191756, -77.02271108990476],
  travelMode: 'driving',
  strokeColor: '#131540',
  strokeOpacity: 0.6,
  strokeWeight: 6
});</pre>
      <p>You must define two points (<strong>origin</strong> and <strong>destination</strong>) and color, opacity and weight of the route in the map.</p>
      <p>Also, you can define a <code>travelMode</code>: <code>driving</code>, <code>bicycling</code> or <code>walking</code>. Default is <code>walking</code></p>
    </div>
  </div>
</body>
</html>