var myApp = angular.module("myApp", []);

myApp.controller("game", ["$scope", function($scope) {

$scope.number = 0;
$scope.result = "";

$scope.fizzBuzz = function(){

  if($scope.number){

      if($scope.number % 3 == 0)
      {
        return $scope.result = "Fizz";
      }
      else if($scope.number % 5 == 0)
      {
        return $scope.result = "Buzz";
      }
      else if(($scope.number % 3 == 0) && ($scope.number % 5 == 0))
      {
        return $scope.result = "FizzBuzz";
        alert($scope.result);
      }
  }else{
      return "Enter a Number";
  }

};

}]); 
