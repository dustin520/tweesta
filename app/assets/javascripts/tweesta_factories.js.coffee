TweestaFactories = angular.module("TweestaFactories", [])


TweestaFactories.factory("Tweesta", ["$http", ($http)->
  return {
    lookUp: (newTag) ->
      console.log(newTag)
      $http.post("/search.json", {tag: newTag})
  }
])