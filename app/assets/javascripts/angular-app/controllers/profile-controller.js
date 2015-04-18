angular.module('app.sc2')
.controller("ProfileIndexCtrl", ['$http','$scope','AuthService',
  function($http, $scope, AuthService) {
    console.log('ProfileCtrl running');
    $scope.greeting = "Hello angular and rails";
    AuthService.getAccessToken();
  }


]);