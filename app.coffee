js_pipeline     = require 'js-pipeline'
css_pipeline    = require 'css-pipeline'
dynamic_content = require 'dynamic-content'
roots_yaml      = require('roots-yaml')

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', '.idea/**']

  debug: true
  open_browser: false

  extensions: [
    js_pipeline(files: ['assets/js/jquery.js', 'assets/js/carousel.js', 'assets/js/*.coffee']),
    css_pipeline(files: 'assets/css/*.less', out: '/css/build.css'),
    dynamic_content(),
    roots_yaml(),
  ]

  less:
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
