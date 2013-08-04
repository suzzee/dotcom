'use strict'

angular.module('dotcom')
  .controller 'scrobbleController', ($scope, $http) ->
    $http.get('http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json').success ->
      $scope.scrobble = data
    
