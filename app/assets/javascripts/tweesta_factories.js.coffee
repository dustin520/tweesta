TweestaFactories = angular.module("TweestaFactories", [])


TweestaFactories.factory("Tweesta", ["$http", ($http)->
  return {
    # test: "testVal"
  #   all: ()->
  #     console.log("Getting All!")
  #     $http.get("/books.json").success (data)->
  #       console.log(data)
  #   ,
  #   create: (newBook)->
  #     console.log(newBook)
  #     $http.post("/books.json", {book: newBook})
      
  }
])