TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta, @http, @routeParams)->
    @greeting = "hello world!"
    @saved = []
    @tagArray = []


  # Show Search Bar
  


  # AJAX call to API
  searchTag: (newTag)->
    console.log(newTag)
    @Tweesta.lookUp(newTag)
    .success (data) =>
      @tagArray.push(newTag)
      # console.log("tagarray: " + @tagArray)
      # console.log("data", data)
      @scope.renderContent = true
      @results = data
      @saved.push(@results)
      # console.log("saved array: ", @saved)
      # console.log("routeParams", @routeParams)
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

  # Save tag in db for user
  saveTag: (newTag) ->
    console.log("routeParams", @routeParams.id)
    @http.get("/users/#{@routeParams.id}.json")
    .success (data) => 
      alert "hi routeParams"
      console.log(data)
    # @http.post("/users/#{@routeParams.id}.json", {tag: newTag})

  # Clear all the images below
  deleteTag: () ->
    console.log(@saved)
    @saved = []

TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", "$http", "$routeParams", TweestasCtrl])