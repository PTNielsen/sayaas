require 'sinatra'
require 'JSON' 
require 'ip_address'

class Say SomethingApi

	message = "I can Talk"

	include GTTParty
	base_uri '#'