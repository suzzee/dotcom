'use strict'

angular.module('ngSeedApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'prettyFace'
      .otherwise
        redirectTo: '/'
