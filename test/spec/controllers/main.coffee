'use strict'

describe 'Controller: prettyFace', () ->

  # load the controller's module
  beforeEach module 'dotcom'

  scope = {}

  # Initialize $httpBackend service
  beforeEach inject ($controller, $rootScope, $httpBackend) ->
    httpBackend = $httpBackend.$new()
    httpBackend.when('GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json').respond
      response: 'response'

  # Initialize the controller and a mock scope

    rootscope = $rootScope.$new() 
    controller = $controller.$new()
    createController = ->
     $controller 'prettyFace', {'$scope': $rootScope}

  afterEach ->
    httpBackend.verifyNoOutstandingExpectation
    httpBackend.verifyNoOutstandingRequest

  # name length
  it 'should have nine characters', () ->
    expect(rootScope.name.length).toBe 9;

  # $http call to last.fm
  it 'should make the $http get call to last.fm', () ->
    $httpBackend.expectGET 'GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json'
    controller = createController
    httpBackend.flush

  # assign title to scope 

  # assign artist to scope 
