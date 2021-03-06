
class Router

  constructor: (@routeProvider, @locationProvider) ->

    @routeProvider
      .when "/signup",
        templateUrl: "/user_templates/new",
        controller: "UsersCtrl as users"


    @locationProvider.html5Mode(true)


UserRouter = angular.module("UserRouter", [])

UserRouter.config(["$routeProvider", "$locationProvider", Router])

UserRouter.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]