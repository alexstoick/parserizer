require 'sinatra'
require 'sinatra/json'
require 'multi_json'
require 'json'
require "./parser"

class Parserizer < Sinatra::Base

	use Rack::Deflater

	error 400 do
		'Wrong params'
	end


	get '/' do

		content_type :json
		url = params["url"]

		if ( url.nil?)
			{ :error => "400" }.to_json
		else
			p = Parser.new(url)

			{ :response => p.parsed }.to_json
		end
	end

end
