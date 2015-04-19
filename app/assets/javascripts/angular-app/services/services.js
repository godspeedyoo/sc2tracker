// hit Rails server API to obtain access token
angular.module('appServices',[])
.factory('ProfileFactory',['$http', function($http) {
  return {
    getProfile: function() {
      return $http.get('profile/data');
    }
  }

}])
.factory('MatchesFactory',['$http', function($http) {
  return {
    getMatches: function() {
      return $http.get('matches/data');
    }
  }

}])
