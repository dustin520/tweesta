TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"

  # sayHello: ()->
  # "Hello There Again!!"

  searchTag: (newTag)->
    console.log(newTag)
    @Tweesta.lookUp(newTag)
<<<<<<< HEAD
    .success (data) ->
      console.log(data)
=======
    .success (data) =>
      # console.log(data)
      @results = data
>>>>>>> 323250f5befd6b708e3a7ef4aea156db77ecb856


TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])