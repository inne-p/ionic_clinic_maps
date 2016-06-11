angular.module('Iss.Factories')
.factory('ListCat', function($http) {
  return {
    getList: function(callback){
      /*$http.get("http://localhost/mapstest/markers_id.php?id="+id).success(function(data){
        deferred.resolve(data);
        console.log(JSON.stringify(data));
     }).error(function(){
        deferred.reject();
     });
     console.log(deferred.promise);*/
     $http.get("http://127.0.0.1/mapstest/category.php").success(callback);
    }
  }
});
