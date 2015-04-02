<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Geolocation</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script type="text/javascript">
    var map;
    $(document).ready(function(){
      var map = new GMaps({
        el: '#map',
        lat: -12.043333,
        lng: -77.028333
      });

      GMaps.geolocate({
        success: function(position){
          map.setCenter(position.coords.latitude, position.coords.longitude);
        },
        error: function(error){
          alert('Geolocation failed: '+error.message);
        },
        not_supported: function(){
          alert("Your browser does not support geolocation");
        },
        always: function(){
          alert("Done!");
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Geolocation</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>GMaps.js supports HTML5 Geolocation:</p>
      <pre>GMaps.geolocate({
  success: function(position){
    map.setCenter(position.coords.latitude, position.coords.longitude);
  },
  error: function(error){
    alert('Geolocation failed: '+error.message);
  },
  not_supported: function(){
    alert("Your browser does not support geolocation");
  },
  always: function(){
    alert("Done!");
  }
});</pre>
      <p><code>GMaps.geolocate</code> supports 4 functions:
      <ul>
        <li><code>success</code> (required): fires when geolocation has been successful</li>
        <li><code>error</code> (required): fires when geolocation has not been done</li>
        <li><code>not_supported</code> (required): fires when geolocation is not supported by the browser</li>
        <li><code>always</code> (optional): fires always after every scenario described above.</li>
      </ul></p>
    </div>
  </div>
</body>
</html>