// hit Rails server API to obtain access token
angular.module('appServices',[])
.factory('AuthFactory',["$http", function($http) {
  token = null;

  return {

    setAccessToken: function() {
      $http.get('/profile/token')
        .then(function(response) {
          token = response.data;
      });
    },

    getAccessToken: function() {
      return token;
    }
  }

}])
