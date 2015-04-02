(function() {
  "use strict";

  angular.module("app").controller("charactersCtrl", function($scope, $http){


  $scope.fetchData = function() {
    $http.get("/api/v1/characters.json").then(function(response) {
      $scope.characters = response.data["characters"];
    });
  };

  $scope.addCharacter = function(newFirstName, newLastName, newBio) {
    var character = {
      first_name: newFirstName,
      last_name: newLastName,
      bio: newBio
    };

    $http.post('api/v1/characters.json', character).then(function(response) {
        $scope.characters.push(character);
        $scope.newCharacterFirstName = null;
        $scope.newCharacterLastName = null;
        $scope.newCharacterBio = null;
      }, function(error) {
        $scope.errors = error.data.errors;
      });  
  
  };

  $scope.descending = true;

  $scope.changeOrder = function(attribute) {
  $scope.orderByAttribute = attribute;
  $scope.descending = !$scope.descending;
  };

  window.scope = $scope; 

  });

}());