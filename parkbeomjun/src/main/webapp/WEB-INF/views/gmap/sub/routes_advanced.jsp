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
      map.travelRoute({
        origin: [-12.044012922866312, -77.02470665341184],
        destination: [-12.090814532191756, -77.02271108990476],
        travelMode: 'driving',
        step: function(e){
          $('#instructions').append('<li>'+e.instructions+'</li>');
          $('#instructions li:eq('+e.step_number+')').delay(450*e.step_number).fadeIn(200, function(){
            map.drawPolyline({
              path: e.path,
              strokeColor: '#131540',
              strokeOpacity: 0.6,
              strokeWeight: 6
            });  
          });
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Routes</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
      <ul id="instructions">
      </ul>
    </div>
    <div class="span6">
      <p>You can travel a route, step by step, this way:</p>
      <pre>map.travelRoute({
  origin: [-12.044012922866312, -77.02470665341184],
  destination: [-12.090814532191756, -77.02271108990476],
  travelMode: 'driving',
  step: function(e){
    $('#instructions').append('&lt;li&gt;'+e.instructions+'&lt;/li&gt;');
    $('#instructions li:eq('+e.step_number+')').delay(450*e.step_number).fadeIn(200, function(){
      map.drawPolyline({
        path: e.path,
        strokeColor: '#131540',
        strokeOpacity: 0.6,
        strokeWeight: 6
      });  
    });
  }
});</pre>
      <p>Same as <code>drawRoute</code>, you must define an <strong>origin</strong>, <strong>destination</strong> and <code>travelMode</code>. Also, you must define the function that GMaps will call every step in the route.</p>
    </div>
  </div>
</body>
</html>