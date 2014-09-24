UserControllers = angular.module("UserControllers", [])

class UsersCtrl

  constructor: (@scope)->
    @greeting = "hello world!"





UserControllers.controller("UsersCtrl", ["$scope", UsersCtrl])


