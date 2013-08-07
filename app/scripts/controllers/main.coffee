'use strict'

angular.module('dotcom')
  .controller 'prettyFace', ($scope, $http) ->
    $scope.name= [
      's', 'u', 'z', 'z', 'e', 'e', '', 'u', 'y'
    ]
    $http.get('http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json')
      .success (data) ->
	# already need to refactor this.
        $scope.title = data.recenttracks.track[0].name 
        $scope.artist = data.recenttracks.track[0].artist['#text']
        $scope.scrobble = data
      .error (data, status, headers, config) ->
        console.log data
        console.log status 
        console.log headers 
        console.log config 
