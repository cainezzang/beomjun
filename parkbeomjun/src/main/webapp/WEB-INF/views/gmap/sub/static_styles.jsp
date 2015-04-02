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
        lng: -77.028333,
        styles: [{
          featureType: "all",
          elementType: "all",
          stylers: [
            { hue: '#FF0000' }
          ]
        },
        {
          featureType: "landscape",
          elementType: "all",
          stylers: [
            { hue: '#0A2D3F'},
            { saturation: 50 },
            { lightness: -10 }
          ]
        }]
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
      <p>You can use the same styles as for a normal styled map to make a static map using GMaps.js:</p>
      <pre>url = GMaps.staticMapURL({
  size: [610, 350],
  lat: -12.043333,
  lng: -77.028333
  styles: [{
    featureType: "all",
    elementType: "all",
    stylers: [
      { hue: '#FF0000' }
    ]
  },
  {
    featureType: "landscape",
    elementType: "all",
    stylers: [
      { hue: '#0A2D3F'},
      { saturation: 50 },
      { lightness: -10 }
    ]
  }]
});

$('&lt;img/&gt;').attr('src', url)
  .appendTo('#map');</pre>
    </div>
  </div>
</body>
</html>
