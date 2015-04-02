<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Static map</title>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
  <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
  <script>
    $(document).ready(function(){
      var url = GMaps.staticMapURL({
        size: [610, 350],
        lat: -12.043333,
        lng: -77.028333
      });
      $('<img/>').attr('src', url).appendTo('#map');
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Static map</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>You can easily make a static map using GMaps.js:</p>
      <pre>url = GMaps.staticMapURL({
  size: [610, 350],
  lat: -12.043333,
  lng: -77.028333
});

$('&lt;img/&gt;').attr('src', url)
  .appendTo('#map');</pre>
      <p>You must define a <strong>size</strong> and the <strong>latitude</strong> and <strong>longitude</strong> of the map's center.</p>
      <p><span class="label notice">Note: </span> You also can define <strong>zoom</strong> (by default is 15, unless zoom is set to false, in which case Google will set zoom based on marker positions).</p>
    </div>
  </div>
</body>
</html>