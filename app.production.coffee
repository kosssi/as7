js_pipeline     = require 'js-pipeline'
css_pipeline    = require 'css-pipeline'
dynamic_content = require 'dynamic-content'
roots_config    = require 'roots-config'
config          = require './config'

module.exports =
  ignores: config.ignores_files

  debug: true
  open_browser: false
  live_reload: false

  extensions: [
    js_pipeline(files: config.js_files, out: 'js/' + config.hash() + '.js', minify: true),
    css_pipeline(files: config.css_files, out: 'css/' + config.hash() + '.css', minify: true),
    dynamic_content(),
    roots_config(config.config),
  ]
