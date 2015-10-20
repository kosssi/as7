js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', '.idea/**']

  debug: true
  open_browser: false

  extensions: [
    js_pipeline(files: ['assets/js/jquery.js', 'assets/js/carousel.js', 'assets/js/main.coffee']),
    css_pipeline(files: 'assets/css/*.less'),
  ]

  less:
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
