hash = () ->
  'build' + new Date().getTime()

domain = () ->
  'anneso7.com'

module.exports =
  config:
    categories: [
      'édition',
      'identité',
      'illustration',
      'web design',
      'affiche',
      'faire-part',
    ],
    domain: domain
  ignores_files: [
    'README.md',
    'gulpfile.js',
    'config.coffee',
    '**/layout.*',
    '**/_*',
    '.gitignore',
    'ship.*conf',
    '.idea/**',
    '.publish/**',
    'bower.json',
    'bower_components/**',
  ]
  js_files: [
    'assets/js/jquery.js',
    'assets/js/carousel.js',
    'assets/js/jquery.scrollify.js',
    'assets/js/*.coffee',
  ]
  css_files: 'assets/css/*.less'
  hash: hash
