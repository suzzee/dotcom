'use strict'

angular.module('dotcom', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'DotcomController'
      .when '/pagination',
        templateUrl: 'views/pagination.html'
        controller: 'PaginationController'
      .when '/forms',
        templateUrl: 'views/forms.html'
        controller: 'FormController'
      .otherwise
        redirectTo: '/'
