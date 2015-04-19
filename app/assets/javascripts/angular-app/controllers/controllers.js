angular.module('app', ['appServices'])
.controller('MatchesIndexCtrl', ['$http','$scope', 'MatchesFactory', 
  function($http, $scope, MatchesFactory) {
    MatchesFactory.getMatches().then(function(response) {
      $scope.matches = response.data.matches;
    });
  }
])
.controller('ProfileIndexCtrl', ['$http','$scope','ProfileFactory',
  function($http, $scope, ProfileFactory) {
    ProfileFactory.getProfile().then(function(response) {
      $scope.profile = response.data.characters[0];
      $scope.name = $scope.profile.name
      $scope.id = $scope.profile.id
    });
  }
])



