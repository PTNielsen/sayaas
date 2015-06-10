require 'sinatra'
require 'httparty'

class SaySomethingAPI

  include HTTParty
  base_uri '10.1.10.66:4567'

  message = "Add a voice parameter for a different voice and a text parameter if you'd like for me to say something else."

  def speak voice=nil, text=nil
    voice ||= Alfred
    text ||= message
    SaySomethingAPI.get( "/speak", query: { voice: voice, text: text } )
  end

end