require 'sinatra'
require 'sinatra/json'
require 'multi_json'
require 'json'
require "./parser"

class Parserizer < Sinatra::Base

	use Rack::Deflater

	get '/' do

		content_type :json
		url = params["url"]

		if ( url.nil?)
			{ :error => "400" , :url => url }.to_json
		else
			p = Parser.new(url)

			if ( p.parsed.nil? )
				{ :error => "404" , :url => url }.to_json
			else
				{ :response => p.parsed }.to_json
			end
		end
	end

end
