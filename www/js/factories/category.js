angular.module('Iss.Factories')
.factory('ListCat', function($http) {
  return {
    getList: function(callback){
     $http.get("http://127.0.0.1/mapstest/category.php").success(callback);
   },
   getMarkers: function(id_category,callback){
     $http.get("http://127.0.0.1/mapstest/markers.php?id_category="+id_category).success(callback);
   }
  }
});
