angular.module('dotcom')
  .directive 'listeningto', factory = ($http) ->
    templateUrl: 'views/partials/listeningto.html'
    restrict: 'E'
    replace: true
    transclude: true
    scope: true
    controller: ($scope) ->
      $http.get('http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json')
        .success (data) ->
   	  # already need to refactor this.
          $scope.title = data.recenttracks.track[0].name 
          $scope.artist = data.recenttracks.track[0].artist['#text']
          $scope.scrobble = data
        .error (data, status, headers, config) ->
          console.log 'error' 
    link: (s, e, a) ->
      listenDiv = e
      listenDiv.addClass('fadeInUp')
