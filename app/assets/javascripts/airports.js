function makeMap() {
  // initialize the map on the "map" div with a given center and zoom
  L.mapbox.accessToken = $('body').data('mapboxToken');
  var map = L.mapbox.map('map', 'mapbox.streets')
    .setView([39.045753, -76.641273], 9);

  L.mapbox.featureLayer('/airports/map_data.json').on('ready', function(e) {
    var clusterGroup = new L.MarkerClusterGroup({
      maxClusterRadius: 35
    });
    e.target.eachLayer(function(layer) {
      clusterGroup.addLayer(layer);
    });
    map.addLayer(clusterGroup);
     map.fitBounds(clusterGroup.getBounds());
  });
}
