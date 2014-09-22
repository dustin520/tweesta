# # Define App
# TweestaApp = angular.module "TweestaApp", ["ngRoute"]

# # Setup angular router
# TweestaApp.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
#   $routeProvider
#    .when '/',
#       templateUrl: "/sites/index.html.erb",
#       controller: "TweestaCtrl"
#   .otherwise
#       redirectTo: "/"

#   $locationProvider.html5Mode(true).hashPrefix("#")

# ]

# # setup controller
# TweestaApp.controller "TweestaCtrl", ["$scope", "$http", ($scope, $http) -> 

#   $scope = []
#   $scope.name = "test"


# ]

# TweestaApp.config ["$httpProvider", ($httpProvider)->
#   $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
# ]