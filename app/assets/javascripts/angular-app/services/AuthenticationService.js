// hit Rails server API to obtain access token
angular.module('app.sc2',[])
.factory('AuthService',function($http) {
  var authService = {};

  authService.getAccessToken = function() {
    return $http.get('/profile')
      .then(function(response) {
        // console.log(response);
      });
  };

  return authService;
})
