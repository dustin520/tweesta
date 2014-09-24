SessionControllers = angular.module("SessionControllers", [])


class SessionsCtrl

  constructor: (@scope, @location)->
    @greeting = "hello session!"

    loginUser: (logUser) ->
      console.log("login user", logUser)

  # createUser: (newUser) ->
  #   console.log(newUser)
  #   @http.post("/users.json", {user: newUser})
  #   .success (data) =>
  #     console.log("USER DATA", data)
  #   @location.path("/")


SessionControllers.controller("SessionsCtrl", ["$scope", "$location", SessionsCtrl])

