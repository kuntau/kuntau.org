'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      options:
        livereload: true
      files: ['index.html', 'script.js', 'style.css']
    coffee:
      options:
        bare: true
      files:
        'script.js': 'script.coffee'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['watch', 'coffee']
