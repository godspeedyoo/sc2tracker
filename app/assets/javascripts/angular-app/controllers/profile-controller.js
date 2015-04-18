angular.module('app', ["appServices"])
.controller("ProfileIndexCtrl", ['$http','$scope','ProfileFactory',
  function($http, $scope, ProfileFactory) {
    
    ProfileFactory.getProfile().then(function(response) {
      $scope.profile = response.data;
      // debugger;
      console.log(response.data);
    });
  }


]);