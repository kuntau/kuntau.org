#my cup of coffee

app = angular.module 'KuntauOrg', []

app.controller 'ContentCtrl',
  class ContentCtrl
    technology_stacks : [
      name: 'node.js'
      url: 'http://nodejs.org'
      icon: 'fa-cog'
    ,
      name: 'coffeescript'
      url: 'http://coffeescript.org'
      icon: 'fa-coffee'
    ,
      name: 'angularjs'
      url: 'http://angularjs.org'
      icon: 'fa-envelope'
    ,
      name: 'bootstrap'
      url: 'http://getbootstrap.com'
      icon: 'fa-barcode'
    ,
      name: 'jade'
      url: 'http://jade-lang.org'
      icon: 'fa-tint'
    ,
      name: 'stylus'
      url: 'http://learnboost.github.io/stylus'
      icon: 'fa-adjust'
    ]
    openDoor: () ->
      alert 'yoooo'
    face: 'facepalm'
    foot:
      fp: 'footplant'
      f:  'footage'

app.filter 'nativesort', () ->
  (input, options) -> input.sort()

app.filter 'reverse', () ->
  (input, options) -> input.split('').reverse().join('')

$('#webpresence a').tooltip({
  animation: false
  trigger: 'hover'
  placement: 'right'
  title: 'ContentCtrl.face'
  delay: 200
  html: false
})

$('#popover').popover({
  animation: false
  html: true
  trigger: 'hover'
  placement: 'bottom'
  content: '<img src="http://lorempixel.com/200/200/cats" />'
})
