<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Styled Maps</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="${rootPath}/resources/js/gmaps/gmaps.js"></script>
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/gmaps/examples.css" />
    <script>
        $(function () {
          var map = new GMaps({
          el: "#map",
          lat: 41.895465,
          lng: 12.482324,
          zoom: 5, 
          zoomControl : true,
          zoomControlOpt: {
            style : "SMALL",
            position: "TOP_LEFT"
          },
          panControl : true,
          streetViewControl : false,
          mapTypeControl: false,
          overviewMapControl: false
        });
        
        var styles = [
            {
              stylers: [
                { hue: "#00ffe6" },
                { saturation: -20 }
              ]
            }, {
                featureType: "road",
                elementType: "geometry",
                stylers: [
                    { lightness: 100 },
                    { visibility: "simplified" }
              ]
            }, {
                featureType: "road",
                elementType: "labels",
                stylers: [
                    { visibility: "off" }
              ]
            }
        ];
        
        map.addStyle({
            styledMapName:"Styled Map",
            styles: styles,
            mapTypeId: "map_style"  
        });
        
        map.setStyle("map_style");
      });
    </script>
  </head>
  <body>
    <h1>GMaps.js style extension - Styled Maps</h1>
    <div class="row">
      <div class="span11">
        <div id="map"></div>
      </div>
      <div class="span6">
        <p>You can easily manage a map style using GMaps.js:</p>
        <pre> var styles = [
  {
    featureType: "road",
    elementType: "geometry",
    stylers: [
      { lightness: 100 },
      { visibility: "simplified" }
    ]
  }, {
    ...
  }
];

map.addStyle({
    styledMapName:"Styled Map",
    styles: styles,
    mapTypeId: "map_style"  
});

map.setStyle("map_style");</pre>
        <p><span class="label notice">Note: </span>You can choose <strong>different styles</strong> and associate the styled map with the <strong>MapTypeId</strong> and set it to display.</p>
      </div>
    </div>
  </body>
</html>
