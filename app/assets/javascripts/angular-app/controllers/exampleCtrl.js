angular.module('app.exampleApp').controller("ExampleCtrl", ['$scope',
  function($scope) {
    console.log('ExampleCtrl running')    
  }

  $scope.greeting = "Hello angular and rails";

]);