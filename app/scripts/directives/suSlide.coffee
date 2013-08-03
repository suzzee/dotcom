dotCom.directive 'suSlide', factory = () ->
  template: '<div>test slide</div>'
  restrict: 'E'
  replace: true
  transclude: true
  link: (s, e, a) ->
    slide = angular.element e.children().eq(0)
    log = ->
      console.log 'keydown accomplished'
    slide.bind 'keydown', log
