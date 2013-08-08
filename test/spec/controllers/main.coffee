'use strict'

describe 'Controller: prettyFace', () ->

  # load the controller's module
  beforeEach module 'dotcom'

  scope = {}
  httpBackend = {}
  controller= {}

  # Initialize $httpBackend service
  beforeEach inject ($httpBackend, $rootScope, $controller) ->
    httpBackend = $httpBackend
    httpBackend.when('GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json').respond
      response: 'response'

    # Initialize the controller and a mock scope
    scope = $rootScope.$new()
    prettyFace = $controller 'prettyFace', {
      $scope: scope
    }

  afterEach ->
    httpBackend.flush()
    httpBackend.verifyNoOutstandingExpectation()
    httpBackend.verifyNoOutstandingRequest()

  # name length
  it 'should have nine characters', () ->
    expect(scope.name.length).toBe 9;

  # assign title to scope 

  # assign artist to scope 
  
  # $http call to last.fm - this should be in another controller
  it 'should make the $http get call to last.fm', () ->
    httpBackend.expectGET 'GET', 'http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=sugrcuki&api_key=4b94553f11090b7919dd36523370cd4f&format=json'
