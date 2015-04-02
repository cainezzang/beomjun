<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Layers Maps</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true&libraries=weather"></script>
    <script src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
    <script type="text/javascript">
      var map;
      $(function () {
        map = new GMaps({
          el: "#map",
          lat: -12.043333,
          lng: -77.028333,
          zoom: 3
        });
        
        map.addLayer('weather', {
          clickable: false
        });
        map.addLayer('clouds');
      });
    </script>
  </head>
  <body>
    <h1>GMaps.js add and remove layers - Layers</h1>
    <div class="row">
      <div class="span11">
        <div id="map"></div>
      </div>
      <div class="span6">
        <p>You can easily add or remove a layer using GMaps.js:</p>
        <pre>var map = new GMaps({
  el: '#map',
  lat: -12.043333,
  lng: -77.028333
});
map.addLayer('weather', {
  clickable: false
});
map.addLayer('clouds');
</pre>
        <p><span class="label notice">Note: </span> You can choose <strong>different layers</strong>. Possible values are <strong>weather</strong>, <strong>clouds</strong>, <strong>traffic</strong>, <strong>transit</strong> and/or <strong>bicycling</strong></p>
        <p><span class="label notice">Note: </span> Be aware that you have to add the library 'weather' in the url for the weather/clouds layer: <pre>http://maps.google.com/maps/api/js?sensor=true&libraries=weather</pre></p>
        <p><span class="label notice">Note: </span> In the second param you can add your options for the layer as object.</p>
        <p><span class="label notice">Note: </span> To remove a layer you can use <pre>map.removeLayer('clouds');</pre></p>

      </div>
    </div>
  </body>
</html>
