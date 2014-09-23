TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"

  # sayHello: ()->
  # "Hello There Again!!"

  testing: ()->c
    alert "DA FUCK?"

  searchTag: (newTag)->
    alert "JUST SEARCHED!"
    console.log(newTag)
    @Tweesta.lookUp(newTag)
    .success (data) ->
      console.log(data)


TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])