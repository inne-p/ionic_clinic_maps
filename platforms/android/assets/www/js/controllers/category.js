angular.module('Iss.Controllers')
.controller('CatCtrl', function ($scope, ListCat) {
	ListCat.getList(function(data) {
        console.log(data);
        $scope.categories = data;
    });
});
