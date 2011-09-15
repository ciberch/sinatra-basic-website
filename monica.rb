require 'rubygems'
require 'sinatra'
require 'json'

enable :sessions

configure do
  
end

before do
  @title = "Monica Wilkinson"
  
end

get '/' do
  haml :index
end


