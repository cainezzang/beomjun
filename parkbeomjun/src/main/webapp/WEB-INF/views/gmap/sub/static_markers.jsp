<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Static map with markers</title>
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
        lng: -77.028333,
        markers: [
          {lat: -12.043333, lng: -77.028333},
          {lat: -12.045333, lng: -77.034, size: 'small'},
          {lat: -12.045633, lng: -77.022, color: 'blue'}
        ]
      });
      $('<img/>').attr('src', url).appendTo('#map');
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Static map with markers</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>With GMaps.js, a static map with markers is made this way:</p>
      <pre>url = GMaps.staticMapURL({
  size: [610, 350],
  lat: -12.043333,
  lng: -77.028333,
  markers: [
    {lat: -12.043333, lng: -77.028333},
    {lat: -12.045333, lng: -77.034, size: 'small'},
    {lat: -12.045633, lng: -77.022, color: 'blue'}
  ]
});

$('&lt;img/&gt;').attr('src', url)
  .appendTo('#map');</pre>
      <p>If no style attribute (like <strong>color</strong>, <strong>size</strong> or <strong>icon</strong>) is defined for a marker, the last one (or the default) will be used.</p>
    </div>
  </div>
</body>
</html>