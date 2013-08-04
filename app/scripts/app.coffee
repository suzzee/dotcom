'use strict'

angular.module('dotcom', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'prettyFace'
      .otherwise
        redirectTo: '/'
