angular.module('app', ["appServices"])
.controller("ProfileIndexCtrl", ['$http','$scope','AuthFactory',
  function($http, $scope, AuthFactory) {
    console.log('ProfileCtrl running');
    $scope.greeting = "Hello angular and rails";
    AuthFactory.getAccessToken().then(function(response) {
      $scope.token = response.data;
    });
  }


]);