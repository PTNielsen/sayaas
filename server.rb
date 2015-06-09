require 'sinatra/base'
require 'json'
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

  get "/message3/:voice/:text" do
    voice = params[:voice]
    text = params[:text]
    system "say -v '#{voice}' '#{text}'"
  end

end
  
MyServer.run!