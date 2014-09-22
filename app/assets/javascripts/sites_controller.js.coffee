TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl
  
  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"

    return this

  sayHello: ()->
    "Hello There Again!!"


TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])