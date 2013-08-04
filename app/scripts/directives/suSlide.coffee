angular.module('dotcom')
  .directive 'slide', factory = () ->
    template: '<div>hello!</div>'
    restrict: 'E'
    replace: true
    transclude: true
    link: (s, e, a) ->
      slide = angular.element e.children().eq(0)
      log = ->
        console.log 'slide'
      slide.bind 'keydown', log
