require 'sinatra/base'
require 'pry'

class MyServer < Sinatra::Base

  enable :logging

  set :bind, "0.0.0.0"

  get "/message1" do
    voice = params[:voice]
    text = params[:text]
    system "say -v '#{voice}' '#{text}'"
  end

  get "/message2" do
    voice = params[:voice]
    text = params[:text]
    system "say -v '#{voice}' '#{text}'"
  end

  get "/message3" do
    voice = params[:voice]
    text = params[:text]
    system "say -v '#{voice}' '#{text}'"
  end

end
  
MyServer.run!