
SessionRouter = angular.module("SessionRouter", [])

class Router 

  constructor: (@routeProvider, @locationProvider)->
    console.log("Initialized Session Router")
    console.log("Setting Session Up")
    @routeProvider
      .when "/login",
        templateUrl: "/session_templates/new",
        controller: "SessionsCtrl as sessions"

    @locationProvider.html5Mode(true)

SessionRouter.config(["$routeProvider", "$locationProvider", Router])

SessionRouter.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]