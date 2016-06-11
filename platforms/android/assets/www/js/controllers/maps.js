angular.module('Iss.Controllers',['ngCordova'])
.controller('MapsCtrl', function($scope, $stateParams, $cordovaGeolocation, Markers) {



    var map;
    var markers1 = [];
    markers1[0]=[];
    markers1[1]=[];
    markers1[2]=[];


    var options = {timeout: 10000, enableHighAccuracy: true};

    $cordovaGeolocation.getCurrentPosition(options).then(function(position){

      var latLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

      //var origin = new google.maps.LatLng( location.latitude, location.longitude ); // using google.maps.LatLng class
      //var destination = target.latitude + ', ' + target.longitude; // using string
      var destination = '-6.237698 , 106.7901005';
      var directionsService = new google.maps.DirectionsService();
      var request = {
        origin: latLng, // LatLng|string
        destination: destination, // LatLng|string
        travelMode: google.maps.DirectionsTravelMode.DRIVING
      };

      directionsService.route( request, function( response, status ) {

        if ( status === 'OK' ) {
            var point = response.routes[ 0 ].legs[ 0 ];
            alert(point.duration.text);
          //  $( '#travel_data' ).html( 'Estimated travel time: ' + point.duration.text + ' (' + point.distance.text + ')' );
        }
      } );




      map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: latLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      google.maps.event.addListenerOnce(map, 'idle', function(){
        Markers.getMarkers($stateParams.id_category,function(data) {
        var records = data;
        for (var i = 0; i < records.length; i++) {
              var record = records[i];

              var markerPos = new google.maps.LatLng(record.lat, record.lng);
                addMarker(record.id, markerPos, record.category, record.name, record.address);
                console.log("i :"+i);
        }
      });
        /*Markers.getMarkers().then(function(markers){
        var records = markers;
        for (var i = 0; i < records.length; i++) {
              var record = records[i];

              var markerPos = new google.maps.LatLng(record.lat, record.lng);
                addMarker(record.id, markerPos, record.category, record.name, record.address);
                console.log("i :"+i);



        }
      });*/
      });

      // This event listener will call addMarker() when the map is clicked.
      /*map.addListener('click', function(event) {
        addMarker(event.latLng);
      });*/

      // Adds a marker at the center of the map.
      addMarker('00', latLng, 'myposition','Me', '-');


    });



    // FOR DEVICE TESTING WITH cordova
    function onRequestSuccess(success){
    console.log("Successfully requested accuracy: "+success.message);
    $cordovaGeolocation.getCurrentPosition(options).then(function(position){

      var latLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

      //var origin = new google.maps.LatLng( location.latitude, location.longitude ); // using google.maps.LatLng class
      //var destination = target.latitude + ', ' + target.longitude; // using string
      var destination = '-6.237698 , 106.7901005';
      var directionsService = new google.maps.DirectionsService();
      var request = {
        origin: latLng, // LatLng|string
        destination: destination, // LatLng|string
        travelMode: google.maps.DirectionsTravelMode.DRIVING
      };

      directionsService.route( request, function( response, status ) {

        if ( status === 'OK' ) {
            var point = response.routes[ 0 ].legs[ 0 ];
            alert(point.duration.text);
          //  $( '#travel_data' ).html( 'Estimated travel time: ' + point.duration.text + ' (' + point.distance.text + ')' );
        }
      } );




      map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: latLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      google.maps.event.addListenerOnce(map, 'idle', function(){
        Markers.getMarkers(function(data) {
          var records = data;
          for (var i = 0; i < records.length; i++) {
                var record = records[i];

                var markerPos = new google.maps.LatLng(record.lat, record.lng);
                  addMarker(record.id, markerPos, record.category, record.name, record.address);
                  console.log("i :"+i);
          }
        });

      });

      // This event listener will call addMarker() when the map is clicked.
      /*map.addListener('click', function(event) {
        addMarker(event.latLng);
      });*/

      // Adds a marker at the center of the map.
      addMarker('00', latLng, 'myposition','Me', '-');


    });
}

function onRequestFailure(error){
    console.error("Accuracy request failed: error code="+error.code+"; error message="+error.message);
    if(error.code !== cordova.plugins.locationAccuracy.ERROR_USER_DISAGREED){
        if(window.confirm("Failed to automatically set Location Mode to 'High Accuracy'. Would you like to switch to the Location Settings page and do this manually?")){
            cordova.plugins.diagnostic.switchToLocationSettings();
        }
    }
}

/*if(window.confirm("Would you like to Enable Location with High Accuracy ?")){
  cordova.plugins.locationAccuracy.request(onRequestSuccess, onRequestFailure, cordova.plugins.locationAccuracy.REQUEST_PRIORITY_HIGH_ACCURACY);

}*/
// END SPECIAL CODE FOR DEVICE TESTING WITH CORDOVA //

// Adds a marker to the map and push to the array.
function addMarker(id,location, category, name, address) {
  console.log(location);
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });

    markers1[1].push(String(category));
    markers1[0].push(marker);
    markers1[2].push(name);
    var infoWindowContent = "<h4>" + name + "</h4>"
                            +"<p>"+address+"</p>"
                            +"<a href=\"#/clinic/"+id+"\" class=\"button button-icon icon ion-navigate\">View</a>";

    addInfoWindow(marker, infoWindowContent);
}

// Sets the map on all markers in the array.
function setMapOnAll(map) {
  alert(markers1[0]);
  alert(markers1[1]);
  for (var i = 0; i < markers1[0].length; i++) {
    markers1[0][i].setMap(map);
  }
}

function setMapOnId(map) {
  for (var i = 0; i < markers1.length; i++) {
    markers1[0][i].setMap(map);
  }
}

function setMapOnClinicType(map, category) {
  clearMarkers();
    console.log(markers1[1]);
  for (var i = 0; i < markers1[0].length; i++) {
    console.log(markers1[1][i]+" "+markers1[1][i].toLowerCase().indexOf(category.toLowerCase()));
    if(markers1[1][i].toLowerCase().indexOf(category.toLowerCase())!=0){
        markers1[0][i].setMap(null);
    }else
        markers1[0][i].setMap(map);
  }

}

function addInfoWindow(marker, message) {

    var infoWindow = new google.maps.InfoWindow({
        content: message
    });

    google.maps.event.addListener(marker, 'click', function () {
        if(infoWindow)
            infoWindow.close();
        infoWindow.open(map, marker);
    });

}
// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
  setMapOnAll(null);
}

// Shows any markers currently in the array.
function showMarkers() {
  setMapOnAll(map);
}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
  clearMarkers();
  markers1 = [];
}

$scope.getCentered = function() {
        alert(map.getCenter());
      };
$scope.showMarkers = function() {
        showMarkers();
      };
$scope.clearMarkers = function() {
        clearMarkers();
      };
$scope.deleteMarkers = function() {
        deleteMarkers();
      };




      $scope.showClinic = function(clinic) {

        alert(clinic);
        setMapOnClinicType(map, clinic);
      };

});
