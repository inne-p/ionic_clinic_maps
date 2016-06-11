angular.module('Iss.Controllers')
.controller('ClinicDetailCtrl', function ($scope, $stateParams, Markers) {
  $scope.$on('$ionicView.enter', function() {
    Markers.getDetail($stateParams.clinicId,function(data) {
       $scope.marker = data;
       console.log(data);
    });
  });
  $scope.takeMe = function(){
    if( (navigator.platform.indexOf("iPhone") != -1)
        || (navigator.platform.indexOf("iPod") != -1)
        || (navigator.platform.indexOf("iPad") != -1))
         window.open("maps://maps.google.com/maps?daddr=lat,long&amp;ll=");
    else
         window.open("http://maps.google.com/maps?daddr=lat,long&amp;ll=");
  };
});
