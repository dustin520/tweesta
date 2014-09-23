TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta)->
    @greeting = "hello world!"
    @saved = []
    @tagArray = []

  # sayHello: ()->
  # "Hello There Again!!"

  # AJAX call to API
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


  # AJAX call to API again for more DATA
  loadMore: (newTag) ->
    @Tweesta.lookUp(newTag)
    .success (data) =>
      console.log("LOAD MORE: " + newTag)
      @results = data
      @saved.push(@results)
      console.log("saved:" + @saved)
      console.log(@saved)



TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", TweestasCtrl])