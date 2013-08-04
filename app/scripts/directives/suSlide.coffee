angular.module('dotcom')
  .directive 'slide', factory = () ->
    template: '<div class="slide br"><p class="heading">{{thing}}</p></div>'
    restrict: 'E'
    replace: true
    transclude: true
    link: (s, e, a) ->
      slide = angular.element e.children().eq(0)
      log = ->
        console.log 'slide'
      slide.bind 'keydown', log
