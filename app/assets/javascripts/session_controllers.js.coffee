SessionControllers = angular.module("SessionControllers", [])


class SessionsCtrl

  constructor: (@scope, @http, @location)->
    @greeting = "hello session!"

  loginUser: (logUser) ->
    console.log("login user", logUser)
    @http.post("/login.json", {logUser: logUser})
    .success (data) =>
      console.log("sessions data",data)
      logUser.email = ""
      logUser.password = ""
      console.log("success")
    @location.path("/")


SessionControllers.controller("SessionsCtrl", ["$scope","$http", "$location", SessionsCtrl])

