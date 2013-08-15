'use strict'

angular.module('dotcom')
  .controller 'PaginationController', ($scope, $http) ->
    $scope.name= [
      's', 'u', 'z', 'z', 'e', 'e', '', 'u', 'y'
    ]
    $http.get('http://ws.audioscrobbler.com/2.0/?method=tag.gettopalbums&tag=pop&api_key=4b94553f11090b7919dd36523370cd4f&format=json&limit=5&page=1')
      .success (data) ->
        console.log data
      .error (data, status, headers, config) ->
        console.log status
