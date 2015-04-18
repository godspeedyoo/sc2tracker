angular.module('app', ["appServices"])
.controller("ProfileIndexCtrl", ['$http','$scope','AuthFactory',
  function($http, $scope, AuthFactory) {
    console.log('ProfileCtrl running');
    $scope.greeting = "Hello angular and rails";
    debugger;
    $scope.token = AuthFactory.setAccessToken();
  }


]);