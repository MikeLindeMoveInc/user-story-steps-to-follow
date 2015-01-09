gulp = require 'gulp'
mocha = require 'gulp-mocha'
karma = require 'gulp-karma'

# Test the server code
gulp.task 'test-server-specs', ->
  gulp.src [
      './test/server/spec/**/*.coffee'
    ], {read: false}
    .pipe mocha()

# Watch the server spec files and execute the server tests when they change
gulp.task 'watch-server-specs', ->
  gulp.watch [
      'test/server/spec/**/*.coffee'
    ],
    [
      'test-server-specs'
    ]

# Test the client code
gulp.task 'test-client-specs', ->
  gulp.src [
    './test/client/spec/**/*.js'
  ], {read: false}
  .pipe karma {
    configFile: './test/client/karma.conf.js'
    action: 'run'
  }
  .on 'error', (err) ->
    throw err

# Watch the client spec files and execute the client tests when they change
gulp.task 'watch-client-specs', ->
  gulp.src [
    './test/client/spec/**/*.js'
  ], {read: false}
  .pipe karma {
    configFile: './test/client/karma.conf.js'
    action: 'watch'
  }

# Launch the tests
gulp.task 'test', [
  'test-server-specs',
  'test-client-specs'
]

# This is the task to be executed when developing
gulp.task 'dev', [
  'test-server-specs',
  'watch-server-specs',
  'watch-client-specs'
]