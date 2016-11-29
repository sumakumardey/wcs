
var map, heatmap;

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: {
      lat: 11.299,
      lng: -0.209
    },
    mapTypeId: 'satellite'
  });

  heatmap = new google.maps.visualization.HeatmapLayer({
    data: getPoints2(),
    map: map
  });
}

function toggleHeatmap() {
  heatmap.setMap(heatmap.getMap() ? null : map);
}

function changeGradient() {
  var gradient = [
    'rgba(0, 255, 255, 0)',
    'rgba(0, 255, 255, 1)',
    'rgba(0, 191, 255, 1)',
    'rgba(0, 127, 255, 1)',
    'rgba(0, 63, 255, 1)',
    'rgba(0, 0, 255, 1)',
    'rgba(0, 0, 223, 1)',
    'rgba(0, 0, 191, 1)',
    'rgba(0, 0, 159, 1)',
    'rgba(0, 0, 127, 1)',
    'rgba(63, 0, 91, 1)',
    'rgba(127, 0, 63, 1)',
    'rgba(191, 0, 31, 1)',
    'rgba(255, 0, 0, 1)'
  ]
  heatmap.set('gradient', heatmap.get('gradient') ? null : gradient);
}

function changeRadius() {
  heatmap.set('radius', heatmap.get('radius') ? null : 20);
}

function changeOpacity() {
  heatmap.set('opacity', heatmap.get('opacity') ? null : 0.2);
}

// Heatmap data: 500 Points
function getPoints() {
  return [
    new google.maps.LatLng(11.2991, -0.1992),
    new google.maps.LatLng(11.2875, -0.2039),
    new google.maps.LatLng(11.2841, -0.2065),
    new google.maps.LatLng(11.2795, -0.21),
    new google.maps.LatLng(11.2779, -0.2135),
    new google.maps.LatLng(11.2864, -0.2237),
    new google.maps.LatLng(11.2991, -0.1992),
    new google.maps.LatLng(11.2875, -0.2039),
    new google.maps.LatLng(11.2841, -0.2065),
    new google.maps.LatLng(11.2795, -0.21),
    new google.maps.LatLng(11.2779, -0.2135),
    new google.maps.LatLng(11.2864, -0.2237),
    new google.maps.LatLng(11.41513749, -0.101997368),
    new google.maps.LatLng(11.747215083, -0.26350013)
  ];
}

function getWCSData() {
  var returnData = null;
  var config = {
      delimiter: ",",
      header: true,
      skipEmptyLines: true,
      dynamicTyping: true
  };
  $.ajax({ 
     async: false,
     type: "GET",
     crossDomain: true,
     dataType: "text",
     url: "https://hackathon1.smartconservationtools.org:8443/server/api/query/4c4facd2-50bc-4533-8b30-26dc84828e61?format=csv&date_filter=waypointdate",
    headers: {
      "authorization": "Basic aGFja2F0aG9uMTphMVNMIUhWMA==",
      "cache-control": "no-cache"
    },
     success: function(data){        
       returnData = Papa.parse(data, config);
     }
  });

  return returnData;
}

function getPoints2() {
  var mapData = [],
    rawData = getWCSData();
    //console.log(rawData.data[0])
  for (var i = 0, len = rawData.data.length; i < len; i++) {
    //console.log(rawData.data[i].X);
    mapData.push(new google.maps.LatLng(rawData.data[i].X, rawData.data[i].Y));
  }
  //console.log(mapData.length);
  //$.each(rawData, function(index, value){
  //  console.log(index)
  //  console.log(value)
  //})
  return mapData
}