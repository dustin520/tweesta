TweestaRouter = angular.module("TweestaRouter", [
  "ngRoute"
])

class Router
  
  constructor: (@routeProvider, @locationProvider)->
    console.log("Initialized Router")
    console.log("Setting Up")
    @routeProvider
      .when "/",
        templateUrl: "/site_templates",
        controller: "TweestasCtrl as tweestas"


    @locationProvider.html5Mode(true)

TweestaRouter.config(["$routeProvider", "$locationProvider", Router])

TweestaRouter.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]