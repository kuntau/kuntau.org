var ContentCtrl, app;

app = angular.module('KuntauOrg', []);

app.controller('ContentCtrl', ContentCtrl = (function() {
  function ContentCtrl() {}

  ContentCtrl.prototype.technology_stacks = [
    {
      name: 'node.js',
      url: 'http://nodejs.org',
      icon: 'fa-cog'
    }, {
      name: 'coffeescript',
      url: 'http://coffeescript.org',
      icon: 'fa-coffee'
    }, {
      name: 'angularjs',
      url: 'http://angularjs.org',
      icon: 'fa-envelope'
    }, {
      name: 'bootstrap',
      url: 'http://getbootstrap.com',
      icon: 'fa-barcode'
    }, {
      name: 'jade',
      url: 'http://jade-lang.org',
      icon: 'fa-tint'
    }, {
      name: 'stylus',
      url: 'http://learnboost.github.io/stylus',
      icon: 'fa-adjust'
    }
  ];

  ContentCtrl.prototype.openDoor = function() {
    return alert('yoooo');
  };

  ContentCtrl.prototype.face = 'facepalm';

  ContentCtrl.prototype.foot = {
    fp: 'footplant',
    f: 'footage'
  };

  return ContentCtrl;

})());

app.filter('nativesort', function() {
  return function(input, options) {
    return input.sort();
  };
});

app.filter('reverse', function() {
  return function(input, options) {
    return input.split('').reverse().join('');
  };
});

$('#webpresence a').tooltip({
  animation: false,
  trigger: 'hover',
  placement: 'right',
  title: 'ContentCtrl.face',
  delay: 200,
  html: false
});

$('#popover').popover({
  animation: false,
  html: true,
  trigger: 'hover',
  placement: 'bottom',
  content: '<img src="http://lorempixel.com/200/200/cats" />'
});
