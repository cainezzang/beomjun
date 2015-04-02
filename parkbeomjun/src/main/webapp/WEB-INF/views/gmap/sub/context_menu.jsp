<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>GMaps.js &mdash; Context menu</title>
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
      map.setContextMenu({
        control: 'map',
        options: [{
          title: 'Add marker',
          name: 'add_marker',
          action: function(e){
            console.log(e.latLng.lat());
            console.log(e.latLng.lng());
            this.addMarker({
              lat: e.latLng.lat(),
              lng: e.latLng.lng(),
              title: 'New marker'
            });
            this.hideContextMenu();
          }
        }, {
          title: 'Center here',
          name: 'center_here',
          action: function(e){
            this.setCenter(e.latLng.lat(), e.latLng.lng());
          }
        }]
      });
      map.setContextMenu({
        control: 'marker',
        options: [{
          title: 'Center here',
          name: 'center_here',
          action: function(e){
            this.setCenter(e.latLng.lat(), e.latLng.lng());
          }
        }]
      });
    });
  </script>
</head>
<body>
  <h1>GMaps.js &mdash; Context menu</h1>
  <div class="row">
    <div class="span11">
      <div id="map"></div>
    </div>
    <div class="span6">
      <p>You can define a context menu (which will show on right click) with:</p>
      <pre>map.setContextMenu({
  control: 'map',
  options: [{
    title: 'Add marker',
    name: 'add_marker',
    action: function(e){
      this.addMarker({
        lat: e.latLng.lat(),
        lng: e.latLng.lng(),
        title: 'New marker'
      });
    }
  }, {
    title: 'Center here',
    name: 'center_here',
    action: function(e){
      this.setCenter(e.latLng.lat(), e.latLng.lng());
    }
  }]
});</pre>
      <p>You must define the <strong>control</strong> that the context menu is attached (<strong>map</strong> or <strong>marker</strong>) and an array of <strong>options</strong> with <code>title</code>, <code>name</code> and <code>action</code> Inside <code>action</code> you can use <code>this</code> for the GMaps.js object (<code>map</code> in this case) and MouseEvent object <code>e</code>.</p>
    </div>
  </div>
</body>
</html>