require 'sinatra/base'
require 'pry'

class MyServer < Sinatra::Base

  enable :logging

  set :bind, "0.0.0.0"

  get "/speak" do
    voice = params[:voice]
    text = params[:text]
    binding.pry
    system "say -v '#{voice}' '#{text}'"
  end

end

MyServer.run!