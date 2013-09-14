'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      coffee:
        files: ['script.coffee']
        tasks: ['coffee']
      stylus:
        files: ['style.styl']
        tasks: ['stylus']
      livereload:
        options:
          livereload: true
        files: ['index.html', 'script.js', 'style.css']

    coffee:
      compile:
        options:
          bare: true
        files:
          'script.js': 'script.coffee'
    stylus:
      compile:
        files:
          'style.css': 'style.styl'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-stylus'

  grunt.registerTask 'default', ['watch', 'coffee', 'stylus']
