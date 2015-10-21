js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
dynamic_content = require 'dynamic-content'
roots_yaml      = require('roots-yaml')

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', '.idea/**', '.publish/**']

  debug: true
  open_browser: false
  live_reload: false

  extensions: [
    js_pipeline(files: ['assets/js/jquery.js', 'assets/js/carousel.js', 'assets/js/main.coffee'], out: 'js/build.js', minify: true, hash: true),
    css_pipeline(files: 'assets/css/*.less', out: 'css/build.css', minify: true, hash: true),
    dynamic_content(),
    roots_yaml(),
  ]
