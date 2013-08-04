'use strict'

describe 'Controller: prettyFace', () ->

  # load the controller's module
  beforeEach module 'dotcom'

  prettyFace = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    prettyFace = $controller 'prettyFace', {
      $scope: scope
    }

  it 'should attach a list of my name to the scope', () ->
    expect(scope.scope.length).toBe 9;
