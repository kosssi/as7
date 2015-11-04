js_pipeline     = require 'js-pipeline'
css_pipeline    = require 'css-pipeline'
dynamic_content = require 'dynamic-content'
roots_config    = require 'roots-config'
config          = require './config'

module.exports =
  ignores: config.ignores_files

  debug: true
  open_browser: false

  extensions: [
    js_pipeline(files: config.js_files),
    css_pipeline(files: config.css_files),
    dynamic_content(),
    roots_config(config.config),
  ]

  less:
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
