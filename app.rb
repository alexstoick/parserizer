require 'sinatra'
require 'sinatra/json'
require 'multi_json'
require "./parser"

use Rack::Deflater

get '/' do

	url = params["url"]
	p = Parser.new(url)

	json( :response => p.parsed )

end

