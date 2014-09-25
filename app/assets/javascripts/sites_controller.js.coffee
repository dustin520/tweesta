TweestaControllers = angular.module("TweestaControllers", [])

class TweestasCtrl

  constructor: (@scope, @Tweesta, @http, @rootScope)->
    @greeting = "hello world!"
    @saved = []
    @tagArray = []


  # Show Search Bar
  tryMe: () ->
    @scope.tryNow = true
    @scope.showSearch = true

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
      # console.log("rootScope", @rootScope)
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
    console.log("rootScope.user", @rootScope.user)
    user = @rootScope.user
    if user
      @http.post("/users/#{user.id}/tags", {tag: newTag})
    #   @http.get("/users/#{user.id}.json")
    # .success (data) => 
    #   alert "hi after getting"
    #   console.log(data)

  # Clear all the images below
  deleteTag: () ->
    console.log(@saved)
    @saved = []
    @scope.renderContent = false


TweestaControllers.controller("TweestasCtrl", ["$scope", "Tweesta", "$http", "$rootScope", TweestasCtrl])