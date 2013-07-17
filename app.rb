require 'sinatra'
require 'sinatra/json'
require 'multi_json'
require "./parser"

use Rack::Deflater

error 400 do
	'Wrong params'
end


get '/' do

	url = params["url"]

	if ( url.nil?)
		json( :error => "400" )
	else
		p = Parser.new(url)

		json( :response => p.parsed )
	end
end


