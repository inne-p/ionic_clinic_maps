angular.module('Iss.Factories')
.factory('Markers', function($http) {

  var markers = [];

  return {
    getMarkers: function(id_category,callback){
      $http.get("http://127.0.0.1/mapstest/markers.php?id_category="+id_category).success(callback);
    },
    getMarkId: function(id) {
      console.log("ID :"+id);
      console.log(JSON.stringify(markers));
      for (var i = 0; i <markers.length; i++) {
        console.log("ID :"+id+" Marker id "+markers[i].id+" is "+markers[i].id === parseInt(id));
        if (parseInt(markers[i].id) === parseInt(id)) {
          return markers[i];
        }
        console.log(markers[i].id);
      }
      return null;
    },
    getDetail: function(id, callback){

       $http.get("http://127.0.0.1/mapstest/markers_id.php?id="+id).success(callback);
    }
  }
});
