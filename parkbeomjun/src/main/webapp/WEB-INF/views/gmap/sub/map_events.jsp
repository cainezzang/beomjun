<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Map events</title>
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
        zoom: 16,
        lat: -12.043333,
        lng: -77.028333,
        click: function(e){
          alert('click');
        },
        dragend: function(e){
          alert('dragend');
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Map events</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>GMaps.js allows to define map events very easily:</p>
      <pre>map = new GMaps({
  el: '#map',
  zoom: 16,
  lat: -12.043333,
  lng: -77.028333,
  click: function(e){
    alert('click');
  },
  dragend: function(e){
    alert('dragend');
  }
});</pre>
      <p><span class="label notice">Note: </span>You can check the list of map events <a href="http://code.google.com/intl/en/apis/maps/documentation/javascript/reference.html#Map">here</a>.</p>
    </div>
  </div>
</body>
</html>
