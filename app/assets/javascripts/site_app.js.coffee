main = angular.module("TweestaApp", [
  "TweestaRouter",
  "TweestaControllers",
  "TweestaFactories"
  "UserRouter",
  "UserControllers",
  "SessionRouter",
  "SessionControllers"

])


main.controller "MainCtrl", ["$scope", "$http", "$rootScope", ($scope, $http, $rootScope)->

  if !$scope.current_user 
    console.log("Checking for current user")
    $http.get("/logged_in_user.json")
    .success (user)=>
      console.log "Welcome, ", user
      $rootScope.user = user


  $rootScope.sign_out = () =>
    $http.delete("/logout.json")
    .success (data) =>
      $set_user null
      $location.path("/login")


]