require "sinatra/base"
require "sinatra/url_for"

class CiberchApp < Sinatra::Base
  helpers Sinatra::UrlForHelper

  before do
    @chat_url = ENV['CHAT_URL'] || "http://jeff-test.crushpath.us/spots/2756/chat"
    @chat_base_url = ENV['CHAT_BASE_URL'] || "localhost:5001"
    @appid = ENV['facebook_app_id']
    @host = ENV['HOST'] || 'localhost:9292'
  end

  get "/" do

    @me = YAML.load_file("poco.yml")
    @me = Hashie::Mash.new(@me)
    @full_url = url_for("/", :full)
    @description = "Who is #{@me.preferred_username || @me.display_name} ?"
    @image = url_for(@me.photos.first.value, :full)
    @title = @me.display_name

    haml :index
  end

  get "/chat" do
    haml :chat
  end

  get "/microsite" do
    haml :microsite
  end
end

