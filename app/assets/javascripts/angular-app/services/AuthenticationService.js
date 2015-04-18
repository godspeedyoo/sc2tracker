// hit Rails server API to obtain access token
angular.module('app.sc2',[])
.factory('AuthService',function($http) {
  var auth = {
    token: ''
  };

  return {
    getAccessToken: function() {
      return $http.get('/profile/token')
        .then(function(response) {
          auth.token = response.data;
          // console.log(auth.token);
      });
    }
  };

})
