require "sinatra/base"
require "sinatra/url_for"

class CiberchApp < Sinatra::Base
  helpers Sinatra::UrlForHelper

  get "/" do
    @me = YAML.load_file("poco.yml")
    @me = Hashie::Mash.new(@me)
    @full_url = url_for("/", :full)
    @description = "Who is #{@me.preferred_username || @me.display_name} ?"
    @image = url_for(@me.photos.first.value, :full)
    @title = @me.display_name
    @appid = ENV['facebook_app_id']
    haml :index
  end
end

