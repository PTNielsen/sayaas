require 'sinatra'
require 'ip_address'

class SaySomethingAPI

  message = "I can talk."

  include HTTParty
  base_uri '10.1.10.66:4567'

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