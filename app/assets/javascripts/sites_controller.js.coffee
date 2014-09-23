TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"

  # sayHello: ()->
  # "Hello There Again!!"

  searchTag: (newTag)->
    # console.log(newTag)
    @Tweesta.lookUp(newTag)
    .success (data) =>
      # console.log(data)
      @saved = []
      @results = data
      @saved.push(@results)
      console.log("saved:" + @saved)
      console.log(@saved)

      # console.log("newTag " + newTag)

  loadMore: (newTag) ->
    @Tweesta.lookUp(newTag)
    .success (data) =>
      console.log("LOAD MORE: " + newTag)
      @results = data



TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])