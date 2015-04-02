<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Custom controls</title>
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
        lng: -77.028333
      });
      map.addControl({
        position: 'top_right',
        content: 'Geolocate',
        style: {
          margin: '5px',
          padding: '1px 6px',
          border: 'solid 1px #717B87',
          background: '#fff'
        },
        events: {
          click: function(){
            GMaps.geolocate({
              success: function(position){
                map.setCenter(position.coords.latitude, position.coords.longitude);
              },
              error: function(error){
                alert('Geolocation failed: ' + error.message);
              },
              not_supported: function(){
                alert("Your browser does not support geolocation");
              }
            });
          }
        }
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Custom controls</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>GMaps.js allows to add custom controls:</p>
      <pre>map.addControl({
  position: 'top_right',
  text: 'Geolocate',
  style: {
    margin: '5px',
    padding: '1px 6px',
    border: 'solid 1px #717B87',
    background: '#fff'
  },
  events: {
    click: function(){
      console.log(this);
    }
  }
});</pre>
      <p>
        <span class="label notice">Note: </span> You can use the following positions:
        <ul>
          <li>top_center</li>
          <li>top_left</li>
          <li>top_right</li>
          <li>left_top</li>
          <li>right_top</li>
          <li>left_center</li>
          <li>right_center</li>
          <li>left_bottom</li>
          <li>right_bottom</li>
          <li>bottom_center</li>
          <li>bottom_left</li>
          <li>bottom_right</li>
        </ul>
        You can learn more of custom controls <a href="https://developers.google.com/maps/documentation/javascript/controls">here</a>.</p>
    </div>
  </div>
</body>
</html>
