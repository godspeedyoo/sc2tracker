angular.module('appServices',[])
.service("profileService", ["$http", function($http) {
  var url = "https://us.api.battle.net/sc2/profile/user?access_token=";

  return {
    getMatches: function(token) {
      return $http.get(url + token);
    }
  }

}])