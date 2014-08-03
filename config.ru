require "rubygems"
require "sinatra"
require "json"
require "hashie"
require "yaml"

Bundler.require

STDOUT.sync = true

require './me.rb'

run Rack::URLMap.new ({
    "/" => CiberchApp.new
})