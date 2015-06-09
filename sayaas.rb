require 'sinatra'
require 'JSON'
require 'ip_address'

class SaySomethingAPI

  message = "I can talk."

  include HTTParty
  base_uri '#{ip_address}http://localhost:4567'

  def message1 voice = "Alfred", text = "#{message}"
    SaySomethingAPI.get( "/message1/#{voice}/#{text}")
  end

  def message2 voice = "Trinoid", text = "#{message}"
    SaySomethingAPI.get( "/message2/#{voice}/#{text}" )
  end

  def message3 voice = "Good News", text = "#{message}"
    SaySomethingAPI.get( "/message3/#{voice}/#{text}" )
  end

end