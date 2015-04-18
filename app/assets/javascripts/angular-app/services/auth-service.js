// hit Rails server API to obtain access token
angular.module('appServices',[])
.factory('AuthFactory',["$http", function($http) {
  token = null;

  return {
    getAccessToken: function() {
      return $http.get('/profile/token')
    }
  }

}])
