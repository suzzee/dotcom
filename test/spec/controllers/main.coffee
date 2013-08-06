'use strict'

describe 'Controller: prettyFace', () ->

  # load the controller's module
  beforeEach module 'dotcom'

  # prettyFace = {}
  # scope = {}

  # Initialize $httpBackend service
  beforeEach inject ($injector) ->
    $httpBackend = $injector.get '$httpBackend'
    $httpBackend.when('GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json').respond
      response: 'response'

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    prettyFace = $controller 'prettyFace', {
      $scope: scope
    }

  # name length
  it 'should have nine characters', () ->
    expect(scope.scope.length).toBe 9;

  # $http call to last.fm
  it 'should make the $http get call to last.fm', () ->
    expect(scope.scope.length).toBe 9;

  # assign title to scope 
  it 'should assign track title to scope', () ->
    expect(scope.scope.length).toBe 9;

  # assign artist to scope 
  it 'should assign track artist to scope', () ->
    expect(scope.scope.length).toBe 9;
