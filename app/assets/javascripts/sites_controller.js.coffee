TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"

  # sayHello: ()->
  # "Hello There Again!!"

  searchTag: (newTag)->
  console.log(newTag)
  @Tweesta.lookUp(newTag)
  .success (data) ->
    console.log(data)


TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])