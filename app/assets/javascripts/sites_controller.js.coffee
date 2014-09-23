TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"
    @saved = []
    @tagArray = []

  # sayHello: ()->
  # "Hello There Again!!"

  searchTag: (newTag)->
    console.log(newTag)
    @Tweesta.lookUp(newTag)

    .success (data) =>
      @tagArray.push("#" + newTag)
      # console.log("tagarray: " + @tagArray)
      
      console.log("data", data)
      @results = data
      @saved.push(@results)
      console.log("saved: ", @saved)
      # console.log(@saved)
      # console.log("newTag " + newTag)



  loadMore: (newTag) ->
    @Tweesta.lookUp(newTag)
    .success (data) =>
      console.log("LOAD MORE: " + newTag)
      @results = data
      @saved.push(@results)
      console.log("saved:" + @saved)
      console.log(@saved)

  saveTag: (pushTag) -> 
    @tagArray.push.$scope(pushTag)



TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])