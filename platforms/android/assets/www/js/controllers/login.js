/**
 * Created by osei on 4/6/15.
 */
/* Iss -> Ionic Strongloop Starter*/
//angular.module('looper.login', ['lbServices', 'ionic'])
//    .controller('LogInCtrl', function ($scope, User, $location, $ionicPopup) {

angular.module('Iss.Controllers')
.controller('LogInCtrl', function ($scope, User, $ionicPopup,$state) {
		$scope.user = {};
		
		$scope.showAlert = function (title, errorMsg) {
            var alertPopup = $ionicPopup.alert({
                title: title,
                template: errorMsg
            });
            alertPopup.then(function (res) {
                console.log($scope.loginError);
            });
        };
		
		$scope.login = function () {
            $scope.loginResult = User.login({include: 'user', rememberMe: true}, $scope.user,
				function(data) {
					//var next = $location.nextAfterLogin || 'tabs.home';
                    //$location.nextAfterLogin = null;
					//$scope.showAlert("Next",next);
					//(next);
                   $state.go("tabs.home");
				},
				function(data) {
					$scope.showAlert(
						'Login failed!',
						'Please check your credentials!'
					);
				}
			);
		}
})