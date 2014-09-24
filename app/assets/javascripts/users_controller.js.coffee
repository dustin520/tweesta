UserControllers = angular.module("UserControllers", [])

class UsersCtrl

  constructor: (@scope, @http, @location)->
    @greeting = "hello world!"

  createUser: (newUser) ->
    console.log(newUser)
    @http.post("/users.json", {user: newUser})
    .success (data) =>
      console.log("USER DATA", data)
    @location.path("/")






UserControllers.controller("UsersCtrl", ["$scope", "$http", "$location", UsersCtrl])


