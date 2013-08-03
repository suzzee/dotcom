'use strict'

angular.module('dotCom', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'prettyFace'
      .otherwise
        redirectTo: '/'
