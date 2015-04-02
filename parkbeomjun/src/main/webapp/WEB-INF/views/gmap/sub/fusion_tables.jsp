<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Fusion Tables layers</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script type="text/javascript">
    var map, infoWindow;
    $(document).ready(function(){
      infoWindow = new google.maps.InfoWindow({});
      map = new GMaps({
        el: '#map',
        zoom: 11,
        lat: 41.850033,
        lng: -87.6500523
      });
      map.loadFromFusionTables({
        query: {
          select: '\'Geocodable address\'',
          from: '1mZ53Z70NsChnBMm-qEYmSDOvLXgrreLTkQUvvg'
        },
        suppressInfoWindows: true,
        events: {
          click: function(point){
            infoWindow.setContent('You clicked here!');
            infoWindow.setPosition(point.latLng);
            infoWindow.open(map.map);
          }
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Fusion Tables layers</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>GMaps.js allows to add Fusion Table layers:</p>
      <pre>infoWindow = new google.maps.InfoWindow({});
map.loadFromFusionTables({
  query: {
    select: '\'Geocodable address\'',
    from: '1mZ53Z70NsChnBMm-qEYmSDOvLXgrreLTkQUvvg'
  },
  suppressInfoWindows: true,
  events: {
    click: function(point){
      infoWindow.setContent('You clicked here!');
      infoWindow.setPosition(point.latLng);
      infoWindow.open(map.map);
    }
  }
});</pre>
      <p>
        <span class="label notice">Note: </span> You can learn more about Fusion Table layers <a href="https://developers.google.com/maps/documentation/javascript/layers#FusionTables">here</a>.</p>
    </div>
  </div>
</body>
</html>
