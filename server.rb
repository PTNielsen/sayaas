require 'sinatra/base'
require 'json'
require 'pry'

class MyServer < Sinatra::Base

  enable :logging

  set :bind, "0.0.0.0"

  first_message = "Look, I can talk."

  get '/' do
    system "say '#{first_message}"
  end
  
  second_message = "I can say this too."

  get '/say_this_too' do
    system "say '#{second_message}'"
  end

  third_message = "I am a droid."

  get '/droid_voice' do
    system "say '#{third_message}'"
  end

end
  

MyServer.run!