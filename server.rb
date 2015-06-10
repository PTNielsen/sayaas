require 'sinatra/base'
require 'pry'

class MyServer < Sinatra::Base

  enable :logging

  set :bind, "0.0.0.0"

  message = "Add a voice parameter for a different voice and a text parameter if you'd like for me to say something else."

  get "/speak" do
    voice = params[:voice] || "Alex"
    text = params[:text] || message
    binding.pry
    system "say", "-v", voice, text
  end

end

MyServer.run!