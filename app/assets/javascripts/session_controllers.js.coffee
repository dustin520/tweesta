SessionControllers = angular.module("SessionControllers", [])


class SessionsCtrl

  constructor: (@scope, @http, @location, @rootScope)->
    @greeting = "hello session!"

  loginUser: (logUser) ->
    console.log("login user", logUser)
    @http.post("/login.json", {user: logUser})
    .success (data) =>
    @location.path("/")



SessionControllers.controller("SessionsCtrl", ["$scope", "$http", "$location", "$rootScope", SessionsCtrl])


