app = angular.module('app', []);

app.config(['$httpProvider', function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-TOKEN'] = $('meta[name=csrf-token]').attr('content')
}]);

app.run(function() {
    console.log('sc2tracker app running');   
})