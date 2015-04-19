angular.module('app', ["appServices"])
.controller("ProfileIndexCtrl", ['$http','$scope','ProfileFactory',
  function($http, $scope, ProfileFactory) {
    ProfileFactory.getProfile().then(function(response) {
      $scope.profile = response.data.characters[0];
      $scope.name = $scope.profile.name
      $scope.id = $scope.profile.id
    });
  }


]);