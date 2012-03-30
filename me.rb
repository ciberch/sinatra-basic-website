require "rubygems"
require "sinatra"
require "json"
require "hashie"
require "yaml"
require "sinatra/url_for"

get "/" do
  @me = YAML.load_file("poco.yml")
  @me = Hashie::Mash.new(@me)
  @full_url = url_for("/", :full)
  @description = "Who is #{@me.preferred_username || @me.display_name}"
  @image = url_for(@me.photos.first.value, :full)
  @title = @me.display_name
  @appid = ENV['facebook_app_id']
  haml :index
end


