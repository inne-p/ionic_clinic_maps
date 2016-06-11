/**
 * Created by osei on 4/6/15.
 */
/* Iss -> Ionic Strongloop Starter*/
angular.module('Iss.Controllers',['lbServices'])
.controller('CatCtrl', function ($scope, ListCat) {
	ListCat.getList(function(data) {
        console.log(data);
        $scope.categories = data;
    });
})
;
