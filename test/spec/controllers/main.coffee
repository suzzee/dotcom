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

    $rootscope = $injector.get '$rootScope' 
    $controller = $injector.get '$controller'
    createController = ->
     $controller 'prettyFace', {'$scope': $rootScope}

   afterEach ->
     $httpBackend.verifyNoOutstandingExpectation
     $httpBackend.verifyNoOutstandingRequest

  # name length
  it 'should have nine characters', () ->
    expect(scope.name.length).toBe 9;

  # $http call to last.fm
  it 'should make the $http get call to last.fm', () ->
    $httpBackend.expectGET 'GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json'
    controller = createController
    httpBackend.flush

  # assign title to scope 

  # assign artist to scope 
