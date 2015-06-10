require 'sinatra'
require 'httparty'
require 'pry'

class SaySomethingAPI

  include HTTParty
  base_uri '10.1.10.66:4567'

  def speak voice=nil, text=nil
    SaySomethingAPI.get( "/speak", query: { voice: voice, text: text } )
  end

end